#!/usr/bin/env python3
"""Baut die Seite in ein temporäres Verzeichnis und prüft Index, Links und Suchlogik.

Aufruf: python3 build/test_pages.py
"""
import json, pathlib, re, shutil, subprocess, sys, tempfile, zipfile

BUILD = pathlib.Path(__file__).resolve().parent
ROOT = BUILD.parent
DATEIEN = ("index.html", "lesen.html", "suche.html", "suche.json", "physik-vorabi-2026.zip",
           "assets/style.css", "assets/suche.js", "assets/index.js", "assets/lesen.js",
           "assets/suche-seite.js")
SEITEN = 103

pruefungen = []


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
        lesen_html = (ziel / "lesen.html").read_text(encoding="utf-8")
        suche_html = (ziel / "suche.html").read_text(encoding="utf-8")
        reste = re.findall(r"__[A-Z_]+__", index_html + lesen_html + suche_html)
        pruefe("keine Platzhalter im HTML", not reste, reste)

        daten = json.loads((ziel / "suche.json").read_text(encoding="utf-8"))
        docs, seiten = daten["docs"], daten["seiten"]

        pruefe("16 Dokumente", len(docs) == 16, len(docs))
        pruefe("Seitenzahl 103", sum(d["n"] for d in docs) == SEITEN,
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
                           or f'lesen.html?doc={d["id"]}"' not in index_html
                           or not (ziel / d["f"]).is_file()]
        pruefe("Karte, Textansicht-Link und PDF je Dokument", not fehlende_karten, fehlende_karten)

        with zipfile.ZipFile(ziel / "physik-vorabi-2026.zip") as z:
            namen = z.namelist()
        pruefe("ZIP mit allen 16 PDFs", len(namen) == 16 and all(n.endswith(".pdf") for n in namen),
               namen)

        stempel = re.findall(r"assets/[\w-]+\.(?:css|js)\?v=[0-9a-f]{10}", index_html)
        pruefe("Assets mit Versionsstempel", len(stempel) >= 3, stempel)
        pruefe("Suchindex wird geladen",
               "suche.json" in (ziel / "assets" / "suche.js").read_text(encoding="utf-8"))

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
