#!/usr/bin/env python3
"""Erzeugt die GitHub-Pages-Seite aus den PDFs.

Ergebnis in _site/:
  index.html        Übersicht der sieben Kernkapitel mit Volltextsuche und Lernstand
  suche.html        alle Suchtreffer einer Anfrage
  suche.json        Volltextindex (Seiten, Blöcke, Inhaltsverzeichnisse)
  lesen/            mobile Lesefassungen der Kernkapitel mit MathML und eingebetteten SVGs
  skripte/         die PDFs als Archiv
  physik-vorabi-2026.zip   alle PDFs zum Mitnehmen
"""
import argparse, hashlib, html, json, pathlib, re, shutil, unicodedata, zipfile
from urllib.parse import quote
import pymupdf

ROOT = pathlib.Path(__file__).resolve().parent.parent
SKRIPTE = ROOT / "03_Lernskripte"
BUILD = pathlib.Path(__file__).resolve().parent
WEB = BUILD / "web"
GLOSSAR = pathlib.Path(__file__).resolve().parent / "glossar.json"

BESCHREIBUNG = {
    "01_Wellen_und_Interferenz": ("Wellen und Interferenz", "Schwingung, Zeiger, Doppelspalt, Gitter, Bragg, Polarisation, Michelson"),
    "02_Lichtquanten_und_Planck": ("Lichtquanten und Planck", "Photoeffekt, Photon, h-Bestimmung"),
    "03_Elektronenwellen_und_Beugung": ("Elektronenwellen und Beugung", "de Broglie, Beugungsröhre, Graphit, Davisson-Germer"),
    "04_Doppelspalt_und_Quantenphysik": ("Doppelspalt und Quantenphysik", "Einzelquanten, Komplementarität, Unbestimmtheit, Wellenfunktion"),
    "05_MZI_Welcher_Weg_Delayed_Choice": ("Mach-Zehnder und Welcher Weg", "Strahlteiler, Phasenverschiebung, Weginformation, Komplementarität, Delayed Choice"),
    "06_Atommodelle_und_Orbitalmodell": ("Atommodelle und Orbitalmodell", "Rutherford, Bohr, Grenzen, Potenzialtopf, Orbitale"),
    "07_Spektren_und_Franck_Hertz": ("Spektren und Franck-Hertz", "Spektrenarten, Termschema, Röntgen, Franck-Hertz"),
}

FUSSZEILE = re.compile(r"^(Gymnasium Westerstede\s*Seite \d+|Seite \d+)$")
KOPFZEILE = re.compile(r"\nPhysik · Vorabi 2026\s*$")
INHALTSPUNKTE = re.compile(r"(?:\.\s){6,}")


def glossar_norm(text):
    t = text.lower().replace("ä", "a").replace("ö", "o").replace("ü", "u").replace("ß", "ss")
    t = re.sub(r"[‐‑‒–—−-]", " ", t)
    return re.sub(r"\s+", " ", t).strip()


def glossar_teile():
    eintraege = json.loads(GLOSSAR.read_text(encoding="utf-8"))
    eintraege.sort(key=lambda e: (e["t"].casefold(), e["t"]))
    gruppen = {}
    for e in eintraege:
        b = e["t"][0].upper()
        b = {"Ä": "A", "Ö": "O", "Ü": "U"}.get(b, b)
        gruppen.setdefault(b, []).append(e)
    nav, inhalt = [], []
    for b, es in gruppen.items():
        nav.append(f'<a href="#glossar-{b}">{b}</a>')
        teile = []
        for e in es:
            roh = e["t"].lower().replace("ä", "ae").replace("ö", "oe").replace("ü", "ue").replace("ß", "ss")
            slug = re.sub(r"[^a-z0-9]+", "-", roh).strip("-") or "begriff"
            aliase = (f'<span class="aliase">auch: {html.escape(e["a"])}</span>'
                      if e.get("a") else "")
            ziel = "suche.html?q=" + quote(e["t"], safe="")
            suche = glossar_norm(e["t"] + " " + e.get("a", "") + " " + e["d"])
            teile.append(
                f'      <div class="glossar-eintrag" data-suche="{html.escape(suche, quote=True)}">\n'
                f'        <dt id="glossar-{slug}">{html.escape(e["t"])}</dt>\n'
                f'        <dd>{html.escape(e["d"])}{aliase}'
                f'<a class="glossar-suche" href="{ziel}">im Volltext suchen</a></dd>\n'
                f'      </div>')
        inhalt.append(
            f'  <section class="glossar-gruppe" id="glossar-{b}">\n'
            f'    <h2>{b}</h2>\n    <dl class="glossar-liste">\n' + "\n".join(teile) +
            "\n    </dl>\n  </section>")
    return "\n".join(nav), "\n".join(inhalt), len(eintraege)


def saubere(text):
    """NFKC macht aus 𝜆 ein λ und aus ℎ ein h – sonst findet die Suche nichts."""
    t = unicodedata.normalize("NFKC", text)
    t = re.sub("\u00ad\\s*\\n\\s*", "", t)   # Trennung am Zeilenende zusammenziehen
    t = t.replace("\u00ad", "").replace("\u2060", "").replace("\u00a0", " ")
    t = re.sub(r"[ \t]+", " ", t)
    t = re.sub(r" ?\n ?", "\n", t)
    t = re.sub(r"\n{3,}", "\n\n", t)
    return t.strip()


def bloecke_seite(seite):
    bloecke = []
    for x0, y0, x1, y1, text, *_ in seite.get_text("blocks"):
        t = saubere(text)
        if t:
            bloecke.append((round(y0, 1), round(x0, 1), t))
    bloecke.sort()
    return [t for _, _, t in bloecke]


def dokument(pdf):
    doc = pymupdf.open(pdf)
    seiten = [bloecke_seite(s) for s in doc]

    # Kopf- und Fußzeilen stehen auf jeder Seite identisch -> aus dem Index nehmen.
    haeufig = {}
    for bl in seiten:
        for t in bl:
            haeufig[t] = haeufig.get(t, 0) + 1
    grenze = max(3, int(0.6 * len(seiten)))
    wiederholt = {t for t, n in haeufig.items() if n >= grenze and len(t) < 200}

    for i, bl in enumerate(seiten):
        seiten[i] = [t for t in bl
                     if t not in wiederholt
                     and not FUSSZEILE.match(t.replace("\n", " "))
                     and not (len(t) < 160 and KOPFZEILE.search(t))]

    # Deckblatt und gedrucktes Inhaltsverzeichnis nicht durchsuchen (nur anzeigen).
    leer = []
    for i, bl in enumerate(seiten):
        text = "\n".join(bl)
        if i == 0 or text.strip() == "Inhalt" or len(INHALTSPUNKTE.findall(text)) >= 6:
            leer.append(i + 1)

    toc = [[stufe, titel.strip(), seite] for stufe, titel, seite in doc.get_toc()]
    stamm = pdf.stem
    titel, kurz = BESCHREIBUNG.get(stamm, (stamm.replace("_", " "), ""))
    return {
        "id": stamm,
        "t": titel,
        "k": kurz,
        "g": "skripte",
        "f": f"skripte/{pdf.name}",
        "n": doc.page_count,
        "toc": toc,
        "leer": leer,
    }, seiten


def text_url(doc, anker=None, q=None):
    if doc["id"] == "Glossar":
        return "glossar.html"
    url = "lesen/" + quote(doc["id"], safe="") + ".html"
    if q:
        url += "?q=" + quote(q, safe="")
    if anker:
        url += "#" + anker
    return url


def toc_url(doc, nummer):
    if doc["id"] == "Glossar":
        return "glossar.html#glossar-" + quote(doc["toc"][nummer - 1][1], safe="")
    return text_url(doc, f"loc-{nummer}")


def karte(doc):
    stamm = doc["id"]
    toc = "".join(
        f'<li><a href="{toc_url(doc, i + 1)}">{html.escape(titel)}</a></li>'
        for i, (_, titel, _) in enumerate(doc["toc"][:8])
    )
    rest = len(doc["toc"]) - 8
    mehr = (f'<li><a class="mehr" href="{text_url(doc)}">… {rest} weitere Abschnitte</a></li>'
            if rest > 0 else "")
    return f"""      <article class="karte" data-doc="{stamm}">
        <a class="titel" href="{text_url(doc)}">{html.escape(doc['t'])}</a>
        <p class="text">{html.escape(doc['k'])}</p>
        <div class="zeile">
          <span class="meta">{doc['n']} Seiten</span>
          <button class="gelesen" type="button" aria-pressed="false" title="Als gelesen markieren">gelesen</button>
        </div>
        <div class="aktionen">
          <a class="lesen" href="{text_url(doc)}">Lesen</a>
          <a class="weiter" href="{text_url(doc)}" hidden>Weiterlesen</a>
          <details class="toc">
            <summary>Inhalt</summary>
            <ol>{toc}{mehr}</ol>
          </details>
        </div>
      </article>"""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default="_site")
    args = ap.parse_args()
    out = pathlib.Path(args.out)

    for unter in ("skripte", "assets"):
        (out / unter).mkdir(parents=True, exist_ok=True)

    docs, seiten, gruppen = [], [], []
    for ordner, ziel, titel in ((SKRIPTE, "skripte", "Kernkapitel"),):
        pdfs = sorted(ordner.glob("*.pdf"))
        karten = []
        for pdf in pdfs:
            shutil.copy2(pdf, out / ziel / pdf.name)
            doc, bl = dokument(pdf)
            docs.append(doc)
            seiten.append(bl)
            karten.append(karte(doc))
        gruppen.append(f"""  <section id="{ziel}" data-gruppe>
    <h2>{titel} <span class="zahl">{len(pdfs)}</span></h2>
    <div class="raster">
{chr(10).join(karten)}
    </div>
  </section>""")

    roh = json.dumps({"docs": docs, "seiten": seiten}, ensure_ascii=False, separators=(",", ":"))
    (out / "suche.json").write_text(roh, encoding="utf-8")
    stempel = hashlib.sha256(roh.encode())
    stempel.update(GLOSSAR.read_bytes())
    for name in ("style.css", "lesen.css", "suche.js", "index.js", "suche-seite.js", "theme.js",
                 "glossar.js", "lesen-static.js"):
        stempel.update((WEB / name).read_bytes())
    version = stempel.hexdigest()[:10]

    zip_pfad = out / "physik-vorabi-2026.zip"
    with zipfile.ZipFile(zip_pfad, "w", zipfile.ZIP_DEFLATED) as z:
        for doc in docs:
            ordner = ROOT / "03_Lernskripte"
            z.write(ordner / pathlib.Path(doc["f"]).name, f"Physik Vorabi 2026/{doc['t']}.pdf")

    glossar_nav, glossar_inhalt, glossar_anzahl = glossar_teile()
    werte = {
        "__GRUPPE_SKRIPTE__": gruppen[0],
        "__GLOSSAR_NAV__": glossar_nav,
        "__GLOSSAR_INHALT__": glossar_inhalt,
        "__ANZAHL_GLOSSAR__": str(glossar_anzahl),
        "__GESAMT__": str(sum(d["n"] for d in docs)),
        "__ANZAHL__": str(len(docs)),
        "__ZIPMB__": f"{zip_pfad.stat().st_size / 1e6:.1f}".replace(".", ","),
        "__V__": version,
    }
    for name in ("style.css", "lesen.css", "suche.js", "index.js", "suche-seite.js", "theme.js",
                 "glossar.js", "lesen-static.js"):
        shutil.copy2(WEB / name, out / "assets" / name)
    altes_lesen = out / "assets" / "lesen.js"
    if altes_lesen.exists():
        altes_lesen.unlink()

    ziel_viewer = out / "pdfjs"
    if ziel_viewer.exists():
        shutil.rmtree(ziel_viewer)

    for name in ("index.html", "suche.html", "glossar.html", "lesen.html"):
        text = (WEB / name).read_text(encoding="utf-8")
        for k, v in werte.items():
            text = text.replace(k, v)
        (out / name).write_text(text, encoding="utf-8")

    lesen_quelle = BUILD / "lesen"
    if not lesen_quelle.is_dir():
        raise SystemExit("Leseseiten fehlen: build/make_lesen.py ausführen")
    lesen_ziel = out / "lesen"
    if lesen_ziel.exists():
        shutil.rmtree(lesen_ziel)
    lesen_ziel.mkdir()
    for html_datei in sorted(lesen_quelle.glob("*.html")):
        text = html_datei.read_text(encoding="utf-8")
        for k, v in werte.items():
            text = text.replace(k, v)
        (lesen_ziel / html_datei.name).write_text(text, encoding="utf-8")

    print(f"{werte['__GESAMT__']} Seiten, {werte['__ANZAHL__']} PDFs, "
          f"Index {len(roh.encode('utf-8')) / 1000:.0f} kB, ZIP {werte['__ZIPMB__']} MB "
          f"-> {out}/index.html")


if __name__ == "__main__":
    main()
