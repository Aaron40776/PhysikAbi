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
   Ursprung (falsch für $E_\text{kin,max}$).
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
    Coulomb-Bahnen mit $eps = \sqrt{1+4b^2}$.
13. `f7_regression.typ`: „253 nm … die man mit Leuchtschirm beobachtet“ – die Linie ist UV.
14. `f5_abitur.typ` + `untersuchte_aufgaben.csv`: „fachpraktischer Anteil in 5 von 12“ war
    falsch (2 von 12), drei Tabellenzeilen und der Blitzdetektor (gA → eA) korrigiert.
15. `f8_lernplan.typ`: alle Seitenangaben stammten aus der Fassung vor der Straffung (Skript 1
    „15 S.“ statt 9); Tabelle jetzt auf Abschnittsnummern umgestellt, Umfang 95/47 Seiten,
    34.000 Wörter.

**Stand nach dem Neubau:** 15 PDFs, **95 Seiten**, **33.828 Wörter**, 0 Formelreste,
0 Textüberläufe, 22 SVGs eingebunden, keine ungerenderten Klammerlisten mehr.

**Offen (P2/P3, Freigabe nötig):** Konvention $I_1 = \sin^2$ vs. $P_\text{D1} = \cos^2$ (Skript 5 vs.
Formelblatt/Übungsheft), Unbestimmtheit $h/(4 \pi)$ vs. $h$, deutender Satz zu jeder der 26
Grafiken, Polarisation/Michelson/Pauli ergänzen, „fallende Gerade“ in Übungsheft 5.2.

**Umgebung:** matplotlib 3.11.2 nachinstalliert (Projektabhängigkeit für `make_figures.py`;
die ausgelieferten SVGs stammen aus derselben Version).

## Nachtrag 7 (01.11.2026) – P2 umgesetzt: Konvention, Abbildungen, Curriculumlücken

**Konvention nach Schulmaterial, nicht nach KC.** Das KC (d13 eA, Z. 19–21) fordert nur
„Aufbau beschreiben“, „Komplementarität/Nichtlokalität interpretieren“, „delayed choice“ – keine
Festlegung, welcher Ausgang bei $\Delta \phi = 0$ hell ist. Das Schulmaterial legt es fest
(`06machzehnderinterferometer/docs.md`, Z. 198): „Wenn der Phasenschieber auf 0 gestellt ist,
registriert Detektor 1 keine Intensität und Detektor 2 volle Intensität“, begründet mit
$\pi/2$-Sprung am Strahlteiler und $\pi$ am Spiegel (Z. 202–205). Also gilt
$P_\text{D1} = \sin^2(\Delta \phi/2)$.

Angepasst: `05_mzi.typ` (Begründung + Merksatz mit Konvention), `f1_formelblatt.typ` (P_D1/P_D2
getauscht, Gültigkeit benannt), `f6_uebungen.typ` (12.2: 0,38/0,62; 12.3: 1,27 µm statt 0,63 µm).

**Curriculumlücken geschlossen.** Neu in `01_wellen.typ`: Abschnitt 10 „Polarisation“
(Polarisator/Analysator, Malus-Gesetz) und Abschnitt 11 „Michelson-Interferometer“
($\Delta s = 2 \Delta d$, $\Delta d = N \lambda/2$) – beide mit KC-Beleg (d12 eA Z. 111–113 und
115–117). Michelson-Grafik neu erzeugt (`make_figures.py`, `fig/michelson.svg`), Funktion jetzt
fester Bestandteil des Skripts.

**Abbildungen gedeutet.** 27 deutende Sätze im Fließtext, je einer pro `image()`-Aufruf.

**Stand:** 96 Seiten (Skript 1: 10 statt 9), 34.955 Wörter, 0 Formelreste, 0 Textüberläufe,
23 SVGs. THEMENSTATUS, README und die Kurzweg-Tabelle im Lernfahrplan nachgezogen
(Skript 1 jetzt Abschnitte 14/15 statt 12/13).

## Nachtrag 8 (01.11.2026) – letzte belegte Lücken geschlossen

- **Unbestimmtheit:** Skript 4 nennt jetzt beide Formen ($h$ als Schulnotation, $h/(4 \pi)$ als
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
  („96 Seiten in 15 PDFs“) korrekt ausgeliefert. Die Zahlen im Kopf der Seite werden
  inzwischen aus den PDFs berechnet (`__ANZAHL__`/`__GESAMT__`), nicht mehr fest eingetragen.

Damit ist die Veröffentlichung automatisiert; nach einem Neubau genügt `git push`.

## Nachtrag 10 (01.11.2026) – Bedienung der Seite

Die Übersicht hat jetzt eine Suche und Navigation:

- Suchfeld in der Sticky-Leiste filtert live über Titel, Kurzinhalt und Dateinamen
  (Akzente werden normalisiert, „ubungsheft“ findet also auch „Übungsheft“), mit Trefferzähler
  („1 von 15“) und Leerzustand. Tasten: `/` fokussiert, `Escape` leert.
- Karten öffnen in einem neuen Tab, die Übersicht bleibt offen – das ersetzt den Zurück-Weg.
- Sprungmarken „Lernskripte“ / „Zusatzmaterial“ im Kopf, Nach-oben-Pfeil ab 400 px Scrolltiefe.
- Skip-Link, Fokusringe, `aria-live` am Zähler, `prefers-reduced-motion`, og-Metadaten.

Im Browser geprüft (lokal und live): „mzi“ → 1 von 15, „bragg“ → nur Skript 1,
„xyz“ → Leerzustand, Pfeil erscheint beim Scrollen.

## Nachtrag 11 (01.11.2026) – Formeltypografie, Trainingsheft, Seite aktualisiert

- **Bruchstriche:** 36 abgesetzte Gleichungen von `\/` auf `/` umgestellt. In Typst ist
  `a\/b` ein Schrägstrich, `a/b` ein gestapelter Bruch. Fließtext und Exponenten bleiben
  Schrägstrich. Seitenzahl unverändert, 0 Befunde.
- **Einheiten geprüft:** Im Mathemodus müssen sie in Anführungszeichen stehen. Neun
  Verdachtsfälle, alle Fehlalarm (Variablen `A`, `m`, `s`).
- **Neues Dokument:** `04_Zusatzmaterial/Uebungsheft_Diagrammauswertung.pdf` (7 S., 40 P.,
  5 Messreihen, Abbildungen aus `build/make_diag_figs.py`). In `build_all.sh` und
  `make_pages.py` eingetragen.
- **Markdown-Formeln:** 202 Formeln in sechs Dateien von Typst-Syntax auf LaTeX umgestellt
  (Prüfbericht 163, Review 18, PROGRESS 12, übrige 9); Stichprobe über 207 Formeln rendert
  fehlerfrei.
- **Seite:** Kopfzahlen werden jetzt aus den PDFs gezählt (`__ANZAHL__`, `__GESAMT__`) – keine
  veralteten „15 PDFs“ mehr. Neues Heft erscheint automatisch als Karte im Zusatzmaterial.
- **Fehler behoben:** `planck.reduce` (ℏ) gibt es in Typst 0.15.1 nicht – Skript 4 brach ab;
  durch `h\/(2 pi)` ersetzt.
- **Stand:** 16 PDFs, 103 Seiten, 18.380 Wörter, 0 Befunde.

## Nachtrag 12 (01.11.2026) – Lernseite: Volltextsuche, Textansicht, Lernstand

- `build/make_pages.py` baut zusätzlich `suche.json` (185 kB): Text jeder Seite in Blöcken,
  Inhaltsverzeichnisse, Kennzeichnung der Deckblatt-/Inhaltsseiten. Laufende Kopf- und Fußzeilen
  sowie weiche Trennstriche werden entfernt, Formelzeichen per NFKC vereinheitlicht (𝜆 → λ).
- Neue Seite `lesen.html`: Textansicht je Dokument mit Inhaltsverzeichnis, Suche im Dokument,
  gelb markierten Treffern, Blättern mit `n`/`p`, Sprung auf Abschnitte (`&h=`), „gelesen“-Schalter
  und PDF-Link auf die betroffene Seite (`#page=N&search=…`).
- Startseite: Volltextsuche mit Trefferpanel (Ausschnitt, Markierung, Tastatursteuerung),
  Inhaltsverzeichnis je Karte, Lernstand über `localStorage`, „Weiterlesen“, alle PDFs als ZIP.
- `suche.html`: alle Treffer mit Filter Skripte/Zusatzmaterial und Suchtipps; Symbolsuche
  (`lambda` → λ) mit Hinweis, wenn ein Zeichen auf fast jeder Seite steht.
- Tests: `build/test_pages.py` (Index, Links, ZIP) und `build/test_suche.js` (Ranking, Markierung,
  Phrasen) – 23 Prüfungen. Der Pages-Workflow testet vor dem Deploy; Trigger um `build/web/**` ergänzt.
- Quellen der Seite liegen unter `build/web/`; `_site/` ist in `.gitignore`.

## Nachtrag 13 (01.11.2026) – Lernseite geprüft, Sprungmarken repariert

- **Layoutmessung** bei 390/700/1024 px: kein horizontaler Überlauf, Kartenraster 1/2/3 Spalten,
  Trefferpanel bleibt vollständig im Viewport, Kontraste 6:1 bis 20:1, Schaltflächen ≥ 24 px.
- **Fehler behoben:** `scroll-behavior: smooth` am `html` kollidierte mit dem sofortigen `scrollBy`
  nach `scrollIntoView` – Sprungmarken, `&h=`-Links und „zuletzt gelesen“ landeten bei Position 0.
  Jetzt rechnet `springeZu()` die Zielposition selbst und scrollt mit `behavior: "instant"`.
  Geprüft: gewählter Abschnitt steht 72 px unter der Kopfzeile (Kopfzeile 62 px).
- **Suchtreffer nennen den Abschnitt**, in dem sie stehen (statt nur die Seite); kurze
  Überschriften-Treffer zeigen den folgenden Absatz als Kontext im Ausschnitt.
- Textansicht auf 74 Zeichen Zeilenlänge begrenzt, „gelesen“/„zurücksetzen“ auf Tap-Größe gebracht.

## Nachtrag 14 (01.11.2026) – Suchtreffer öffnen die echte PDF

- **Textansicht entfernt.** Sie war eine aus dem PDF extrahierte Kopie und beim Lesen schlechter
  als das Original. `lesen.html`/`lesen.js` und die zugehörigen Stile sind gelöscht.
- **PDF.js-Viewer eingebaut** (`build/vendor/pdfjs/`, 3.11.174, Apache-2.0, deutsch). Suchtreffer,
  Karten, Inhaltsverzeichnisse und die Trefferseite verlinken auf
  `pdfjs/web/viewer.html?file=…pdf#page=N&search=Begriff`. Geprüft: Klick auf „Bragg“ öffnet
  Seite 7, markiert „Bragg“, Anzeige „3 von 4 Übereinstimmungen“.
- **Mehrwortsuche:** an PDF.js geht nur der erste Suchbegriff („Bragg Gitter“ → `search=Bragg`),
  sonst findet die wörtliche PDF-Suche nichts. Der Ausschnitt auf der Seite zeigt weiter alle Wörter.
- **Grenze:** PDF.js sucht im PDF-Text; bei Formelzeichen (λ) markiert es die Stelle im PDF,
  die Trefferliste bleibt die schnellere Übersicht.

## Nachtrag 15 (01.11.2026) – Endkontrolle der Lernseite: Konsole, Tap-Ziele, Anker, PDF.js

- **Sprungmarken:** `html { scroll-padding-top: 104px }` statt `scroll-margin` nur an `h2`.
  Gemessen bei 360/390/768/844 px: Abschnittsüberschrift steht jetzt 6–46 px unter der
  klebenden Kopfzeile (vorher bei 0 px, also verdeckt).
- **Tap-Ziele:** Textlinks in Sprungliste, Kartenaktionen, Inhaltsverzeichnis, Fußzeile und
  Marke sind mindestens 32 px hoch (Inhaltsverzeichnis 26 px), „nach oben“ 44 × 44 px.
  Messung über alle Gerätebreiten: kein Element mehr unter 24 px.
- **Safe-Area:** `viewport-fit=cover` in beiden Seiten; Kopfzeile, `main` und „nach oben“
  beachten `env(safe-area-inset-*)` (Notch im Querformat).
- **Trefferpanel:** Position und Höhe richten sich nach `visualViewport`, damit das Panel bei
  eingeblendeter Bildschirmtastatur nicht darunter verschwindet; Tastaturhinweise („↑↓ wählen“,
  `/`) werden auf Touch-Geräten ausgeblendet.
- **PDF.js-Viewer:** eigenes Favicon als Data-URI (der 404 auf `/favicon.ico` ist weg),
  `disablePreferences` (Warnung zu AppOptions weg), deutsche Sprachdatei um die zwölf
  Schlüssel des Alternativtext-Dialogs ergänzt. Konsole im Viewer: 0 Fehler, 0 Warnungen,
  0 Antworten ≥ 400; Suchwort markiert („2 von 7 Übereinstimmungen“), Zielseite stimmt.
- **Suche:** Hinweis „ist ein Formelzeichen“ erscheint jetzt auch bei `lambda` (vorher nur bei
  getipptem λ); Anführungszeichen der Phrasensuche werden in der Trefferübersicht nicht doppelt
  angezeigt.
- **Build:** `pymupdf==2.0` im Pages-Workflow festgeschrieben; Indexgröße wird in Bytes
  gemeldet. Zwei Builds hintereinander sind byte-identisch (`diff -r` leer).
- **Tests:** `build/test_pages.py` prüft zusätzlich, dass der Viewer nichts aus dem Netz lädt,
  ein Favicon hat, die deutsche Sprachdatei vollständig ist und beide Seiten `viewport-fit=cover`
  setzen. 35 von 35 Prüfungen bestanden.

## Nachtrag 16 (01.11.2026) – Prüf-Prompt für den nächsten Durchgang neu gefasst

- `00_Projektverwaltung/REVIEW_PROMPT.md` ersetzt die frühere Fassung. Neu: Endprodukt
  (77 Vorabi-Seiten von physik.gym-wst vollständig abdecken), Abnahmekriterien D1–D8,
  Inhaltstiefe je Abschnitt, 7-Punkte-Schema für Experimente, Nutzen-Filter,
  Lückenschluss-Phase und eine verpflichtende Selbstüberprüfung (Revert-, Kurskollegen-,
  Falsifikations-, Verständnis-, Nebenwirkungs-, Ehrlichkeits-Test, Nutzen-Bilanz).
- Kein Inhalt der Skripte geändert, keine Website-Änderung; Tests unverändert grün.

## Nachtrag 17 (01.11.2026) – Prüf-Prompt: Werkzeug- und Skill-Nutzung verbindlich

- `REVIEW_PROMPT.md` hat jetzt den Abschnitt "Werkzeuge und Skills (nutzungspflichtig)":
  Repo-Prüfskripte, PDF-Text (pymupdf/pdftotext), Playwright/Chromium über alle Geräte,
  Quellenrecherche nur für CODATA/Kerncurriculum/IQB, git/gh für den Deploy-Status und
  passende Skills (u. a. evidence-based-citations, code-review, qa-changes). Regel: Belegt
  wird nur, was ein Werkzeug tatsächlich geprüft hat; "nicht geprüft" ist zulässig.
- Ausgabeformat um Punkt "Werkzeuge und Skills" erweitert, Stoppregel bei fehlendem Werkzeug.
- Keine Inhalte oder Website-Änderungen.

## Nachtrag 18 (01.11.2026) – Prüf-Prompt: kein stilles Auslassen, Lernpflicht

- Neuer Abschnitt "Kein stilles Auslassen – Lern- und Lösungspflicht": jede Anforderung
  endet als erledigt, belegt gescheitert oder offen gemeldet. Bei fehlender Fähigkeit:
  Doku lesen, Minimalbeispiel in /tmp, Alternativweg, zerlegen/delegieren, sonst konkrete
  Frage mit Optionen. Zeitbudget 10 Minuten pro Blockade, danach Zwischenstand melden.
- Eine gelernte Fähigkeit zählt nur mit einmaligem Lauf; Ausgabeformat um "Blockaden und
  Lernschritte" erweitert.
- Keine Inhalte oder Website-Änderungen.

## Nachtrag 19 (01.11.2026) – Review nach REVIEW_PROMPT, Abdeckung und Layout

- Alle 16 PDFs neu gebaut: **105 Seiten** (7 Skripte 50 Seiten), 19.144 Wörter, 0 Überläufe,
  0 Formelreste; zweiter Build byte-identisch.
- Abdeckung der 77 Vorabi-Seiten erstmals vollständig tabelliert: 55 ✅, 2 🔶, 13 ❌
  (12 Praktikumsseiten zu E-/B-Feld/Halbleitern/Solarzelle, He-Ne-Laser), 7 Rahmen.
- Fehlende Inhalte ergänzt: Resonanzfrequenz (Skript 1 §3), Lichtgeschwindigkeit und
  Messinvarianz (Skript 1 §10), Nichtlokalität/Verschränkung (Skript 5 §5).
- „Das musst du können“ mit Operatoren in allen 7 Skripten ergänzt.
- `review.md`-Bestand korrigiert (16 PDFs, 105 Seiten, 28 SVGs, 34 Aufgaben) und
  `THEMENSTATUS.md` (Koinzidenz, Pauli, Quantenradierer) aktualisiert.
- Offen: `check_figs.py` meldet 16 Geometriewarnungen, darunter zwei echte Überlappungen
  (`energieniveaus_h`, `unbestimmtheit`); `redraw_figs.py` weiterhin nicht ausgeliefert.

## Nachtrag 20 (01.11.2026) – Abbildungskollisionen behoben

- `energieniveaus_h`: Die Niveaus n = 5 und n = 6 liegen nur 0,16 eV auseinander; ihre
  Beschriftungen überlappten zu 75 %. Beschriftet werden jetzt nur n = 1–4, die Niveaus
  selbst bleiben als Linien sichtbar.
- `unbestimmtheit`: Die Teilbilder haben jetzt `wspace=0,3`; die Überlappung der
  Achsenzahlen am Mittelsteg ist weg.
- `check_figs.py`: 16 Warnungen → 9, davon 0 Überlappungen (Rest sind Achsentitel außerhalb
  der Zeichenfläche, die `bbox_inches="tight"` mit ausgibt).
- `f8_lernplan.typ`: 96→105 Seiten, 48→50 Skriptseiten, 35.000→19.000 Wörter; Skript 1
  11 S. mit Fehler §15/Wiederholung §16, Skript 5 7 S. mit §8/§9; PDF neu gebaut.
- PDFs neu gebaut, weiterhin 105 Seiten, 0 Befunde, reproduzierbar; Website-Tests 35/35.

## Nachtrag 21 (01.11.2026) – Darkmode, Glossar und Abbildungen

- **Abbildungen:** `mzi` neu aufgebaut (alle vier Elemente parallel, Strahlen treffen
  Strahlteiler und Spiegel in der Mitte, Armlängen 2 + 5 = 5 + 2, Phasenplättchen ergänzt);
  `michelson` ebenso neu (Strahlteiler, Spiegel, Schirm und Rückwege treffen sich);
  `doppelspalt_geometrie` mit echten Spaltmitten und Strahlen vom Spalt zum Schirmpunkt;
  `bragg` mit exakter Konstruktion 2·d·sin α; `franckhertz` mit Minima bei 4,9/9,8/14,7 V;
  `rutherford` mit Rückstreuung für b = 0; `qed_zeiger` als Zweipanelbild (Δφ = 0 und 90°).
  `redraw_figs.py` (nie ausgeliefert, mit falscher M1-Orientierung) entfernt.
- **Glossar:** `build/glossar.json` mit 104 Begriffen als einzige Quelle; daraus entstehen
  `glossar.html` (Filter, Alphabet, Volltextlink) und `04_Zusatzmaterial/Glossar.pdf`
  (5 Seiten, Typst `src/f10_glossar.typ`).
- **Darkmode:** `build/web/theme.js` setzt das gespeicherte Design vor dem Stylesheet,
  Umschalter in der Kopfzeile aller Seiten; Systemeinstellung bleibt Standard.
- **Stand:** 17 PDFs, 109 Seiten, 21.232 Wörter, `qa_pdf.py` 0 Befunde, Website-Tests 44/44.
- **Grenze:** Die SVGs wurden als Raster gerendert und pixelweise über Farbmasken und
  Bounding-Boxes sowie über ihre Konstruktionsdaten geprüft. Ein Bildbetrachter, der das
  Bild in den Modellkontext einspielt, steht nicht zur Verfügung; die Prüfung ist daher
  programmatisch, nicht visuell-ästhetisch.

## Nachtrag 22 (01.11.2026) – Inhaltsprüfung, Figurenfehler und Textansicht

- **Franck-Hertz-Inhaltsfehler gefunden und behoben:** Formelblatt (`f1_formelblatt.typ:155`),
  Last-Minute-Lernzettel (`f4_lastminute.typ:72`) und Übungsaufgabe 18 (`f6_uebungen.typ:287-294`)
  sprachen von „Strommaxima“ bzw. „Abstand der Maxima“. Die Franck-Hertz-Kurve hat Minima; der
  Lösungsteil sagte bereits „bis zum nächsten Einbruch“. Jetzt überall „Minima“.
- **Formelprüfung erweitert:** `check_physics.py` prüft jetzt 14 statt 8 Punkte, u. a.
  E(600 nm), K_max(400 nm, 2,2 eV), Compton-Δλ(90°), Rydberg 3→2, Doppelspalt-Geometrie und
  MZI-Wahrscheinlichkeit. Alle Werte stimmen mit den gedruckten Zahlen überein.
  `check_sources.py` meldet künftig „Strommaxima“ als Fehler.
- **Vier weitere Figurenfehler behoben:**
  `doppelspalt_intensitaet` zeigte den Δa-Pfeil nach links bis −30 mm (Indexfehler durch
  `argmax` auf einem gefilterten Array); jetzt 0 → λ·e/g ≈ 4,2 mm.
  `einzelspalt_doppelspalt` und `unbestimmtheit` setzten die Mitte durch
  `sin(u)/where(u==0, 1e-12, u)` auf 0 statt 1; jetzt `np.sinc(u/π)²`.
  `reflexion_brechung` ließ den einfallenden Strahl vom Lot wegzeigen und zeichnete α zwischen
  Strahl und Grenzfläche; jetzt zeigt der Pfeil zur Grenzfläche, α liegt zwischen Lot und Strahl.
  `regression` beschriftete die Steigung mit `m·10^14 = 4,14·10^13` statt mit 0,41 V je 10^14 Hz
  (Text: 4,11·10^-15 V s).
- **Textansicht neu, aber bewusst schlank:** `lesen.html`/`lesen.js` nutzen den vorhandenen
  `suche.json`-Auszug, zeigen eine Seite mit Zurück/Weiter, Seitenauswahl, Pfeiltasten und
  PDF-Link. Kein nachgebautes Inhaltsverzeichnis, keine Suchmarkierung; die PDF bleibt das
  Original. Auf der Startseite steht zusätzlich „Weiterlesen (S. N)“ aus `localStorage`.
  Damit ist die frühere Textansicht nicht einfach zurückgeholt, sondern auf Seiten-Navigation
  und Lesekopie reduziert.
- **Prüfstand:** 17 PDFs, 109 Seiten, 21.232 Wörter, 0 Textüberläufe, 0 Formelreste;
  `check_physics.py` 14/14, `test_pages.py` 48/48, `test_suche.js` 18/18;
  28 SVGs neu gerendert, `check_figs.py` 0 Überlappungen (9 Hinweise „Text außerhalb“).
- **Zahlen korrigiert:** 00-README nannte Skript 5 mit 7 Seiten und „7 Skripte 50 Seiten“;
  tatsächlich 6 Seiten und 49 Skriptseiten (Summe bleibt 109).

## Nachtrag 23 (01.11.2026) – Rekursiver Endabgleich nach dem Live-Gang

- **Live geprüft:** Pages-Run `41346476644` für `a20ccf3` erfolgreich; Startseite,
  `lesen.html`, `assets/lesen.js`, `suche.json`, `glossar.html` und ZIP antworten mit 200;
  17 Textlinks und 17 „Weiterlesen“-Plätze im Live-HTML.
- **Veraltete Zahlen im Lernfahrplan gefunden:** `f8_lernplan.typ` nannte weiterhin
  105 Seiten, 50 Skriptseiten und 19.000 Wörter; Skript 5 war mit 7 statt 6 Seiten,
  Skript 7 mit 6 statt 7 Seiten tabelliert. Jetzt 110/50/21.304 und beide Zeilen korrekt.
- **Franck-Hertz-Widerspruch im Skript behoben:** `07_spektren.typ` stellte die idealisierten
  Minima (4,9/9,8/14,7 V) und die realen Minima mit Kontaktspannung (10,4/15,3/20,2 V)
  nebeneinander, ohne den Unterschied zu benennen. Beobachtung, Bildunterschrift und
  Absatz sagen jetzt ausdrücklich „idealisiert“ bzw. „mit U_K ≈ 5,5 V“.
- **Zwei Skalenfehler in Abbildungen behoben:** `photoeffekt_fE` schrieb „Steigung = h“,
  `led_hbestimmung` „Steigung = h/e“ – bei der Achse in 10^14 Hz ist die Steigung
  aber h·10^14 bzw. (h/e)·10^14. Beschriftungen korrigiert.
- **Folge der Klarstellung:** Skript 7 hat jetzt 7 statt 6 Seiten; Gesamtstand **110 Seiten,
  21.304 Wörter, 50 Skriptseiten**. Alle aktuellen Stellen (README, 00-README, Prüfbericht,
  Review-Kopf, Lernfahrplan, `test_pages.py`, `test_suche.js`, Memory) sind angeglichen;
  historische Stände in PROGRESS/Review bleiben als solche stehen.
- **Doppelspalt-Symbolik konsistent:** Formelblatt, Experimentesammlung, Last-Minute-Zettel,
  Übungen und Regression verwendeten `g` für den Doppelspalt, während Skript 1 und die
  Abbildungen `d` schreiben. Jetzt durchgängig `d` (Doppelspalt) und `g` (Gitter).
- **Doppelspalt-Abbildungen konsistent:** Die Figuren beschrifteten den Spaltabstand mit
  `g`, während Text und Formeln `d` verwenden; α war am oberen Spalt statt an der
  Mittelachse eingezeichnet. Jetzt `d` und α an der Mittelachse.
- **Zeigerkette exakt:** Die Beschriftungen T/4, T/2, 3T/4 lagen bei 72°/168°/265° statt
  bei 90°/180°/270°. Die 13 Zeiger rotieren jetzt in exakten Zwölftelschritten; die
  Viertelmarken sitzen genau.
- **Prüfstand:** `qa_pdf.py` 110 Seiten, 21.304 Wörter, 0 Überläufe/Formelreste;
  `check_physics.py` 14/14; `test_pages.py` 48/48; `test_suche.js` 18/18;
  `check_figs.py` 0 Überlappungen, 9 Hinweise „Text außerhalb“.
