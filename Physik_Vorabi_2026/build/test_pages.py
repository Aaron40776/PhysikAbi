#!/usr/bin/env python3
"""Baut die Seite in ein temporäres Verzeichnis und prüft Index, Links und Suchlogik.

Aufruf: python3 build/test_pages.py
"""
import html, json, pathlib, re, shutil, subprocess, sys, tempfile, urllib.parse, zipfile

BUILD = pathlib.Path(__file__).resolve().parent
ROOT = BUILD.parent
DATEIEN = ("index.html", "suche.html", "glossar.html", "lesen.html", "suche.json",
           "physik-vorabi-2026.zip",
           "assets/style.css", "assets/suche.js", "assets/index.js", "assets/suche-seite.js",
           "assets/theme.js", "assets/glossar.js", "assets/lesen.css",
           "assets/lesen-static.js")
SEITEN = 51

pruefungen = []


def pruefe_links(root):
    fehler = []
    for datei in root.rglob("*.html"):
        quelle = datei.read_text(encoding="utf-8")
        ids = set(re.findall(r'\bid="([^"]+)"', quelle))
        for roh in re.findall(r'<a\b[^>]*\bhref="([^"]*)"', quelle, re.I):
            href = html.unescape(roh)
            ziel = urllib.parse.urlsplit(href)
            if ziel.scheme or href.startswith("//") or href.startswith("mailto:"):
                continue
            pfad = urllib.parse.unquote(ziel.path)
            zieldatei = datei if not pfad else (datei.parent / pfad).resolve()
            if zieldatei.is_dir():
                zieldatei = zieldatei / "index.html"
            if not zieldatei.exists():
                fehler.append(f"{datei.relative_to(root)} -> {href} (Datei fehlt)")
                continue
            if ziel.fragment and zieldatei.suffix == ".html":
                zielids = set(re.findall(r'\bid="([^"]+)"', zieldatei.read_text(encoding="utf-8")))
                if urllib.parse.unquote(ziel.fragment) not in zielids:
                    fehler.append(f"{datei.relative_to(root)} -> {href} (Anker fehlt)")
    return fehler


def pruefe(name, bedingung, zusatz=""):
    if bedingung:
        pruefungen.append((True, name))
    else:
        pruefungen.append((False, f"{name}{': ' + str(zusatz) if zusatz else ''}"))


def main():
    ziel = pathlib.Path(tempfile.mkdtemp(prefix="physik-site-"))
    try:
        bau = subprocess.run([sys.executable, str(BUILD / "make_pages.py"), "--out", str(ziel)],
                             capture_output=True, text=True)
        if bau.returncode != 0:
            print(bau.stdout, bau.stderr)
            print("Build fehlgeschlagen")
            return 1

        for name in DATEIEN:
            pruefe(name, (ziel / name).is_file())

        index_html = (ziel / "index.html").read_text(encoding="utf-8")
        suche_html = (ziel / "suche.html").read_text(encoding="utf-8")
        glossar_html = (ziel / "glossar.html").read_text(encoding="utf-8")
        lesen_html = (ziel / "lesen.html").read_text(encoding="utf-8")
        lese_seiten = {datei.name: datei.read_text(encoding="utf-8")
                       for datei in sorted((ziel / "lesen").glob("*.html"))}
        reste = re.findall(r"__[A-Z_]+__", index_html + suche_html + glossar_html + lesen_html +
                           "".join(lese_seiten.values()))
        pruefe("keine Platzhalter im HTML", not reste, reste)

        daten = json.loads((ziel / "suche.json").read_text(encoding="utf-8"))
        docs, seiten = daten["docs"], daten["seiten"]

        pruefe("7 Kernkapitel", len(docs) == 7, len(docs))
        pruefe("Seitenzahl 51", sum(d["n"] for d in docs) == SEITEN,
               sum(d["n"] for d in docs))
        pruefe("Seitenlisten vollständig", all(len(seiten[i]) == d["n"] for i, d in enumerate(docs)))
        pruefe("Blöcke vorhanden", all(any(s) for s in seiten))
        pruefe("Inhaltsverzeichnis-Seiten gültig", all(
            1 <= e[2] <= d["n"] for d in docs for e in d["toc"]))
        pruefe("ausgeblendete Seiten gültig", all(
            1 <= p <= d["n"] for d in docs for p in d["leer"]))
        pruefe("Index kleiner als 400 kB", (ziel / "suche.json").stat().st_size < 400_000,
               (ziel / "suche.json").stat().st_size)

        fehlende_karten = [d["id"] for d in docs
                           if f'data-doc="{d["id"]}"' not in index_html
                           or (f'href="lesen/{d["id"]}.html"' not in index_html
                               if d["id"] != "Glossar" else 'href="glossar.html"' not in index_html)
                           or not (ziel / d["f"]).is_file()]
        pruefe("Karte, Leselink und PDF-Archiv je Dokument", not fehlende_karten, fehlende_karten)
        pruefe("Inhaltsverzeichnis springt in den Text",
               'href="lesen/01_Wellen_und_Interferenz.html#loc-1"' in index_html)
        pruefe("genau ein Leseweg pro Karte",
               index_html.count('class="lesen"') == len(docs)
               and "Im PDF lesen" not in index_html
               and "Als Text lesen" not in index_html)
        pruefe("kein PDF.js mehr im Build",
               not (ziel / "pdfjs").exists()
               and not (ziel / "assets" / "lesen.js").exists()
               and "pdfjs" not in index_html + suche_html + lesen_html
               and "pdfjs" not in (ziel / "assets" / "suche.js").read_text(encoding="utf-8"))
        pruefe("Textansicht je Dokument verlinkt",
               all((f'href="lesen/{d["id"]}.html"' in index_html if d["id"] != "Glossar"
                    else 'href="glossar.html"' in index_html) for d in docs))
        pruefe("7 statische Leseseiten", len(lese_seiten) == 7, len(lese_seiten))
        pruefe("Leseseiten enthalten Artikel und MathML",
               all('<article class="lese-text' in h and "<math" in h
                   for h in lese_seiten.values()))
        pruefe("Leseseiten sind mobil und ohne Platzhalter",
               all('viewport-fit=cover' in h and 'assets/lesen.css' in h
                   and 'assets/lesen-static.js' in h for h in lese_seiten.values()))
        pruefe("Weiterlesen verbindet Lesen und Startseite",
               index_html.count('class="weiter"') == len(docs)
               and "physik.weiter" in (ziel / "assets" / "lesen-static.js").read_text(encoding="utf-8")
               and "physik.weiter" in (ziel / "assets" / "index.js").read_text(encoding="utf-8"))
        lese_js = (ziel / "assets" / "lesen-static.js").read_text(encoding="utf-8")
        lese_css = (ziel / "assets" / "lesen.css").read_text(encoding="utf-8")
        pruefe("Leser: Abbildungen zoombar",
               "bild-dialog" in lese_js and "bild-dialog" in lese_css
               and "figure img" in lese_js and "showModal" in lese_js)
        pruefe("Leser: Inhaltsverzeichnis markiert den Abschnitt",
               "aktualisiereInhalt" in lese_js and "a.aktiv" in lese_css)
        pruefe("Leser: Nach-oben-Knopf",
               "lese-oben" in lese_js and "lese-oben" in lese_css)
        pruefe("Leser respektiert reduzierte Bewegung",
               "prefers-reduced-motion" in lese_js and "prefers-reduced-motion" in lese_css)

        with zipfile.ZipFile(ziel / "physik-vorabi-2026.zip") as z:
            namen = z.namelist()
        pruefe("ZIP mit allen 7 PDFs", len(namen) == 7 and all(n.endswith(".pdf") for n in namen),
               namen)

        stempel = re.findall(r"assets/[\w-]+\.(?:css|js)\?v=[0-9a-f]{10}", index_html)
        pruefe("Assets mit Versionsstempel", len(stempel) >= 3, stempel)
        pruefe("Suchindex wird geladen",
               "suche.json" in (ziel / "assets" / "suche.js").read_text(encoding="utf-8"))

        pruefe("Safe-Area im Viewport",
               all('viewport-fit=cover' in h
                   for h in (index_html, suche_html, glossar_html, lesen_html))
               and all('viewport-fit=cover' in h for h in lese_seiten.values()))
        pruefe("Alle internen Links und Anker gültig", not pruefe_links(ziel),
               pruefe_links(ziel)[:5])
        pruefe("Glossar verlinkt", 'glossar.html' in index_html + suche_html + glossar_html)
        pruefe("92 Glossarbegriffe", glossar_html.count('class="glossar-eintrag"') == 92,
               glossar_html.count('class="glossar-eintrag"'))
        glossar_links = re.findall(r'class="glossar-suche" href="([^"]+)"', glossar_html)
        glossar_ids = re.findall(r'<dt id="(glossar-[^"]+)">', glossar_html)
        pruefe("Glossar: 92 eindeutige Einträge und Volltextlinks",
               len(glossar_links) == 92 and len(set(glossar_ids)) == 92
               and all(h.startswith("suche.html?q=") for h in glossar_links),
               (len(glossar_links), len(set(glossar_ids))))
        pruefe("Glossar alphabetisch", all(f'id="glossar-{b}"' in glossar_html
               for b in "ABCDEFGHIKLMNOPQRSTUWZ"))
        pruefe("Glossar filterbar", 'data-suche=' in glossar_html and
               "glossar-filter" in glossar_html and "glossar.js" in glossar_html)
        pruefe("Design-Umschalter auf allen Seiten",
               all('id="thema"' in h and "assets/theme.js" in h
                   for h in (index_html, suche_html, glossar_html, lesen_html))
               and all('id="thema"' in h and "assets/theme.js" in h
                       for h in lese_seiten.values()))
        pruefe("Theme vor dem Stylesheet", all(
            h.index("assets/theme.js") < h.index("assets/style.css")
            for h in (index_html, suche_html, glossar_html, lesen_html))
            and all(h.index("assets/theme.js") < h.index("assets/style.css")
                    for h in lese_seiten.values()))

        node = shutil.which("node")
        if node:
            lauf = subprocess.run([node, str(BUILD / "test_suche.js"), str(ziel)],
                                  capture_output=True, text=True)
            print(lauf.stdout.strip())
            pruefe("Suchlogik (Node)", lauf.returncode == 0, lauf.stderr.strip()[-300:])
        else:
            print("  (node fehlt – Suchlogik wird nicht geprüft)")

        fehler = [p for p in pruefungen if not p[0]]
        if node:
            for ok, name in pruefungen:
                if not ok:
                    print("  FAIL " + name)
        else:
            for ok, name in pruefungen:
                print(("  ok   " if ok else "  FAIL ") + name)
        print(f"\n{len(pruefungen) - len(fehler)} von {len(pruefungen)} Prüfungen bestanden")
        return 1 if fehler else 0
    finally:
        shutil.rmtree(ziel, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main())
