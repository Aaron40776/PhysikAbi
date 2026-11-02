# Physik-Vorabi 2026 – Kernkapitel

Sieben Kernkapitel für das **Vorabitur Physik am 06.11.2026**, Gymnasium Westerstede
(Niedersachsen), erhöhtes Anforderungsniveau. Veröffentlicht werden nur Inhalte mit
*Bezug zum Kerncurriculum*.

**Online: <https://aaron40776.github.io/PhysikAbi/>** (wird bei jedem Push automatisch neu gebaut)

Die Website hat **einen** Leser: Die Karten öffnen direkt die mobile Textfassung mit MathML,
eingebetteten Abbildungen und Tabellen. Jede Leseseite trägt oben den *Bezug zum
Kerncurriculum*. Es gibt keinen PDF-Editor und keinen zweiten „Im PDF / als Text“-Weg; die
PDFs bleiben nur als Offline-Archiv erreichbar.

Erstellt am 01.11.2026. Grundlagen: Unterrichtsmaterialien der Schule
(https://www.physik.gym-wst.de), Kerncurriculum Physik Niedersachsen 2022, Aufgabenpool der Länder
(IQB) 2025/2026, Hinweise zur schriftlichen Abiturprüfung 2027.

## Was fertig ist

**7 Themen-Skripte** (`03_Lernskripte/`):

| Datei | Thema | Seiten |
|---|---|---|
| `01_Wellen_und_Interferenz.pdf` | Schwingungen, Welle, Interferenz, Doppelspalt, Gitter, Bragg, Polarisation, Michelson, Lichtgeschwindigkeit | 12 |
| `02_Lichtquanten_und_Planck.pdf` | Quantenhypothese, Photon, Photoeffekt, h-Bestimmung | 7 |
| `03_Elektronenwellen_und_Beugung.pdf` | de Broglie, Elektronenkanone, Beugungsröhre | 6 |
| `04_Doppelspalt_und_Quantenphysik.pdf` | Einzelquanten, Amplituden, Komplementarität, Unbestimmtheit, Wellenfunktion | 7 |
| `05_MZI_Welcher_Weg_Delayed_Choice.pdf` | Mach-Zehnder, Welcher-Weg, Delayed Choice | 6 |
| `06_Atommodelle_und_Orbitalmodell.pdf` | Rutherford, Bohr, Potenzialtopf, Orbitale | 8 |
| `07_Spektren_und_Franck_Hertz.pdf` | Spektren, Röntgen, Resonanzabsorption, Franck-Hertz | 7 |

**Nicht mehr veröffentlicht:** die früheren 10 Zusatzdokumente (`04_Zusatzmaterial/`).
Die Quelldateien bleiben als Archiv im Repository, sind aber weder auf der Website noch im
Offline-Archiv verlinkt. Das Glossar bleibt als reine Web-Nachschlagehilfe erhalten.

Jedes Skript enthält: Kenngrößen/Grundlagen als Tabelle, Theorie in Stichpunkten, abgesetzte
Formeln mit echten Bruchstrichen (statt Schrägstrich), Herleitungen als nummerierte Schritte im Kasten,
Experimente kompakt (Aufbau/Durchführung/Beobachtung/Erklärung/Bedeutung), Grafiken mit
Erläuterung, 2 Abituraufgaben mit Lösung, typische Fehler, Wiederholungstabelle und Quellen.

Umfang (02.11.): **7 Kernkapitel, 53 Seiten**. Die Zuordnung der Abschnitte zu den
Kerncurriculum-Seiten steht in `KERNCURRICULUM_MAPPING.md`. Die früheren Zusatzhefte sind aus der
Veröffentlichung herausgenommen.

## Verzeichnisse

```
Physik_Vorabi_2026/
├── 00_Projektverwaltung/   README, PROGRESS, QUELLENVERZEICHNIS, RECHERCHEERGEBNISSE,
│                           THEMENSTATUS, REVIEW_PROMPT (Prompt für den nächsten Prüfdurchgang)
├── 01_Schulwebsite/        website_links.csv + vollständiger Mirror der Unterrichtsseiten (Markdown)
├── 02_Abiturrecherche/     abitur_analyse.md, untersuchte_aufgaben.csv, iqb_aufgaben/ (12 PDFs + Text)
├── 03_Lernskripte/         7 Themen-PDFs
├── 04_Zusatzmaterial/      Archiv: frühere Zusatz-PDFs, nicht veröffentlicht
├── 05_Grafiken/            Original-Abbildungen der Schulwebsite (`schule/`) und frühere SVGs
├── 06_Qualitaetskontrolle/ pruefbericht.md, review.md
└── build/                  Typst-Template, Quelltexte, Figuren-Skripte, Build- und Prüfskripte
                            (reproduzierbar: SOURCE_DATE_EPOCH ist gesetzt)
```

## Neu bauen

Voraussetzung: Typst 0.15+, Python 3 mit matplotlib (nur für neue Grafiken), pymupdf, cairosvg, pint und sympy für die Prüfskripte.

```bash
cd Physik_Vorabi_2026/build
python3 make_figures.py     # Grafiken erzeugen (SVG)
./build_all.sh              # 7 Kernkapitel + 7 mobile HTML-Leseseiten (build/lesen/)
python3 qa_pdf.py ../03_Lernskripte/*.pdf
```

Typst-Binary wird über `TYPST` oder `PATH` gefunden; `build_all.sh` sucht sonst unter
`/tmp/typst-new/typst`.

## Arbeitsweise / Belege

- Schulwebsite wurde vollständig gespiegelt (112 Unterrichtsseiten, 2,1 MB) – Quellen in
  `01_Schulwebsite/website_links.csv`.
- Abituraufgaben: 12 IQB-Poolaufgaben im Volltext ausgewertet; das Nds. ZA-Archiv war technisch
  blockiert (dokumentiert in `02_Abiturrecherche/abitur_analyse.md`).
- Alle Grafiken sind eigene Darstellungen; alle Berechnungen wurden nachgerechnet.
- Es wurden keine fremden Aufgaben wörtlich übernommen.
