#!/usr/bin/env python3
"""Qualitätskontrolle der erzeugten PDFs.

Prüft je Dokument: Seiten, Textmenge, Layout-Überläufe, nicht gerenderte
Formelreste und typografisch kaputte Zahlen. Exit-Code 1 bei Befunden.
"""
import re
import sys

import pymupdf

# Typst-Quelltext darf nie sichtbar im PDF landen.
FORMEL_RESTE = [r"\$", r"\\[a-zA-Z]+", r"\b(sqrt|frac)\b", r"[{}]"]
# Anführungszeichen zwischen Ziffern (z. B. 17„,“5) statt Dezimalkomma.
KAPUTTE_ZAHL = re.compile(r"\d\s?[„“‚‘″']\s?\d")
MARGIN_L, MARGIN_R, MARGIN_T, MARGIN_B = 40, 40, 20, 20


def check(path):
    doc = pymupdf.open(path)
    width, height = doc[0].rect.width, doc[0].rect.height
    text = "".join(page.get_text() for page in doc)
    problems = []

    for number, page in enumerate(doc, 1):
        for block in page.get_text("blocks"):
            x0, _, x1, y1 = block[:4]
            if x1 > width - MARGIN_R + 2 or x0 < MARGIN_L - 30 or y1 > height - MARGIN_B + 8:
                problems.append(f"S.{number}: Block ragt heraus ({x0:.0f}/{x1:.0f}/{y1:.0f})")
        if number > 2 and len(page.get_text().strip()) < 60:
            problems.append(f"S.{number}: fast leer ({len(page.get_text())} Zeichen)")

    for pattern in FORMEL_RESTE:
        hits = re.findall(pattern, text)
        if hits:
            problems.append(f"Formelrest {pattern!r}: {len(hits)}x, z. B. {hits[:3]}")

    kaputt = KAPUTTE_ZAHL.findall(text)
    if kaputt:
        problems.append(f"kaputte Zahl/Anführungszeichen: {kaputt[:3]}")

    words = len(re.findall(r"\b[\wÄÖÜäöüß-]{2,}\b", text))
    drawings = sum(len(page.get_drawings()) for page in doc)
    print(f"{path}|{len(doc)}|{words}|{len(text)}|{drawings}|{len(problems)}")
    for problem in problems[:12]:
        print(f"  ! {problem}")
    doc.close()
    return problems


if __name__ == "__main__":
    print("datei|seiten|woerter|zeichen|vektorobjekte|befunde")
    findings = sum(len(check(p)) for p in sys.argv[1:])
    sys.exit(1 if findings else 0)
