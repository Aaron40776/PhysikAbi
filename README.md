# PhysikAbi

Lernskripte für das Abitur im Fach Physik, Niedersachsen, erhöhtes Anforderungsniveau
(Vorabitur 2026, Abitur 2027). **16 PDFs, 105 Seiten**: sieben Themenskripte, zwei Übungshefte (20 Aufgaben,
Diagrammauswertung), Formelblatt, Experimentesammlung, Abitur-Analyse, Gesamtübersicht,
Regression, Lernfahrplan und Lernzettel.

### [→ Skripte online lesen](https://aaron40776.github.io/PhysikAbi/)

Die Seite hat eine Volltextsuche über alle 105 Seiten: Fundstellen werden als Ausschnitt mit
markiertem Suchwort angezeigt. Ein Klick öffnet die **echte PDF** im eingebauten PDF.js-Viewer
an der richtigen Seite und markiert das Suchwort auch dort. Dazu Inhaltsverzeichnis je Dokument
(springt direkt in die PDF-Seite), Lernstand („gelesen“) und alle PDFs als ZIP zum Mitnehmen.

## Inhalt

| Ordner | Was drin ist |
|---|---|
| `Physik_Vorabi_2026/03_Lernskripte/` | 7 Themenskripte: Wellen/Interferenz, Lichtquanten, Elektronenwellen, Doppelspalt, Mach-Zehnder, Atommodelle, Spektren/Franck-Hertz |
| `Physik_Vorabi_2026/04_Zusatzmaterial/` | Zwei Übungshefte (20 Aufgaben, Diagrammauswertung), Formelblatt, Experimentesammlung, Gesamtübersicht, Abitur-Analyse, Regression und Auswertung, Lernfahrplan, Last-Minute-Lernzettel |
| `Physik_Vorabi_2026/01_Schulwebsite/` | Spiegel der Unterrichtsmaterialien von [physik.gym-wst.de](https://www.physik.gym-wst.de) als Grundlage der Quellenarbeit |
| `Physik_Vorabi_2026/02_Abiturrecherche/` | Auswertung von 12 Aufgaben aus dem IQB-Pool 2025/2026 |
| `Physik_Vorabi_2026/06_Qualitaetskontrolle/` | [Prüfbericht](Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md) mit allen Befunden, Belegen und offenen Punkten |
| `Physik_Vorabi_2026/build/` | Typst-Quellen, Layout-Vorlage, Figuren- und Build-Skripte |

## Prüfstand

Jeder Befund im Prüfbericht trägt eine Fundstelle (Datei und Zeile) und ein Zitat. Geprüft
wurden unter anderem: alle Referenzwerte nachgerechnet (h·c, Rydberg, de Broglie, Bragg,
Doppelspalt, Franck-Hertz), 28 Abbildungen auf Einbindung und Deutung im Text, Formeldarstellung
in den gerenderten PDFs, Zahlen in 20 Übungsaufgaben samt Lösungen. Gefundene Fehler sind
behoben; was nicht geprüft werden konnte — NIBIS-Aufgaben, optische Kontrolle der Grafiken —,
steht begründet in Abschnitt 14.7 des Prüfberichts.

## Selbst bauen

Voraussetzung: Typst 0.15+ und Python 3 mit matplotlib (nur für neue Grafiken).

```bash
cd Physik_Vorabi_2026/build
./build_all.sh      # baut alle 16 PDFs nach 03_Lernskripte/ und 04_Zusatzmaterial/
python3 qa_pdf.py ../03_Lernskripte/*.pdf ../04_Zusatzmaterial/*.pdf
```

Website (Übersicht, Volltextindex, PDF-Ansicht):

```bash
cd Physik_Vorabi_2026
python3 build/make_pages.py --out _site   # braucht pymupdf 2.0
python3 build/test_pages.py               # prüft Index, Links und Suchlogik (node)
```

Die Quellen der Seite liegen unter `build/web/`: `index.html`, `suche.html`, `style.css`,
`suche.js` (Index, Bewertung, Ausschnitte, PDF-Links), `index.js`, `suche-seite.js`.
`make_pages.py` extrahiert den Text aus den PDFs zu `_site/suche.json` (≈190 kB), kopiert die
PDFs, das ZIP und den PDF.js-Viewer aus `build/vendor/pdfjs/` (3.11.174, Apache-2.0). Am Viewer
sind nur Darstellung und Sprache angepasst: `lang="de"`/`locale=de`, eigenes Favicon,
vervollständigte deutsche Sprachdatei (siehe `build/vendor/pdfjs/VERSION.txt`). Der Viewer
braucht zur Laufzeit kein Netz und zeigt die PDF mit Seitensprung und markiertem Suchwort.

Die Seite unter `aaron40776.github.io/PhysikAbi` wird bei jedem Push auf `main` automatisch aus
den PDFs neu gebaut (`.github/workflows/pages.yml`, `build/make_pages.py`).
