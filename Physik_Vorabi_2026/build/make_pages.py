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

TEMPLATE = """<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Physik Abitur 2026/2027 – Lernskripte</title>
<meta name="description" content="Lernskripte und Zusatzmaterial für das Physik-Abitur in Niedersachsen: 15 PDFs, __GESAMT__ Seiten.">
<meta property="og:title" content="Physik – Abitur 2026/2027">
<meta property="og:description" content="15 PDFs, __GESAMT__ Seiten: Themenskripte, Übungsheft, Formelblatt.">
<meta property="og:type" content="website">
<style>
  :root { --bg:#fbfaf7; --fg:#1b1b1b; --grau:#666; --linie:#e2ded6; --akzent:#1F3864; --karte:#fff; }
  @media (prefers-color-scheme: dark) {
    :root { --bg:#14161a; --fg:#eae8e3; --grau:#9a9a9a; --linie:#2b2f36; --akzent:#8fb0e0; --karte:#1a1d22; }
  }
  * { box-sizing:border-box; }
  html { scroll-behavior:smooth; }
  @media (prefers-reduced-motion: reduce) { html { scroll-behavior:auto; } }
  body { margin:0; background:var(--bg); color:var(--fg);
         font:16px/1.5 system-ui,-apple-system,"Segoe UI",Roboto,sans-serif; }
  [hidden] { display:none !important; }
  :focus-visible { outline:2px solid var(--akzent); outline-offset:2px; border-radius:4px; }
  .skip { position:absolute; left:-9999px; }
  .skip:focus { left:8px; top:8px; z-index:20; background:var(--karte); padding:8px 12px; }

  .leiste { position:sticky; top:0; z-index:10; background:color-mix(in srgb, var(--bg) 88%, transparent);
            backdrop-filter:blur(8px); border-bottom:1px solid var(--linie); }
  .leiste-inner { max-width:1000px; margin:0 auto; padding:10px 24px; display:flex; gap:16px;
                  align-items:center; flex-wrap:wrap; }
  .marke { font-weight:600; font-size:.85rem; letter-spacing:.02em; color:var(--akzent);
           white-space:nowrap; }
  .suche { position:relative; flex:1 1 240px; display:flex; align-items:center; }
  .suche input { width:100%; padding:7px 34px 7px 12px; font:inherit; font-size:.9rem; color:inherit;
                 background:var(--karte); border:1px solid var(--linie); border-radius:8px; }
  .suche input::-webkit-search-cancel-button { cursor:pointer; }
  .suche kbd { position:absolute; right:9px; font:inherit; font-size:.75rem; color:var(--grau);
               border:1px solid var(--linie); border-radius:4px; padding:0 5px; pointer-events:none; }
  .suche input:focus + kbd { display:none; }
  .treffer { font-size:.8rem; color:var(--grau); white-space:nowrap; min-width:6ch; }

  main { max-width:1000px; margin:0 auto; padding:40px 24px 96px; }
  header { border-bottom:1px solid var(--linie); padding-bottom:24px; margin-bottom:32px; }
  h1 { font-size:clamp(1.6rem,4vw,2.2rem); margin:0 0 8px; letter-spacing:-.02em; }
  .lead { color:var(--grau); margin:0; max-width:60ch; }
  .sprung { margin-top:16px; display:flex; gap:16px; font-size:.85rem; }
  .sprung a { color:var(--akzent); text-decoration:none; }
  .sprung a:hover { text-decoration:underline; }
  h2 { font-size:.8rem; text-transform:uppercase; letter-spacing:.12em; color:var(--grau);
       margin:40px 0 16px; font-weight:600; scroll-margin-top:72px; }
  h2 .zahl { color:var(--grau); opacity:.7; font-weight:400; }
  .raster { display:grid; grid-template-columns:repeat(auto-fill,minmax(280px,1fr)); gap:12px; }
  .karte { display:flex; flex-direction:column; gap:4px; padding:16px 18px; text-decoration:none;
           color:inherit; border:1px solid var(--linie); border-radius:10px; background:var(--karte);
           transition:border-color .15s, transform .15s; }
  @media (prefers-reduced-motion: reduce) { .karte { transition:none; } }
  .karte:hover { border-color:var(--akzent); transform:translateY(-1px); }
  .titel { font-weight:600; color:var(--akzent); }
  .text { color:var(--grau); font-size:.9rem; }
  .meta { color:var(--grau); font-size:.8rem; margin-top:6px; }
  .pfeil { opacity:.6; }
  .leer { color:var(--grau); text-align:center; padding:48px 0; }

  footer { margin-top:56px; padding-top:20px; border-top:1px solid var(--linie);
           color:var(--grau); font-size:.85rem; }
  footer a { color:var(--akzent); }
  .oben { position:fixed; right:20px; bottom:20px; width:42px; height:42px; border-radius:50%;
          border:1px solid var(--linie); background:var(--karte); color:var(--akzent);
          font-size:1.1rem; cursor:pointer; box-shadow:0 2px 10px rgb(0 0 0 / .12); }
  .oben:hover { border-color:var(--akzent); }
</style>
</head>
<body>
<a class="skip" href="#inhalt">Zum Inhalt springen</a>

<div class="leiste">
  <div class="leiste-inner">
    <span class="marke">Physik · Abitur 2026/2027</span>
    <div class="suche">
      <input id="q" type="search" placeholder="Suchen: Photoeffekt, MZI, Bragg …"
             aria-label="Dokumente durchsuchen" autocomplete="off">
      <kbd>/</kbd>
    </div>
    <span class="treffer" id="treffer" aria-live="polite"></span>
  </div>
</div>

<main id="inhalt">
  <header>
    <h1>Physik – Abitur 2026/2027</h1>
    <p class="lead">Lernskripte und Zusatzmaterial für die gymnasiale Oberstufe, Niedersachsen.
       __GESAMT__ Seiten in 15 PDFs. Alle Dokumente sind zum Lesen und Drucken gedacht.</p>
    <p class="sprung">
      <a href="#skripte">Lernskripte</a>
      <a href="#zusatz">Zusatzmaterial</a>
      <a href="https://github.com/Aaron40776/PhysikAbi/blob/main/Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md">Prüfbericht</a>
    </p>
  </header>
__GRUPPEN__
  <p class="leer" id="leer" hidden>Kein Dokument passt zu „<span id="leerbegriff"></span>“.</p>
  <footer>
    Quellen, Prüfstand und offene Punkte:
    <a href="https://github.com/Aaron40776/PhysikAbi/blob/main/Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md">Prüfbericht</a>
    ·
    <a href="https://github.com/Aaron40776/PhysikAbi">Repository</a>
  </footer>
</main>

<button class="oben" id="oben" aria-label="Nach oben" hidden>↑</button>

<script>
  var q = document.getElementById('q');
  var karten = Array.prototype.slice.call(document.querySelectorAll('.karte'));
  var gruppen = Array.prototype.slice.call(document.querySelectorAll('[data-gruppe]'));
  var treffer = document.getElementById('treffer');
  var leer = document.getElementById('leer');
  var leerbegriff = document.getElementById('leerbegriff');

  function normal(s) {
    return s.toLowerCase().normalize('NFD').replace(/[\\u0300-\\u036f]/g, '');
  }

  function filtern() {
    var w = normal(q.value.trim());
    var n = 0;
    karten.forEach(function (k) {
      var passt = !w || normal(k.getAttribute('data-such')).indexOf(w) !== -1;
      k.hidden = !passt;
      if (passt) n++;
    });
    gruppen.forEach(function (g) {
      var sichtbar = Array.prototype.some.call(g.querySelectorAll('.karte'), function (k) {
        return !k.hidden;
      });
      g.hidden = !sichtbar;
    });
    treffer.textContent = w ? n + ' von ' + karten.length : '';
    leer.hidden = n > 0 || !w;
    leerbegriff.textContent = q.value.trim();
  }

  ['input', 'change', 'search', 'keyup'].forEach(function (ev) {
    q.addEventListener(ev, filtern);
  });
  filtern();

  document.addEventListener('keydown', function (e) {
    if (e.key === '/' && document.activeElement !== q) {
      e.preventDefault();
      q.focus();
      q.select();
    } else if (e.key === 'Escape' && document.activeElement === q) {
      q.value = '';
      filtern();
      q.blur();
    }
  });

  var oben = document.getElementById('oben');
  var still = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  window.addEventListener('scroll', function () {
    oben.hidden = window.scrollY < 400;
  }, { passive: true });
  oben.addEventListener('click', function () {
    window.scrollTo({ top: 0, behavior: still ? 'auto' : 'smooth' });
  });
</script>
</body>
</html>
"""


def karte(pdf, relativ):
    stamm = pdf.stem
    titel, text = BESCHREIBUNG.get(stamm, (stamm.replace("_", " "), ""))
    seiten = len(pymupdf.open(pdf))
    suche = f"{titel} {text} {stamm.replace('_', ' ')} {seiten} seiten".lower()
    return f"""      <a class="karte" href="{html.escape(relativ)}" target="_blank" rel="noopener"
         data-such="{html.escape(suche)}">
        <span class="titel">{html.escape(titel)}</span>
        <span class="text">{html.escape(text)}</span>
        <span class="meta">{seiten} Seiten · PDF <span class="pfeil" aria-hidden="true">↗</span></span>
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
        gruppen.append(f"""  <section id="{ziel}" data-gruppe>
    <h2>{titel} <span class="zahl">{len(pdfs)}</span></h2>
    <div class="raster">
{karten}
    </div>
  </section>""")

    gesamt = sum(len(pymupdf.open(p)) for p in list(SKRIPTE.glob("*.pdf")) + list(ZUSATZ.glob("*.pdf")))
    anzahl = len(list(SKRIPTE.glob("*.pdf"))) + len(list(ZUSATZ.glob("*.pdf")))
    seite = TEMPLATE.replace("__GRUPPEN__", "\n".join(gruppen)).replace("__GESAMT__", str(gesamt))
    (out / "index.html").write_text(seite, encoding="utf-8")
    print(f"{gesamt} Seiten, {anzahl} PDFs -> {out}/index.html")


if __name__ == "__main__":
    main()
