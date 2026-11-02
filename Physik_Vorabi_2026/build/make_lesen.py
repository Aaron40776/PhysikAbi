#!/usr/bin/env python3
"""Erzeugt aus den Typst-Quellen echte, mobile Leseseiten.

Typst 0.15 kann HTML mit MathML und eingebetteten SVGs exportieren. Die
Ausgabe wird hier mit einer schlanken Lese-Hülle (Kopfzeile, Fortschritt,
Inhaltsnavigation) umschlossen. Die Dateien liegen unter build/lesen/ und werden
von make_pages.py unverändert in die Seite kopiert.
"""
import html
import os
import pathlib
import re
import shutil
import subprocess
import sys
import tempfile

BUILD = pathlib.Path(__file__).resolve().parent
ROOT = BUILD.parent
OUT = BUILD / "lesen"

DOCS = [
    ("01_wellen", "01_Wellen_und_Interferenz", "skripte", "Wellen und Interferenz",
     "Schwingungen, Wellen, Interferenz, Polarisation, Michelson"),
    ("02_lichtquanten", "02_Lichtquanten_und_Planck", "skripte", "Lichtquanten und Planck",
     "Quantenhypothese, Photon, Photoeffekt, h-Bestimmung"),
    ("03_elektronenwellen", "03_Elektronenwellen_und_Beugung", "skripte", "Elektronenwellen und Beugung",
     "de-Broglie-Wellenlänge, Beugungsröhre, Graphit, Davisson-Germer"),
    ("04_doppelspalt", "04_Doppelspalt_und_Quantenphysik", "skripte", "Doppelspalt und Quantenphysik",
     "Einzelquanten, Superposition, Welcher-Weg-Information, Unbestimmtheit"),
    ("05_mzi", "05_MZI_Welcher_Weg_Delayed_Choice", "skripte", "Mach-Zehnder und Welcher Weg",
     "Mach-Zehnder, Phasenverschiebung, Weginformation, Komplementarität, Delayed Choice"),
    ("06_atommodelle", "06_Atommodelle_und_Orbitalmodell", "skripte", "Atommodelle und Orbitalmodell",
     "Rutherford, Bohr, Quantenmodell, Orbitale"),
    ("07_spektren", "07_Spektren_und_Franck_Hertz", "skripte", "Spektren und Franck-Hertz",
     "Spektrenarten, Termschema, Röntgen, Franck-Hertz"),
]

KOPF = """<div class="leiste lese-leiste">
  <div class="leiste-inner">
    <a class="marke" href="../">Physik · Vorabi</a>
    <nav class="seiten-nav" aria-label="Hauptseiten">
      <a href="../">Übersicht</a>
      <a href="../suche.html">Suche</a>
      <a href="../glossar.html">Glossar</a>
      <button class="thema" id="thema" type="button" aria-label="Dunkles Design einschalten" aria-pressed="false" title="Dunkles Design">☾</button>
      <span class="lese-schrift" aria-label="Schriftgröße">
        <button type="button" id="kleiner" title="Kleiner">A−</button>
        <button type="button" id="groesser" title="Größer">A+</button>
      </span>
    </nav>
  </div>
</div>
<div class="lese-fortschritt" aria-hidden="true"><span id="fortschritt"></span></div>"""


def typst() -> str:
    kandidaten = [
        os.environ.get("TYPST"),
        shutil.which("typst"),
        "/tmp/typst-x86_64-unknown-linux-musl/typst",
    ]
    for k in kandidaten:
        if k and pathlib.Path(k).is_file():
            return k
    raise SystemExit("typst nicht gefunden (TYPST setzen)")


def ausgabe(source: str, tmp: pathlib.Path):
    roh = tmp / "seite.html"
    env = dict(os.environ, SOURCE_DATE_EPOCH="1700000000")
    lauf = subprocess.run(
        [typst(), "compile", "--root", str(BUILD), "--features", "html",
         "--format", "html", f"src/{source}.typ", str(roh)],
        cwd=BUILD, env=env, capture_output=True, text=True,
    )
    if lauf.returncode != 0:
        raise SystemExit(f"{source}: {lauf.stderr.strip()[:800]}")
    text = roh.read_text(encoding="utf-8")
    kopf = text.split("</head>", 1)[0]
    stile = "\n".join(re.findall(r"<style[^>]*>.*?</style>", kopf, re.S))
    body = re.search(r"<body[^>]*>(.*)</body>", text, re.S)
    if body is None:
        raise SystemExit(f"{source}: kein <body> in der HTML-Ausgabe")
    return stile, body.group(1)


def mit_alt(body: str) -> str:
    """Ergänzt für jedes <img> den Text der zugehörigen <figcaption> als alt-Attribut."""
    def ersetze(m):
        tag = m.group(0)
        if "alt=" in tag:
            return tag
        after = body[m.end():m.end() + 6000]
        cap = re.search(r"<figcaption>(.*?)</figcaption>", after, re.S)
        if not cap:
            return tag[:-1] + ' alt="">'
        text = re.sub(r"<[^>]+>", " ", cap.group(1))
        text = html.unescape(re.sub(r"\s+", " ", text)).strip()
        text = re.sub(r"^Abbildung\s*\d+\s*:\s*", "", text)
        return tag[:-1] + f' alt="{html.escape(text, quote=True)}">'
    return re.sub(r"<img\b[^>]*>", ersetze, body)


def seite(doc_id: str, gruppe: str, titel: str, kc: str,
          stile: str, body: str, vorher, nachher) -> str:
    nav = []
    if vorher:
        nav.append(f'<a href="{vorher[0]}.html">← {html.escape(vorher[1])}</a>')
    else:
        nav.append("<span></span>")
    if nachher:
        nav.append(f'<a href="{nachher[0]}.html">{html.escape(nachher[1])} →</a>')
    else:
        nav.append("<span></span>")
    fuss = (
        '<footer class="lese-fuss">\n'
        f'  <p>Textfassung von <strong>{html.escape(titel)}</strong> – '
        'alle Abbildungen, Tabellen und Formeln sind enthalten.</p>\n'
        '  <div class="lese-nav">' + "".join(nav) + "</div>\n"
        '</footer>'
    )
    return f"""<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>{html.escape(titel)} – Physik Vorabi 2026</title>
<meta name="robots" content="noindex">
<meta name="theme-color" content="#1F3864">
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; script-src 'self'; font-src 'self'; object-src 'none'; base-uri 'self'">
<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 64 64'%3E%3Crect width='64' height='64' rx='14' fill='%231F3864'/%3E%3Ctext x='32' y='45' font-size='38' text-anchor='middle' fill='%23fff' font-family='Georgia,serif'%3E%CF%86%3C/text%3E%3C/svg%3E">
<script src="../assets/theme.js?v=__V__"></script>
{stile}
<link rel="stylesheet" href="../assets/style.css?v=__V__">
<link rel="stylesheet" href="../assets/lesen.css?v=__V__">
</head>
<body data-doc="{html.escape(doc_id)}">
<a class="skip" href="#lesetext">Zum Text springen</a>
{KOPF}
<main id="inhalt" class="leser">
  <p class="lese-zurueck"><a href="../">← Zur Übersicht</a></p>
  <p class="kerncurriculum"><strong>Bezug zum Kerncurriculum:</strong> {html.escape(kc)}</p>
  <article class="lese-text typst-html" id="lesetext" tabindex="-1">
{body}
  </article>
  {fuss}
</main>
<script src="../assets/lesen-static.js?v=__V__"></script>
</body>
</html>
"""


def main() -> int:
    OUT.mkdir(parents=True, exist_ok=True)
    for alt in OUT.glob("*.html"):
        alt.unlink()
    with tempfile.TemporaryDirectory(prefix="physik-html-") as tmp:
        tmp = pathlib.Path(tmp)
        for i, (source, doc_id, gruppe, titel, kc) in enumerate(DOCS):
            stile, body = ausgabe(source, tmp)
            body = mit_alt(body)
            vorher = (DOCS[i - 1][1], DOCS[i - 1][3]) if i else None
            nachher = (DOCS[i + 1][1], DOCS[i + 1][3]) if i + 1 < len(DOCS) else None
            (OUT / f"{doc_id}.html").write_text(
                seite(doc_id, gruppe, titel, kc, stile, body, vorher, nachher),
                encoding="utf-8",
            )
    print(f"{len(DOCS)} Leseseiten -> {OUT}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
