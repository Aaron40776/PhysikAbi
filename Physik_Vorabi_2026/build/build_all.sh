#!/bin/bash
T="${TYPST:-$(command -v typst || echo /tmp/typst-x86_64-unknown-linux-musl/typst)}"
set -euo pipefail
export SOURCE_DATE_EPOCH=1700000000   # reproduzierbare PDFs (kein Byte-Churn im Repo)
cp fig/*.svg ../05_Grafiken/   # Grafiken fürs Repo synchronisieren
$T compile --root . src/01_wellen.typ ../03_Lernskripte/01_Wellen_und_Interferenz.pdf
$T compile --root . src/02_lichtquanten.typ ../03_Lernskripte/02_Lichtquanten_und_Planck.pdf
$T compile --root . src/03_elektronenwellen.typ ../03_Lernskripte/03_Elektronenwellen_und_Beugung.pdf
$T compile --root . src/04_doppelspalt.typ ../03_Lernskripte/04_Doppelspalt_und_Quantenphysik.pdf
$T compile --root . src/05_mzi.typ ../03_Lernskripte/05_MZI_Welcher_Weg_Delayed_Choice_QED.pdf
$T compile --root . src/06_atommodelle.typ ../03_Lernskripte/06_Atommodelle_und_Orbitalmodell.pdf
$T compile --root . src/07_spektren.typ ../03_Lernskripte/07_Spektren_und_Franck_Hertz.pdf
$T compile --root . src/f1_formelblatt.typ ../04_Zusatzmaterial/Formelblatt.pdf
$T compile --root . src/f2_experimente.typ ../04_Zusatzmaterial/Experimentesammlung.pdf
$T compile --root . src/f3_uebersicht.typ ../04_Zusatzmaterial/Gesamtuebersicht.pdf
$T compile --root . src/f4_lastminute.typ ../04_Zusatzmaterial/Last_Minute_Lernzettel.pdf
$T compile --root . src/f5_abitur.typ ../04_Zusatzmaterial/Abitur_Analyse.pdf
$T compile --root . src/f6_uebungen.typ ../04_Zusatzmaterial/Uebungsheft_20_Aufgaben.pdf
$T compile --root . src/f7_regression.typ ../04_Zusatzmaterial/Regression_und_Auswertung.pdf
$T compile --root . src/f8_lernplan.typ ../04_Zusatzmaterial/Lernfahrplan.pdf
$T compile --root . src/f9_diagramme.typ ../04_Zusatzmaterial/Uebungsheft_Diagrammauswertung.pdf
$T compile --root . src/f10_glossar.typ ../04_Zusatzmaterial/Glossar.pdf
TYPST="$T" python3 make_lesen.py
echo "alle gebaut"
