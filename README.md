# PhysikAbi

Lernskripte für den **Vorabi-Schwerpunkt** im Fach Physik, Niedersachsen, erhöhtes
Anforderungsniveau (Vorabitur 2026, Abitur 2027): Wellen, Quantenphysik und Atomhülle.
**Sieben Kernkapitel mit 58 Seiten** bilden die Website; dazu kommen Übungshefte, Formelblatt,
Experimentesammlung, Lernfahrplan und Glossar als Zusatzmaterial.

Nicht enthalten sind elektrische und magnetische Felder sowie Atomkern und Radioaktivität.
Dafür bleiben die Unterrichtsmaterialien der Schule maßgeblich.

### [→ Skripte online lesen](https://anton037.github.io/PhysikAbi/)

Die Seite hat eine Volltextsuche über die sieben Kernkapitel: Fundstellen werden als Ausschnitt mit
markiertem Suchwort angezeigt. Ein Klick öffnet die **HTML-Lesefassung** an der richtigen Stelle
und markiert das Suchwort im Text. Dazu Inhaltsverzeichnis je Dokument (springt direkt zum
Abschnitt), eine mobile Leseansicht mit einheitlicher Typografie, Abbildungen zum Vergrößern,
„Weiterlesen“, Lernstand („gelesen“), ein durchsuchbares Glossar mit 92 Begriffen, ein
Hell-/Dunkel-Umschalter und alle PDFs als ZIP zum Mitnehmen.

## Inhalt

| Ordner | Was drin ist |
|---|---|
| `Physik_Vorabi_2026/03_Lernskripte/` | 7 Themenskripte: Wellen/Interferenz, Lichtquanten, Elektronenwellen, Doppelspalt, Mach-Zehnder, Atommodelle, Spektren/Franck-Hertz |
| `Physik_Vorabi_2026/04_Zusatzmaterial/` | Zusatzmaterial, nicht Teil der Website: zwei Übungshefte (20 Aufgaben, Diagrammauswertung), Formelblatt, Experimentesammlung, Gesamtübersicht, Abitur-Analyse, Regression und Auswertung, Lernfahrplan, Last-Minute-Lernzettel, Glossar |
| `Physik_Vorabi_2026/01_Schulwebsite/` | Spiegel der Unterrichtsmaterialien von [physik.gym-wst.de](https://www.physik.gym-wst.de) als Grundlage der Quellenarbeit |
| `Physik_Vorabi_2026/02_Abiturrecherche/` | Auswertung von 12 Aufgaben aus dem IQB-Pool 2025/2026 |
| `Physik_Vorabi_2026/06_Qualitaetskontrolle/` | [Prüfbericht Website](Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht_website.md) und [Prüfbericht Skripte](Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md) mit Befunden, Belegen und offenen Punkten |
| `Physik_Vorabi_2026/build/` | Typst-Quellen, Layout-Vorlage, Figuren- und Build-Skripte |

## Umfang und Rechte

Die Website ist die geordnete, quellentreue Fassung der Schulseite
[physik.gym-wst.de](https://www.physik.gym-wst.de). Übernommen werden nur Seiten, die oben eine
KC-Box (`> **Bezug zum Kerncurriculum:**`) tragen. Der übrige Stoff der Schulseite – besonders
elektrische/magnetische Felder und Atomkern/Radioaktivität – ist bewusst nicht Teil dieses
Projekts.

Die Inhalte stammen aus dem Unterricht am Gymnasium Westerstede und dürfen nach Angabe des
Repository-Inhabers für dieses Lernprojekt verwendet werden; die Quellenangabe steht auf jeder
Seite. Einzelheiten: [NUTZUNGSERLAUBNIS.md](NUTZUNGSERLAUBNIS.md). Der Quellcode steht unter
[MIT](LICENSE).

## Prüfstand

Jeder Befund im Prüfbericht trägt eine Fundstelle (Datei und Zeile) und ein Zitat. Geprüft
wurden unter anderem: alle Referenzwerte nachgerechnet (h·c, Rydberg, de Broglie, Bragg,
Doppelspalt, Franck-Hertz), 24 Abbildungen auf Einbindung und Deutung im Text, Formeldarstellung
in den gerenderten PDFs, Zahlen in 20 Übungsaufgaben samt Lösungen. Gefundene Fehler sind
behoben; was nicht geprüft werden konnte — NIBIS-Aufgaben, eine visuelle Bildbetrachtung der Grafiken —,
steht begründet in Abschnitt 14.7 des Prüfberichts; die Pixel- und Geometrieprüfung steht in
Abschnitt 15.

## Selbst bauen

Voraussetzung: Typst 0.15+ und Python 3 mit matplotlib (nur für neue Grafiken), pymupdf, cairosvg, pint und sympy für die Prüfskripte.

```bash
cd Physik_Vorabi_2026
TYPST=/pfad/zu/typst build/build_all.sh   # baut die Kapitel-PDFs; ohne TYPST wird typst im PATH gesucht
python3 build/qa_pdf.py 03_Lernskripte/*.pdf 04_Zusatzmaterial/*.pdf
```

Website (Übersicht, Volltextindex, PDF-Ansicht):

```bash
cd Physik_Vorabi_2026
python3 build/make_pages.py --out _site   # braucht pymupdf 2.0
python3 build/test_pages.py               # prüft Index, Links und Suchlogik (node)
```

Die Quellen der Seite liegen unter `build/web/`: `index.html`, `suche.html`, `glossar.html`,
`style.css`, `theme.js` (Hell/Dunkel), `suche.js` (Index, Bewertung, Ausschnitte, Links in den
Leser), `glossar.js` (Filter), `lesen.css`/`lesen-static.js` (mobile Lesefassung), `index.js`,
`suche-seite.js`. Die Glossarbegriffe stehen einmal in
`build/glossar.json`; daraus entstehen sowohl `glossar.html` als auch das PDF
`Glossar.pdf` (Typst-Quelle `build/src/f10_glossar.typ`).
`make_pages.py` extrahiert den Text aus den PDFs zu `_site/suche.json` (≈103 kB), kopiert die
PDFs und das ZIP und erzeugt die statischen Leseseiten. Die Suche öffnet keine PDF mehr, sondern
die HTML-Lesefassung mit markiertem Suchwort; die PDFs bleiben als Offline-Archiv im ZIP.

Die Seite unter `anton037.github.io/PhysikAbi` wird bei jedem Push auf `main` automatisch aus
den PDFs neu gebaut (`.github/workflows/pages.yml`, `build/make_pages.py`).
