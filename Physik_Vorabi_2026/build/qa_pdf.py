#!/usr/bin/env python3
"""Qualitätskontrolle erzeugter PDFs: Seiten, Text, Überläufe, Bilder."""
import sys, pymupdf

def check(path):
    doc = pymupdf.open(path)
    problems = []
    W, H = doc[0].rect.width, doc[0].rect.height
    ml, mr, mt, mb = 40, 40, 20, 20
    nimg = 0
    chars = 0
    for i, page in enumerate(doc):
        chars += len(page.get_text())
        nimg += len(page.get_images())
        for b in page.get_text("blocks"):
            x0, y0, x1, y1 = b[:4]
            if x1 > W - mr + 2 or x0 < ml - 30 or y1 > H - mb + 8:
                problems.append(f"  S.{i+1}: Block ragt heraus x0={x0:.0f} x1={x1:.0f} y1={y1:.0f} | {b[4][:60]!r}")
    print(f"{path}: {len(doc)} Seiten, {chars} Zeichen, {nimg} Bilder")
    if problems:
        print("  MÖGLICHE ÜBERLÄUFE:")
        for p in problems[:12]:
            print(p)
    # Seiten mit sehr wenig Text (mögliche leere Seiten)
    for i, page in enumerate(doc):
        if i > 1 and len(page.get_text().strip()) < 60:
            print(f"  Hinweis: Seite {i+1} fast leer ({len(page.get_text())} Zeichen)")
    return doc

if __name__ == "__main__":
    for p in sys.argv[1:]:
        check(p)
