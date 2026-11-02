#!/usr/bin/env python3
"""Echte Browser-Prüfung der gebauten Website mit Playwright/Chromium.

Aufruf: python3 build/test_browser.py
Optional: PHYSIK_CHROMIUM=/pfad/zu/chromium python3 build/test_browser.py

Baut die Website in ein temporäres Verzeichnis, serviert sie lokal und bedient
Startseite, Suche, Glossar und Leser wie ein Nutzer. Geprüft werden echte
Klicks, Tastatur, Scrollen, Dialoge, Filter, URL-Zustände und Mobil-Layout.
"""
import functools
import io
import json
import os
import shutil
import subprocess
import sys
import tempfile
import threading
import traceback
import urllib.parse
import zipfile
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

try:
    from playwright.sync_api import sync_playwright
except ImportError:
    print("Playwright fehlt. Installation:")
    print("  python3 -m pip install playwright")
    print("  python3 -m playwright install chromium")
    raise SystemExit(2)

BUILD = Path(__file__).resolve().parent


class Handler(SimpleHTTPRequestHandler):
    def log_message(self, *_args):
        pass


class Pruefer:
    def __init__(self):
        self.bestanden = 0
        self.fehler = []

    def lauf(self, name, fn):
        try:
            fn()
            self.bestanden += 1
            print("  ok   " + name)
        except Exception as exc:
            self.fehler.append((name, traceback.format_exc()))
            print("  FAIL " + name + ": " + str(exc))

    def bericht(self):
        print("\n%d von %d Browser-Prüfungen bestanden" %
              (self.bestanden, self.bestanden + len(self.fehler)))
        if self.fehler:
            for name, fehler in self.fehler:
                print("  FAIL " + name + ": " + fehler)
            return 1
        return 0


class SeitenTest:
    def __init__(self, page, base, site):
        self.p = page
        self.base = base
        self.site = site
        self.zaehler = 0

    def url(self, pfad):
        return urllib.parse.urljoin(self.base, pfad)

    def goto(self, pfad, wait="load"):
        antwort = self.p.goto(self.url(pfad), wait_until=wait)
        assert antwort is not None and antwort.ok, "HTTP-Fehler für " + pfad
        return antwort

    def js(self, ausdruck, arg=None):
        return self.p.evaluate(ausdruck, arg) if arg is not None else self.p.evaluate(ausdruck)

    def startseite(self):
        self.goto("")
        self.p.wait_for_selector("article.karte")
        assert self.p.locator("article.karte").count() == 7, "7 Karten erwartet"
        assert "Physik" in self.p.title(), "falscher Seitentitel"

        self.p.evaluate("localStorage.clear()")
        self.p.reload(wait_until="load")
        self.p.wait_for_selector("#thema")
        self.p.click("#thema")
        assert self.js("document.documentElement.dataset.theme") == "dark"
        assert self.js("localStorage.getItem('physik.theme')") == "dark"
        self.p.reload(wait_until="load")
        assert self.js("document.documentElement.dataset.theme") == "dark", "Theme bleibt nicht erhalten"

        self.p.fill("#q", "Photoeffekt")
        self.p.wait_for_selector("#panel .ztreffer", timeout=5000)
        assert self.p.locator("#panel .ztreffer").count() > 0, "Suchpanel ohne Treffer"
        assert "Treffer" in self.p.locator("#treffer").inner_text(), "Trefferzahl fehlt"
        ziel = self.p.locator("#panel .ztreffer").first.get_attribute("data-ziel")
        assert ziel and ("lesen/" in ziel or "glossar.html" in ziel), ziel
        self.p.locator("#panel .ztreffer").first.click()
        self.p.wait_for_load_state("load")
        assert "lesen/" in self.p.url or "glossar.html" in self.p.url, self.p.url

        self.goto("")
        karte = self.p.locator('article.karte[data-doc="01_Wellen_und_Interferenz"]')
        karte.locator(".gelesen").click()
        assert karte.locator(".gelesen").get_attribute("aria-pressed") == "true"
        assert "1 von 7" in self.p.locator("#fortschritt-text").inner_text()
        self.p.once("dialog", lambda dialog: dialog.accept())
        self.p.click("#fortschritt-reset")
        assert "0 von 7" in self.p.locator("#fortschritt-text").inner_text()

    def suche(self):
        self.goto("suche.html?q=Bragg")
        self.p.wait_for_selector(".ergebnis")
        anzahl = self.p.locator(".ergebnis").count()
        assert anzahl > 0, "keine Suchtreffer"
        assert "Treffer" in self.p.locator("#kopfzeile").inner_text()
        erster = self.p.locator(".ergebnis").first
        href = self.p.locator(".ergebnis").first.get_attribute("href")
        assert "lesen/" in href and "q=Bragg" in href and "#loc-" in href, href

        self.p.locator(".ergebnis").first.click()
        self.p.wait_for_selector("#lesetext")
        assert "#loc-" in self.p.url and "q=Bragg" in self.p.url, self.p.url
        assert self.p.locator("mark.suchtreffer").count() > 0, "Suchwort nicht markiert"

        self.goto("suche.html?q=Bragg")
        self.p.wait_for_selector(".ergebnis")
        vorher = self.p.locator(".ergebnis").count()

        self.p.fill("#q", "Photoeffekt")
        self.p.wait_for_function("() => location.search.includes('q=Photoeffekt')")
        self.p.wait_for_selector(".ergebnis")
        assert self.p.locator(".ergebnis").count() > 0, "Photoeffekt ohne Treffer"

        self.goto("suche.html?q=xyzzyplugh")
        self.p.wait_for_selector(".leer")
        assert "Kein Treffer" in self.p.locator(".leer").inner_text()

    def glossar(self):
        self.goto("glossar.html")
        assert self.p.locator(".glossar-eintrag").count() == 92
        assert self.p.locator(".glossar-az a").count() >= 20
        assert self.js("new Set(Array.from(document.querySelectorAll('.glossar-eintrag dt')).map(e=>e.id)).size") == 92
        assert self.p.locator("a.glossar-suche").count() == 92

        self.p.fill("#glossar-filter", "Franck")
        self.p.wait_for_function("() => document.getElementById('glossar-zaehler').textContent.includes('1 von 92')")
        assert self.p.locator(".glossar-eintrag:not([hidden])").count() == 1
        assert "q=Franck" in self.p.url
        self.p.fill("#glossar-filter", "")
        self.p.wait_for_function("() => document.getElementById('glossar-zaehler').textContent.includes('92 Begriffe')")

        self.p.fill("#glossar-filter", "Amplitude")
        self.p.wait_for_function("() => document.getElementById('glossar-zaehler').textContent.includes('7 von 92')")
        self.p.click('.glossar-az a[href="#glossar-Z"]')
        self.p.wait_for_timeout(200)
        assert self.p.locator("#glossar-filter").input_value() == "", "A-Z setzt Filter nicht zurück"
        assert self.p.evaluate("location.hash") == "#glossar-Z"
        assert not self.js("document.getElementById('glossar-Z').hidden")

        self.goto("glossar.html?q=Intensit%C3%A4t#glossar-intensitaet")
        self.p.wait_for_selector(".glossar-eintrag.glossar-treffer")
        assert self.p.locator(".glossar-eintrag.glossar-treffer dt").inner_text() == "Intensität"
        assert self.p.locator("#glossar-zaehler").inner_text().startswith("6 von 92")
        assert self.p.locator(".glossar-eintrag:not([hidden])").count() == 6
        assert self.js("""() => { const e=document.querySelector('.glossar-eintrag.glossar-treffer');
            if (!e) return false; const r=e.getBoundingClientRect();
            return r.top < innerHeight && r.bottom > 0; }"""), "Treffer nicht sichtbar"
        assert self.p.locator("a.glossar-suche").first.get_attribute("href").startswith("suche.html?q=")

        begriffe = self.js("Array.from(document.querySelectorAll('.glossar-eintrag dt')).map(e=>e.textContent)")
        kaputt = self.js("""(begriffe) => {
            const f=document.getElementById('glossar-filter');
            const schlecht=[];
            for (const b of begriffe) {
                f.value=b;
                f.dispatchEvent(new Event('input', {bubbles:true}));
                f.dispatchEvent(new KeyboardEvent('keydown', {key:'Enter', bubbles:true}));
                const dt=document.querySelector('.glossar-eintrag.glossar-treffer dt');
                const sichtbar=document.querySelectorAll('.glossar-eintrag:not([hidden])').length;
                if (!dt || dt.textContent !== b || !sichtbar) schlecht.push(b);
            }
            return schlecht;
        }""", begriffe)
        assert not kaputt, "nicht exakt gefiltert: " + ", ".join(kaputt[:5])

        self.p.evaluate("localStorage.clear()")
        self.p.reload(wait_until="load")
        self.p.click("#thema")
        assert self.js("document.documentElement.dataset.theme") == "dark"
        self.p.reload(wait_until="load")
        assert self.js("document.documentElement.dataset.theme") == "dark"

    def leser(self):
        self.goto("lesen/01_Wellen_und_Interferenz.html?q=Bragg#loc-8")
        self.p.wait_for_selector("#lesetext")
        assert self.p.locator("#loc-8").count() == 1
        assert self.p.locator("mark.suchtreffer").count() > 0
        assert self.p.locator(".lese-inhalt").count() == 1
        assert self.p.locator('.lese-inhalt a[href="#loc-8"]').count() == 1
        assert self.p.locator(".lese-inhalt a.aktiv").count() >= 1

        assert self.p.locator("#lesetext figure img").count() > 0
        self.p.locator("#lesetext figure img").first.click()
        dialog = self.p.locator("dialog.bild-dialog")
        assert self.js("document.querySelector('dialog.bild-dialog')?.open") is True
        assert dialog.locator("img").get_attribute("src")
        self.p.click(".bild-schliessen")
        assert not self.js("document.querySelector('dialog.bild-dialog')?.open")

        self.p.evaluate("window.scrollTo(0, document.body.scrollHeight)")
        self.p.wait_for_function("() => document.querySelector('.lese-oben')?.classList.contains('sichtbar')")
        self.p.click(".lese-oben")
        self.p.wait_for_function("() => window.scrollY < 20")

        vorher = self.js("localStorage.getItem('physik.schrift')")
        self.p.click("#groesser")
        nachher = self.js("localStorage.getItem('physik.schrift')")
        assert nachher != vorher, (vorher, nachher)

        self.p.evaluate("localStorage.clear()")
        self.p.reload(wait_until="load")
        self.p.click("#thema")
        assert self.js("document.documentElement.dataset.theme") == "dark"
        self.p.reload(wait_until="load")
        assert self.js("document.documentElement.dataset.theme") == "dark"

    def alle_leseseiten(self):
        self.goto("")
        self.p.evaluate("localStorage.clear()")
        docs = [d for d in self.site["docs"] if d["id"] != "Glossar"]
        assert len(docs) == 7, len(docs)
        for doc in docs:
            self.goto("lesen/" + doc["id"] + ".html")
            self.p.wait_for_selector("#lesetext")
            assert self.p.locator("article.lese-text").count() == 1, doc["id"]
            ueberlauf = self.js("document.documentElement.scrollWidth > window.innerWidth + 1")
            assert not ueberlauf, doc["id"] + " hat Überlauf"
            assert self.p.locator("#thema").is_visible(), doc["id"] + ": Theme fehlt"
        self.p.set_viewport_size({"width": 390, "height": 844})
        for doc in docs:
            self.goto("lesen/" + doc["id"] + ".html")
            self.p.wait_for_selector("#lesetext")
            ueberlauf = self.js("document.documentElement.scrollWidth > window.innerWidth + 1")
            assert not ueberlauf, doc["id"] + " hat mobil Überlauf"
            assert self.p.locator("#thema").is_visible(), doc["id"] + ": Theme fehlt mobil"
        self.p.set_viewport_size({"width": 1280, "height": 900})

    def mobil(self):
        self.p.set_viewport_size({"width": 390, "height": 844})
        for pfad in ("", "suche.html?q=Bragg", "glossar.html?q=Intensit%C3%A4t#glossar-intensitaet",
                     "lesen/05_MZI_Welcher_Weg_Delayed_Choice.html"):
            self.goto(pfad)
            self.p.wait_for_timeout(80)
            assert not self.js("document.documentElement.scrollWidth > window.innerWidth + 1"), pfad
            assert self.js("window.innerWidth") == 390, pfad
            if "glossar.html" in pfad:
                self.p.wait_for_selector(".glossar-eintrag.glossar-treffer")
                assert self.p.locator(".glossar-eintrag.glossar-treffer").is_visible()
        self.p.set_viewport_size({"width": 1280, "height": 900})

    def archiv(self):
        antwort = self.p.request.get(self.url("physik-vorabi-2026.zip"))
        assert antwort.ok, "ZIP nicht erreichbar: %s" % antwort.status
        with zipfile.ZipFile(io.BytesIO(antwort.body())) as z:
            namen = z.namelist()
        assert len(namen) == 7 and all(n.endswith(".pdf") for n in namen), namen


def browser_starten(p):
    optionen = {
        "headless": True,
        "args": ["--no-sandbox", "--disable-dev-shm-usage"],
    }
    exe = os.environ.get("PHYSIK_CHROMIUM")
    if not exe and not os.environ.get("CI"):
        for kandidat in ("/usr/bin/chromium", "/usr/bin/chromium-browser", "/usr/bin/google-chrome"):
            if os.path.exists(kandidat):
                exe = kandidat
                break
    if exe:
        optionen["executable_path"] = exe
    return p.chromium.launch(**optionen)


def main():
    tmp = tempfile.TemporaryDirectory(prefix="physik-browser-")
    site = Path(tmp.name)
    server = None
    browser = None
    try:
        bau = subprocess.run(
            [sys.executable, str(BUILD / "make_pages.py"), "--out", str(site)],
            cwd=str(BUILD), capture_output=True, text=True)
        if bau.returncode:
            print(bau.stdout[-1000:])
            print(bau.stderr[-1000:])
            print("Website-Bau fehlgeschlagen")
            return 1
        daten = json.loads((site / "suche.json").read_text(encoding="utf-8"))

        handler = functools.partial(Handler, directory=str(site))
        server = ThreadingHTTPServer(("127.0.0.1", 0), handler)
        thread = threading.Thread(target=server.serve_forever, daemon=True)
        thread.start()
        base = "http://127.0.0.1:%d/" % server.server_address[1]

        with sync_playwright() as p:
            browser = browser_starten(p)
            context = browser.new_context(
                viewport={"width": 1280, "height": 900},
                locale="de-DE",
                reduced_motion="reduce",
            )
            page = context.new_page()
            pruefer = Pruefer()
            test = SeitenTest(page, base, daten)
            for name, fn in (
                ("Startseite: Karten, Suche, Lernstand, Theme", test.startseite),
                ("Suche: Treffer, URL, Leerzustand", test.suche),
                ("Glossar: Filter, A-Z, Deeplink, alle 92 Begriffe, Theme", test.glossar),
                ("Leser: TOC, Markierung, Dialog, Nach-oben, Schriftgröße, Theme", test.leser),
                ("Alle 7 Leseseiten laden ohne horizontalen Überlauf", test.alle_leseseiten),
                ("Mobile 390 px: Start, Suche, Glossar, Leser ohne Überlauf", test.mobil),
                ("Offline-Archiv: ZIP mit 7 PDFs", test.archiv),
            ):
                pruefer.lauf(name, fn)
            context.close()
            browser.close()
            browser = None
            return pruefer.bericht()
    finally:
        if browser:
            browser.close()
        if server:
            server.shutdown()
            server.server_close()
        tmp.cleanup()


if __name__ == "__main__":
    sys.exit(main())
