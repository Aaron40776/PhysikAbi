#!/usr/bin/env python3
"""Erzeugt die GitHub-Pages-Übersicht (index.html) und kopiert die PDFs nach _site."""
import argparse, html, pathlib, shutil
import pymupdf

ROOT = pathlib.Path(__file__).resolve().parent.parent
SKRIPTE = ROOT / "03_Lernskripte"
ZUSATZ = ROOT / "04_Zusatzmaterial"

BESCHREIBUNG = {
    "01_Wellen_und_Interferenz": ("Wellen und Interferenz", "Schwingung, Zeiger, Doppelspalt, Gitter, Bragg, Polarisation, Michelson"),
    "02_Lichtquanten_und_Planck": ("Lichtquanten und Planck", "Photoeffekt, Photon, Compton, h-Bestimmung"),
    "03_Elektronenwellen_und_Beugung": ("Elektronenwellen und Beugung", "de Broglie, Beugungsröhre, Graphit, Davisson-Germer"),
    "04_Doppelspalt_und_Quantenphysik": ("Doppelspalt und Quantenphysik", "Einzelquanten, Komplementarität, Unbestimmtheit, Wellenfunktion"),
    "05_MZI_Welcher_Weg_Delayed_Choice_QED": ("MZI, Welcher Weg, Delayed Choice", "Mach-Zehnder, Pfadinformation, QED"),
    "06_Atommodelle_und_Orbitalmodell": ("Atommodelle und Orbitalmodell", "Rutherford, Bohr, Grenzen, Potenzialtopf, Orbitale"),
    "07_Spektren_und_Franck_Hertz": ("Spektren und Franck-Hertz", "Spektrenarten, Termschema, Röntgen, Franck-Hertz"),
    "Abitur_Analyse": ("Abitur-Analyse", "IQB-Pool 2025/2026, Operatoren, Themenverteilung"),
    "Experimentesammlung": ("Experimentesammlung", "Aufbau, Durchführung, Beobachtung, Deutung"),
    "Formelblatt": ("Formelblatt", "alle Formeln mit Gültigkeitsbedingung"),
    "Gesamtuebersicht": ("Gesamtübersicht", "Landkarte der Themen und Querverbindungen"),
    "Last_Minute_Lernzettel": ("Last-Minute-Lernzettel", "der Kern zum Wiederholen"),
    "Lernfahrplan": ("Lernfahrplan", "Vier-Tage-Plan und Kurzweg durch die Skripte"),
    "Regression_und_Auswertung": ("Regression und Auswertung", "Linearisieren, Steigung, Residuen"),
    "Uebungsheft_20_Aufgaben": ("Übungsheft – 20 Aufgaben", "Aufgaben mit Lösungen, 4 Stunden"),
}

def karte(pdf, relativ):
    stamm = pdf.stem
    titel, text = BESCHREIBUNG.get(stamm, (stamm.replace("_", " "), ""))
    seiten = len(pymupdf.open(pdf))
    return f"""      <a class="karte" href="{html.escape(relativ)}">
        <span class="titel">{html.escape(titel)}</span>
        <span class="text">{html.escape(text)}</span>
        <span class="meta">{seiten} Seiten · PDF</span>
      </a>"""

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default="_site")
    args = ap.parse_args()
    out = pathlib.Path(args.out)
    (out / "skripte").mkdir(parents=True, exist_ok=True)
    (out / "zusatz").mkdir(parents=True, exist_ok=True)

    gruppen = []
    for ordner, ziel, titel in ((SKRIPTE, "skripte", "Lernskripte"), (ZUSATZ, "zusatz", "Zusatzmaterial")):
        pdfs = sorted(ordner.glob("*.pdf"))
        for p in pdfs:
            shutil.copy2(p, out / ziel / p.name)
        karten = "\n".join(karte(p, f"{ziel}/{p.name}") for p in pdfs)
        gruppen.append(f"""    <section>
      <h2>{titel}</h2>
      <div class="raster">
{karten}
      </div>
    </section>""")

    gesamt = sum(len(pymupdf.open(p)) for p in list(SKRIPTE.glob("*.pdf")) + list(ZUSATZ.glob("*.pdf")))
    seite = f"""<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Physik Abitur 2026/2027 – Lernskripte</title>
<style>
  :root {{ --bg:#fbfaf7; --fg:#1b1b1b; --grau:#666; --linie:#e2ded6; --akzent:#1F3864; }}
  @media (prefers-color-scheme: dark) {{
    :root {{ --bg:#14161a; --fg:#eae8e3; --grau:#9a9a9a; --linie:#2b2f36; --akzent:#8fb0e0; }}
  }}
  * {{ box-sizing:border-box; }}
  body {{ margin:0; background:var(--bg); color:var(--fg);
         font:16px/1.5 system-ui,-apple-system,"Segoe UI",Roboto,sans-serif; }}
  main {{ max-width:1000px; margin:0 auto; padding:48px 24px 72px; }}
  header {{ border-bottom:1px solid var(--linie); padding-bottom:24px; margin-bottom:40px; }}
  h1 {{ font-size:clamp(1.6rem,4vw,2.2rem); margin:0 0 8px; letter-spacing:-.02em; }}
  .lead {{ color:var(--grau); margin:0; max-width:60ch; }}
  h2 {{ font-size:.8rem; text-transform:uppercase; letter-spacing:.12em; color:var(--grau);
        margin:40px 0 16px; font-weight:600; }}
  .raster {{ display:grid; grid-template-columns:repeat(auto-fill,minmax(280px,1fr)); gap:12px; }}
  .karte {{ display:flex; flex-direction:column; gap:4px; padding:16px 18px; text-decoration:none;
           color:inherit; border:1px solid var(--linie); border-radius:10px; background:transparent;
           transition:border-color .15s, transform .15s; }}
  .karte:hover {{ border-color:var(--akzent); transform:translateY(-1px); }}
  .titel {{ font-weight:600; color:var(--akzent); }}
  .text {{ color:var(--grau); font-size:.9rem; }}
  .meta {{ color:var(--grau); font-size:.8rem; margin-top:6px; }}
  footer {{ margin-top:56px; padding-top:20px; border-top:1px solid var(--linie);
            color:var(--grau); font-size:.85rem; }}
  footer a {{ color:var(--akzent); }}
</style>
</head>
<body>
<main>
  <header>
    <h1>Physik – Abitur 2026/2027</h1>
    <p class="lead">Lernskripte und Zusatzmaterial für die gymnasiale Oberstufe, Niedersachsen.
       {gesamt} Seiten in 15 PDFs. Alle Dokumente sind zum Lesen und Drucken gedacht.</p>
  </header>
{chr(10).join(gruppen)}
  <footer>
    Quellen, Prüfstand und offene Punkte:
    <a href="https://github.com/Aaron40776/PhysikAbi/blob/main/Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md">Prüfbericht</a>
    ·
    <a href="https://github.com/Aaron40776/PhysikAbi">Repository</a>
  </footer>
</main>
</body>
</html>
"""
    (out / "index.html").write_text(seite, encoding="utf-8")
    print(f"{gesamt} Seiten, {len(list(SKRIPTE.glob('*.pdf'))) + len(list(ZUSATZ.glob('*.pdf')))} PDFs -> {out}/index.html")

if __name__ == "__main__":
    main()
