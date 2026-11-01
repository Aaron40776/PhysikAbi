# PROGRESS

Letzte Aktualisierung: 01.11.2026

## Status: abgeschlossen (Phase 1–6)

| Phase | Inhalt | Status |
|---|---|---|
| 1 | Technische Prüfung, Spiegelung der Schulwebsite, Quellendokumentation | **fertig** |
| 2 | Abitrecherche (IQB-Pool, Hinweise 2027, Zugriffsversuche NIBIS) | **fertig** |
| 3 | Themenstruktur und Zuordnung | **fertig** |
| 4 | 7 Themen-Skripte | **fertig** |
| 5 | 5 Zusatzdokumente | **fertig** |
| 6 | Qualitätskontrolle | **fertig** (siehe `06_Qualitaetskontrolle/pruefbericht.md`) |

## Phase 1 – Erledigt

- Terminal, Python 3.13, Dateisystem: funktionsfähig.
- PDF-Werkzeuge: PyMuPDF, ReportLab, matplotlib nachinstalliert; **Typst 0.15.1** als
  PDF-Renderer beschafft (LaTeX nicht installiert).
- Browser-/HTTP-Zugriff: `curl`, `urllib`, `BeautifulSoup`; die Seite ist eine Docsify-Anwendung,
  deren Inhalte als Markdown unter `https://www.physik.gym-wst.de/docs/<jg>/<thema>/<lektion>/docs.md`
  direkt abrufbar sind.
- **112 Unterrichtsseiten** (Jahrgänge 11, 12, 13, Praktikum) heruntergeladen und lokal gespeichert:
  `01_Schulwebsite/materialien/`, Index in `website_links.csv`.
- Kerncurriculum-Auszüge (gA/eA) der Schule gesichert und ausgewertet.

## Phase 2 – Erledigt

- IQB-Pool Physik 2025/2026: **12 Aufgaben** als PDF + Text gespeichert (`02_Abiturrecherche/iqb_aufgaben/`),
  Operatoren ausgezählt, Themenverteilung bestimmt.
- Hinweise zur schriftlichen Abiturprüfung 2027 (Physik) ausgewertet: 4 Aufgaben / 3 wählen,
  eA-Varianten mit Experiment, Experimentierkästen.
- `za-aufgaben.nibis.de`: Formular-POST wird mit HTTP 302 abgewiesen (Bot-Schutz) – **nicht
  untersuchbar**, dokumentiert. Bildungsportal Niedersachsen: HTTP 403.
- Ergebnis: `02_Abiturrecherche/abitur_analyse.md` + `untersuchte_aufgaben.csv`.

## Phase 3 – Erledigt

Themenzuordnung in `THEMENSTATUS.md`; alle Themen A–H aus der Aufgabenstellung sind einem Skript
zugeordnet.

## Phase 4 – Erledigt (7 Skripte)

Alle in `03_Lernskripte/`; Seitenzahlen und Prüfergebnisse siehe `pruefbericht.md`.

## Phase 5 – Erledigt (5 Dokumente)

`04_Zusatzmaterial/`: Gesamtuebersicht, Formelblatt, Experimentesammlung, Abitur_Analyse,
Last_Minute_Lernzettel.

## Phase 6 – Erledigt

Automatische Prüfung aller 12 PDFs: Seitenzahl, Textextraktion, Suche nach nicht gerenderten
Formelresten (`$`, `\`, `sqrt`, Klammern), Layout-Überlaufprüfung, Zählung der Vektorzeichnungen.
Ein gefundener systematischer Fehler (`{,}` als Dezimalkomma wurde als sichtbare Klammern
gerendert) wurde behoben und alle Dokumente neu gebaut.

## Offene Punkte / Grenzen

1. **NIBIS-Archiv nicht ausgewertet** (technisch blockiert). Ältere Landesaufgaben (2016–2024)
   fehlen daher in der Analyse. Ein manueller Download im Browser könnte das schließen.
2. **Atomhülle kommt in den 12 Pool-Aufgaben nicht vor** – trotzdem vollständig abgedeckt
   (Skript 6, 7), da Kerncurriculum-Pflicht.
3. **Keine Bilder aus dem Schulmaterial übernommen** (nur eigene Grafiken). Wer Original-
   Simulationen nutzen will, findet die Links in `website_links.csv`.
4. Die Skripte sind inhaltlich vollständig, könnten aber durch zusätzliche Übungsaufgaben
   (mehr als 2–3 pro Skript) erweitert werden.

## Wiederaufnahme

1. `README.md` und diese Datei lesen.
2. `THEMENSTATUS.md` prüfen (welches Thema hat Lücken?).
3. Quellen in `01_Schulwebsite/materialien/` liegen vollständig vor – keine erneute Recherche nötig.
4. Änderungen an Texten in `build/src/*.typ`, dann `./build_all.sh`.
