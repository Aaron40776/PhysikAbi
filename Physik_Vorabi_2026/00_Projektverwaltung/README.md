# Physik-Vorabi 2026 – Lernskripte

Sammlung eigenständiger Lernskripte für das **Vorabitur Physik am 06.11.2026**, Gymnasium
Westerstede (Niedersachsen), erhöhtes Anforderungsniveau.

**Online: <https://aaron40776.github.io/PhysikAbi/>** (wird bei jedem Push automatisch neu gebaut)

Erstellt am 01.11.2026. Grundlagen: Unterrichtsmaterialien der Schule
(https://www.physik.gym-wst.de), Kerncurriculum Physik Niedersachsen 2022, Aufgabenpool der Länder
(IQB) 2025/2026, Hinweise zur schriftlichen Abiturprüfung 2027.

## Was fertig ist

**7 Themen-Skripte** (`03_Lernskripte/`):

| Datei | Thema | Seiten |
|---|---|---|
| `01_Wellen_und_Interferenz.pdf` | Schwingungen, Welle, Interferenz, Doppelspalt, Gitter, Bragg, Polarisation, Michelson, Lichtgeschwindigkeit | 11 |
| `02_Lichtquanten_und_Planck.pdf` | Planck, Photon, Photoeffekt, h-Bestimmung, Compton | 6 |
| `03_Elektronenwellen_und_Beugung.pdf` | de Broglie, Elektronenkanone, Beugungsröhre | 7 |
| `04_Doppelspalt_und_Quantenphysik.pdf` | Einzelquanten, Amplituden, Komplementarität, Unbestimmtheit, Wellenfunktion | 6 |
| `05_MZI_Welcher_Weg_Delayed_Choice_QED.pdf` | Mach-Zehnder, Welcher-Weg, Delayed Choice, Verschränkung, QED | 7 |
| `06_Atommodelle_und_Orbitalmodell.pdf` | Rutherford, Bohr, Potenzialtopf, Orbitale | 7 |
| `07_Spektren_und_Franck_Hertz.pdf` | Spektren, Röntgen, Resonanzabsorption, Franck-Hertz | 6 |

**9 Zusatzdokumente** (`04_Zusatzmaterial/`): Gesamtübersicht (5 S.), Formelblatt (5 S.),
Experimentesammlung (5 S.), Abitur-Analyse (5 S.), Last-Minute-Lernzettel (4 S.),
**Übungsheft mit 20 Aufgaben und Lösungen (13 S.)**, **Regression und Auswertung (7 S.)**,
**Übungsheft Diagrammauswertung (7 S.)**, **Lernfahrplan (4 S.)**.

Jedes Skript enthält: Kenngrößen/Grundlagen als Tabelle, Theorie in Stichpunkten, abgesetzte
Formeln mit echten Bruchstrichen (statt Schrägstrich), Herleitungen als nummerierte Schritte im Kasten,
Experimente kompakt (Aufbau/Durchführung/Beobachtung/Erklärung/Bedeutung), Grafiken mit
Erläuterung, 2 Abituraufgaben mit Lösung, typische Fehler, Wiederholungstabelle und Quellen.

Umfang (01.11.): **7 Skripte 50 Seiten**, gesamt **105 Seiten**, 19.144 Wörter
(vor der Straffung 121 Seiten). Darin enthalten ist das 7-seitige Trainingsheft
zur Diagrammauswertung.

## Verzeichnisse

```
Physik_Vorabi_2026/
├── 00_Projektverwaltung/   README, PROGRESS, QUELLENVERZEICHNIS, RECHERCHEERGEBNISSE,
│                           THEMENSTATUS, REVIEW_PROMPT (Prompt für den nächsten Prüfdurchgang)
├── 01_Schulwebsite/        website_links.csv + vollständiger Mirror der Unterrichtsseiten (Markdown)
├── 02_Abiturrecherche/     abitur_analyse.md, untersuchte_aufgaben.csv, iqb_aufgaben/ (12 PDFs + Text)
├── 03_Lernskripte/         7 Themen-PDFs
├── 04_Zusatzmaterial/      9 Zusatz-PDFs (Übungshefte, Formelblatt, Sammlung, Analysen, Lernfahrplan)
├── 05_Grafiken/            28 eigene SVG-Grafiken (automatisch aus build/fig kopiert)
├── 06_Qualitaetskontrolle/ pruefbericht.md, review.md
└── build/                  Typst-Template, Quelltexte, Figuren-Skripte, Build- und Prüfskripte
                            (reproduzierbar: SOURCE_DATE_EPOCH ist gesetzt)
```

## Neu bauen

Voraussetzung: Typst 0.15+, Python 3 mit matplotlib (nur für neue Grafiken).

```bash
cd Physik_Vorabi_2026/build
python3 make_figures.py     # Grafiken erzeugen (SVG)
./build_all.sh              # alle 16 PDFs kompilieren
python3 qa_pdf.py ../03_Lernskripte/*.pdf ../04_Zusatzmaterial/*.pdf
```

Typst-Binary lag während der Erstellung unter `/tmp/typst-x86_64-unknown-linux-musl/typst`
(Pfad in `build_all.sh` ggf. anpassen).

## Arbeitsweise / Belege

- Schulwebsite wurde vollständig gespiegelt (112 Unterrichtsseiten, 2,1 MB) – Quellen in
  `01_Schulwebsite/website_links.csv`.
- Abituraufgaben: 12 IQB-Poolaufgaben im Volltext ausgewertet; das Nds. ZA-Archiv war technisch
  blockiert (dokumentiert in `02_Abiturrecherche/abitur_analyse.md`).
- Alle Grafiken sind eigene Darstellungen; alle Berechnungen wurden nachgerechnet.
- Es wurden keine fremden Aufgaben wörtlich übernommen.
