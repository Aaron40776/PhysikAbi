#!/usr/bin/env python3
"""Prüft, ob die HTML-Lesefassungen den Inhalt der PDFs vollständig enthalten.

Verglichen werden nicht nur Wortzahlen, sondern die tatsächlich erzeugten
Strukturen: Bilder, Abbildungsunterschriften, Tabellen und Überschriften.
Zusätzlich wird der PDF-Fließtext gegen den HTML-Text abgeglichen. Kopf- und
Fußzeilen, Deckblatt und gedrucktes Inhaltsverzeichnis werden dabei ignoriert,
weil der Leser sie durch seine eigene Navigation ersetzt.
"""
import html
import importlib.util
import pathlib
import re
import sys
import unicodedata
from collections import Counter

import pymupdf

BUILD = pathlib.Path(__file__).resolve().parent
ROOT = BUILD.parent


def lade_docs():
    spec = importlib.util.spec_from_file_location("make_lesen", BUILD / "make_lesen.py")
    modul = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(modul)
    return modul.DOCS


def norm(s: str) -> str:
    s = unicodedata.normalize("NFKC", s).lower().replace("\xad", "")
    s = re.sub(r"-\s*\n\s*", "", s)
    return re.sub(r"[^a-zäöüß0-9]+", " ", s).strip()


def pdf_woerter(pdf: pathlib.Path):
    doc = pymupdf.open(pdf)
    seiten = [p.get_text("text") for p in doc]
    # Deckblatt und gedrucktes Inhaltsverzeichnis sind im Leser ersetzt.
    seiten = [p for i, p in enumerate(seiten)
              if i > 0 and p.count(" . ") < 100]
    zeilen = [z.strip() for p in seiten for z in p.splitlines() if z.strip()]
    haeufig = Counter(zeilen)
    mindestens = max(2, (len(seiten) + 1) // 2)
    rumpf = []
    for zeile in zeilen:
        if re.fullmatch(r"[\d\s.,–-]+", zeile):
            continue
        if haeufig[zeile] >= mindestens and len(zeile) < 100:
            continue
        rumpf.append(zeile)
    return set(norm(" ".join(rumpf)).split()), doc.page_count


def formel_text(typ: pathlib.Path) -> str:
    """Formelbestandteile ohne Trennzeichen, für PDF-Zusammenschreibungen."""
    text = typ.read_text(encoding="utf-8")
    return re.sub(r"[^a-z0-9]+", "", norm(" ".join(text.split("$")[1::2])))


def pruefe():
    fehler = []
    for source, doc_id, gruppe, _titel, _kc in lade_docs():
        typ = BUILD / "src" / f"{source}.typ"
        seite = BUILD / "lesen" / f"{doc_id}.html"
        pdf = ROOT / "03_Lernskripte" / f"{doc_id}.pdf"
        if not seite.exists():
            fehler.append(f"{doc_id}: Leseseite fehlt")
            continue
        if not pdf.exists():
            fehler.append(f"{doc_id}: PDF fehlt")
            continue
        quelle = typ.read_text(encoding="utf-8")
        ziel = seite.read_text(encoding="utf-8")

        strukturen = [
            ("Bilder", quelle.count("image("), ziel.count("<img")),
            ("Abbildungen", quelle.count("#figure("), ziel.count("<figure")),
            ("Bildunterschriften", quelle.count("caption:"), ziel.count("<figcaption")),
            ("Tabellen", quelle.count("#table("), ziel.count("<table")),
        ]
        for name, soll, ist in strukturen:
            if soll != ist:
                fehler.append(f"{doc_id}: {name} {ist} statt {soll}")

        # Jeder TOC-Eintrag muss auf eine vorhandene Überschrift zeigen.
        ids = set(re.findall(r'<h[1-6][^>]*id="([^"]+)"', ziel))
        for ziel_id in re.findall(r'href="#(loc-\d+)"', ziel):
            if ziel_id not in ids:
                fehler.append(f"{doc_id}: TOC-Ziel #{ziel_id} fehlt")

        pdf_w, _ = pdf_woerter(pdf)
        html_text = html.unescape(re.sub(r"<[^>]+>", " ", re.sub(
            r"<script.*?</script>|<style.*?</style>", "", ziel, flags=re.S)))
        html_w = set(norm(html_text).split())
        formeln = formel_text(typ)
        unerklaert = []
        for wort in pdf_w:
            if len(wort) < 5 or wort.isdigit() or wort in html_w:
                continue
            if wort in formeln:
                continue
            # Typst trennt Komposita am Zeilenende; im HTML stehen sie zusammen.
            if any(h.startswith(wort) or h.endswith(wort) for h in html_w):
                continue
            if wort == "seite":  # laufende PDF-Fußzeile
                continue
            unerklaert.append(wort)
        if unerklaert:
            fehler.append(f"{doc_id}: PDF-Wörter nicht im Leser: {sorted(unerklaert)[:12]}")
    return fehler


def main() -> int:
    fehler = pruefe()
    if fehler:
        print("Vollständigkeit: FEHLER")
        for f in fehler:
            print(" -", f)
        return 1
    print(f"Vollständigkeit: {len(lade_docs())}/{len(lade_docs())} Leseseiten enthalten alle Bilder, Tabellen und Textinhalte.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
