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

## Nachtrag (02.11.) – Übungsheft und Abbildungskorrektur

- [x] `04_Zusatzmaterial/Uebungsheft_20_Aufgaben.pdf` erstellt (13 S.):
      20 Aufgaben in 6 Blöcken, 256 Punkte, vollständige Lösungen mit Rechenweg,
      Fehlerblatt-Vorlage, Punkte-Einschätzung.
- [x] Alle Zahlenwerte der Aufgaben vorab in Python berechnet (Kontrollwerte geprüft).
- [x] Abbildungen maschinell geprüft; 8 von 21 neu gezeichnet bzw. korrigiert
      (Details: `06_Qualitaetskontrolle/pruefbericht.md`, Abschnitt „Prüfung der Abbildungen“).
- [x] Gesamtumfang jetzt 113 Seiten in 13 PDFs.

Offen: keine inhaltlichen Lücken; optionale Erweiterung wäre ein zweites Übungsheft
mit Schwerpunkt auf Diagrammauswertung.

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

## Nachtrag 3 (02.11.) – Konstanten, Regression

- [x] $h c$ auf 1239,8 eV nm präzisiert (Formelblatt, Last-Minute, Skript 2) mit Hinweis auf
      die gerundete Rechenform 1240.
- [x] Neues Dokument `Regression_und_Auswertung.pdf` (7 S.): Protokoll, Linearisierung,
      Steigungsdeutung, $R^2$/Residuen, vier Beispiele, zwei Übungsaufgaben.
- [x] Alle Regressionswerte mit numpy nachgerechnet.
- [x] Gesamtumfang 121 Seiten in 14 PDFs.

## Nachtrag 4 (02.11.) – Umfangsanalyse und Lernfahrplan

- [x] Wortzahlen je Dokument gemessen: 121 S., 60.663 Wörter (501 Wörter/Seite).
- [x] Kern-Lernstoff isoliert: Formelblatt (1.718 W.) + Lernzettel (1.358 W.) ≈ 3.100 Wörter.
- [x] `Lernfahrplan.pdf` (4 S.): Rollen der Dokumente, Kurzweg-Seiten je Skript (aus den
      tatsächlichen Überschriftenpositionen), Vier-Tage-Plan bis 05.11.

## Nachtrag 5 (02.11.) – Skripte gestrafft, Formeln abgesetzt

**Diagnose.** 304 Formeln mit Bruch/Wurzel standen inline im Fließtext (`1/(2π)√D/m`),
nur 64 waren abgesetzte Gleichungen. Außerdem enthielten die Herleitungs-Kästen nur den Titel,
die Rechenschritte standen außerhalb des Kastens (Fehler in `#herleitung[...]`-Nutzung).

**Umbau.** Alle 7 Skripte neu geschrieben: Stichpunkte statt Absätze, jede tragende Formel als
abgesetzte Gleichung mit `frac`/`sqrt`, Herleitungsschritte im Kasten, Experimente als kompakte
Blöcke, Wiederholung als Tabelle. Inhaltlich unverändert (alle Themen, alle Figuren erhalten).

| Skript | vorher | jetzt |
|---|---|---|
| 1 Wellen | 15 S. / 4.989 W. | 9 S. / 2.585 W. |
| 2 Lichtquanten | 10 / 5.349 | 6 / 1.923 |
| 3 Elektronenwellen | 10 / 4.700 | 7 / 1.788 |
| 4 Doppelspalt | 11 / 5.715 | 6 / 1.637 |
| 5 MZI | 9 / 5.807 | 6 / 1.810 |
| 6 Atommodelle | 11 / 5.323 | 7 / 1.666 |
| 7 Spektren | 11 / 6.321 | 6 / 1.785 |

Gesamt 121 -> 95 Seiten, 60.663 -> 33.762 Wörter (-44 %).

**Geprüft:** 0 Formelreste (`{`, `}`, `$`, `\`), 0 Textüberläufe, alle Figuren eingebunden,
`build_all.sh` läuft ohne Fehler durch.

## Nachtrag 6 (01.11.2026) – Inhaltliche Qualitätskontrolle, P1 behoben

**Prüfbericht neu geschrieben.** `06_Qualitaetskontrolle/pruefbericht.md` enthält jetzt die
inhaltliche Prüfung (Kurzurteil, Übersicht, 15 P1 / 31 P2 / 22 P3 mit Datei:Zeile und Zitat,
Kürzungs- und Ergänzungsvorschläge, Maßnahmenplan, Nicht-geprüft-Liste, Nachrechnung aller
18 Referenzwerte, Abbildungs-Inventar). Die technische Prüfung vom 01./02.11. steht unverändert
in Anhang A/B.

**Korrektur einer Annahme aus Nachtrag 5.** „Inhaltlich unverändert“ trifft nicht zu: bei der
Straffung sind die Kohärenz-Definition, Polarisation/Malus und das Michelson-Interferometer aus
Skript 1 verschwunden. Kohärenz ist wieder definiert (Skript 1, Abschnitt 2). Polarisation und
Michelson bleiben offen und stehen als Ergänzungsvorschlag im Prüfbericht, Abschnitt 5 –
`THEMENSTATUS.md` führt sie jetzt als ❌ statt als 🔶.

**Behobene P1-Befunde (15):**

1. `07_spektren.typ`: Aufgabe 2 war ohne `#enum(` gerendert (Rohtext mit eckigen Klammern).
2. `f6_uebungen.typ`: zwei Markdown-Tabellen (Zeitplan, Messwerte Aufgabe 5) als Rohtext →
   `#table`.
3. `f6_uebungen.typ`: russisches Wort „принадлежит“ → „gehört“.
4. `f6_uebungen.typ`: überzählige Klammer in Lösung 14.1.
5. `02_lichtquanten.typ`: Bildunterschrift zu `photoeffekt_fE` behauptete eine Gerade durch den
   Ursprung (falsch für $E_"kin,max"$).
6. `make_figures.py`: Faktor 1000 in `photoeffekt_fE` ließ alle Kurven auf $E=0$ liegen;
   $W_A$(Cs) an den Skriptwert 1,94 eV angeglichen.
7. `02_lichtquanten.typ`: Bildunterschrift zu `led_hbestimmung` beschrieb die Gegenfeldmethode
   statt der LED-Messung.
8. `make_figures.py`: `franckhertz` hatte 11 V Periode (beschriftet „ΔU ≈ 11 V“) statt 4,9 V.
9. `07_spektren.typ`: Unterschrift ordnete alle Linien der Balmer-Serie zu, obwohl auch
   Lyman-α (2→1) eingezeichnet ist.
10. `07_spektren.typ`: Neon-Erklärung („Anregung im sichtbaren Bereich“) war physikalisch falsch.
11. `06_atommodelle.typ` + `make_figures.py`: Potenzialtopf-Beschriftung „E_kin – E_pot“ und
    Unterschrift, die nicht gezeichnete Wellenfunktionen versprach.
12. `make_figures.py`: Rutherford-Bahnen waren keine Hyperbeln (Ablenkwinkel 0); jetzt
    Coulomb-Bahnen mit $eps = sqrt(1+4b^2)$.
13. `f7_regression.typ`: „253 nm … die man mit Leuchtschirm beobachtet“ – die Linie ist UV.
14. `f5_abitur.typ` + `untersuchte_aufgaben.csv`: „fachpraktischer Anteil in 5 von 12“ war
    falsch (2 von 12), drei Tabellenzeilen und der Blitzdetektor (gA → eA) korrigiert.
15. `f8_lernplan.typ`: alle Seitenangaben stammten aus der Fassung vor der Straffung (Skript 1
    „15 S.“ statt 9); Tabelle jetzt auf Abschnittsnummern umgestellt, Umfang 95/47 Seiten,
    34.000 Wörter.

**Stand nach dem Neubau:** 15 PDFs, **95 Seiten**, **33.828 Wörter**, 0 Formelreste,
0 Textüberläufe, 22 SVGs eingebunden, keine ungerenderten Klammerlisten mehr.

**Offen (P2/P3, Freigabe nötig):** Konvention $I_1 = sin^2$ vs. $P_"D1" = cos^2$ (Skript 5 vs.
Formelblatt/Übungsheft), Unbestimmtheit $h\/(4 pi)$ vs. $h$, deutender Satz zu jeder der 26
Grafiken, Polarisation/Michelson/Pauli ergänzen, „fallende Gerade“ in Übungsheft 5.2.

**Umgebung:** matplotlib 3.11.2 nachinstalliert (Projektabhängigkeit für `make_figures.py`;
die ausgelieferten SVGs stammen aus derselben Version).

## Nachtrag 7 (01.11.2026) – P2 umgesetzt: Konvention, Abbildungen, Curriculumlücken

**Konvention nach Schulmaterial, nicht nach KC.** Das KC (d13 eA, Z. 19–21) fordert nur
„Aufbau beschreiben“, „Komplementarität/Nichtlokalität interpretieren“, „delayed choice“ – keine
Festlegung, welcher Ausgang bei $Delta phi = 0$ hell ist. Das Schulmaterial legt es fest
(`06machzehnderinterferometer/docs.md`, Z. 198): „Wenn der Phasenschieber auf 0 gestellt ist,
registriert Detektor 1 keine Intensität und Detektor 2 volle Intensität“, begründet mit
$pi\/2$-Sprung am Strahlteiler und $pi$ am Spiegel (Z. 202–205). Also gilt
$P_"D1" = sin^2(Delta phi\/2)$.

Angepasst: `05_mzi.typ` (Begründung + Merksatz mit Konvention), `f1_formelblatt.typ` (P_D1/P_D2
getauscht, Gültigkeit benannt), `f6_uebungen.typ` (12.2: 0,38/0,62; 12.3: 1,27 µm statt 0,63 µm).

**Curriculumlücken geschlossen.** Neu in `01_wellen.typ`: Abschnitt 10 „Polarisation“
(Polarisator/Analysator, Malus-Gesetz) und Abschnitt 11 „Michelson-Interferometer“
($Delta s = 2 Delta d$, $Delta d = N lambda\/2$) – beide mit KC-Beleg (d12 eA Z. 111–113 und
115–117). Michelson-Grafik neu erzeugt (`make_figures.py`, `fig/michelson.svg`), Funktion jetzt
fester Bestandteil des Skripts.

**Abbildungen gedeutet.** 27 deutende Sätze im Fließtext, je einer pro `image()`-Aufruf.

**Stand:** 96 Seiten (Skript 1: 10 statt 9), 34.955 Wörter, 0 Formelreste, 0 Textüberläufe,
23 SVGs. THEMENSTATUS, README und die Kurzweg-Tabelle im Lernfahrplan nachgezogen
(Skript 1 jetzt Abschnitte 14/15 statt 12/13).

## Nachtrag 8 (01.11.2026) – letzte belegte Lücken geschlossen

- **Unbestimmtheit:** Skript 4 nennt jetzt beide Formen ($h$ als Schulnotation, $h\/(4 pi)$ als
  Lehrbuchform) und erklärt den Faktor – genau der Vergleich, den das KC verlangt
  (`13unbestimmtheit/docs.md`, Z. 6). Formelblatt führt beide Zeilen.
- **Koinzidenzmethode:** als Definition in Skript 4 ergänzt (KC eA d13
  `04doppelspaltexperiment/docs.md`, Z. 10), Beleg für „Photon nicht teilbar“ aus
  `06machzehnderinterferometer/docs.md`, Z. 245.
- **Pauli-Prinzip:** als Definition in Skript 6 ergänzt (war nur eine Tabellenzelle).
- **Übungsheft 5.1:** „fallende Gerade“ → „steigende Gerade“ (der Satz widersprach sich selbst;
  die Rechnung darunter war richtig).

Bewusst offen und im Prüfbericht, Abschnitt 12.5, begründet: Quantenradierer/Bomben-Test (nicht
im KC), Bindestrich-Extraktion im Übungsheft (nur PDF-Suche betroffen), NIBIS/Bildungsportal
(kein Zugriff), optische Sichtprüfung der SVGs (kein Betrachter verfügbar).

**Stand:** 96 Seiten, 35.080 Wörter, 0 Formelreste, 0 Textüberläufe, 23 SVGs, 27 von 27
Abbildungen im Text gedeutet.

## Nachtrag 9 (01.11.2026) – Veröffentlichung

Die Skripte stehen jetzt als Seite bereit: **https://aaron40776.github.io/PhysikAbi/**

- `build/make_pages.py` erzeugt die Übersicht (Titel, Kurzinhalt, Seitenzahl aus den PDFs) und
  kopiert alle 15 Dateien nach `_site`.
- `.github/workflows/pages.yml` baut und deployt bei jedem Push auf `main`, sobald sich PDFs,
  das Skript oder der Workflow ändern. Pages-Quelle: „GitHub Actions“.
- Geprüft: Startseite HTTP 200 (6,5 kB), alle 15 PDF-Links HTTP 200, Titel und Untertitel
  („96 Seiten in 15 PDFs“) korrekt ausgeliefert.

Damit ist die Veröffentlichung automatisiert; nach einem Neubau genügt `git push`.
