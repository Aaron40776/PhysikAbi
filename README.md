# PhysikAbi

Lernmaterialien für das **Vorabitur Physik am 06.11.2026**, Gymnasium Westerstede
(Niedersachsen, erhöhtes Anforderungsniveau). Grundlage: Kerncurriculum 2022,
Unterrichtsmaterialien der Schule und IQB-Aufgabenpool 2025/2026.

## Schnellstart

| Wenn du … | dann lies |
|---|---|
| wenig Zeit hast | `04_Zusatzmaterial/Last_Minute_Lernzettel.pdf` (4 S.) |
| einen Plan brauchst | `04_Zusatzmaterial/Lernfahrplan.pdf` (4 S.) |
| rechnen üben willst | `04_Zusatzmaterial/Uebungsheft_20_Aufgaben.pdf` (20 Aufgaben mit Lösungen, 13 S.) |
| ein Thema vertiefen willst | `03_Lernskripte/01…07` (je 6–9 S.) |
| nur Formeln brauchst | `04_Zusatzmaterial/Formelblatt.pdf` (5 S.) |

## Aufbau

```
Physik_Vorabi_2026/
├── 00_Projektverwaltung/   README, PROGRESS, THEMENSTATUS, Quellen
├── 01_Schulwebsite/        Spiegel der Unterrichtsseiten (Belegmaterial)
├── 02_Abiturrecherche/     IQB-Aufgaben, Abitur-Analyse (Belegmaterial)
├── 03_Lernskripte/         7 Themen-PDFs
├── 04_Zusatzmaterial/      8 Zusatz-PDFs
├── 05_Grafiken/            22 eigene SVG-Abbildungen
├── 06_Qualitaetskontrolle/ Prüfbericht, Review
└── build/                  Typst-Quellen, Figuren-Skripte, Lint, Build, QA
```

Stand: **16 PDFs, 102 Seiten, 0 Prüfbefunde.** Details in
`Physik_Vorabi_2026/06_Qualitaetskontrolle/pruefbericht.md`.

## Neu bauen

```bash
cd Physik_Vorabi_2026/build
./check_all.sh              # Lint, Physik-Check, Build und PDF-QA (Typst 0.15+ über PATH)
```

Der Build ist reproduzierbar (`SOURCE_DATE_EPOCH` gesetzt); ein unveränderter Stand
erzeugt byte-identische PDFs.

## Hinweise für Agenten

Die Projekt-Skills für die Dokumenterstellung liegen in `.agents/skills/` (u. a.
`academic-tikz`, `sympy`, `uncertainty-and-units`, `matplotlib`, `markitdown`).
Änderungen an Inhalten immer in `build/src/*.typ` vornehmen, nie in den PDFs.
