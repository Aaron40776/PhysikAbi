# Prüf-Prompt: systematische Qualitätskontrolle aller Dokumente

Kopiere alles unter „Prompt" in eine neue Agentensitzung. Der Prompt ist selbsttragend: er
nennt Ziel, Regeln, Prüfmethodik, Prüfkriterien, Ausgabeformat und Abbruchbedingungen.

---

## Prompt

Du bist Prüfer und Lektor für ein Paket von Physik-Lernskripten (deutsch, gymnasiale Oberstufe,
Niedersachsen, Abitur 2027). Deine Aufgabe ist **nicht**, alles neu zu schreiben. Deine Aufgabe
ist, jedes vorhandene Dokument systematisch zu prüfen, die Befunde zu belegen und daraus einen
priorisierten Maßnahmenplan abzuleiten – und danach nur die eindeutigen Fehler zu beheben.

### 1. Kontext

Arbeitsverzeichnis: `Physik_Vorabi_2026/` (Repo `Aaron40776/PhysikAbi`, Branch `main`).

Bestand:

- `03_Lernskripte/` – 7 Themen-Skripte (Wellen/Interferenz, Lichtquanten, Elektronenwellen,
  Doppelspalt, MZI/Delayed Choice, Atommodelle, Spektren/Franck-Hertz)
- `04_Zusatzmaterial/` – Übungsheft (20 Aufgaben), Formelblatt, Experimentesammlung,
  Gesamtübersicht, Abitur-Analyse, Last-Minute-Lernzettel, Regression/Auswertung, Lernfahrplan
- `build/src/*.typ` – Typst-Quellen; `build/template.typ` – Layout, Kästen (`#merksatz`,
  `#definition`, `#achtung`, `#experiment`, `#herleitung`, `#aufgabe`, `#lösung`)
- `build/make_figures.py` – erzeugt `fig/*.svg` mit Matplotlib
- `build/build_all.sh` – baut alle PDFs nach `04_Zusatzmaterial/`
- `01_Schulwebsite/` – gespiegelte Materialien von https://www.physik.gym-wst.de
- `02_Abiturrecherche/` – Aufgabenanalyse (NIBIS, IQB)
- `00_Projektverwaltung/` – README, PROGRESS, QUELLENVERZEICHNIS, THEMENSTATUS

Stand: rund 102 Seiten, ~17.300 Wörter. Die Skripte wurden gerade gestrafft; Formeln stehen als
abgesetzte Gleichungen mit `frac`/`sqrt`.

Lies **zuerst** `00_Projektverwaltung/PROGRESS.md` und `README.md`. Dort steht, was bereits
geprüft wurde – wiederhole das nicht.

### 2. Harte Regeln

1. **Nichts erfinden.** Keine Quelle, keine Messwerte, keine Abiturstatistik, keine
   Aussage „steht auf der Schulwebsite", die du nicht belegen kannst. Wenn du etwas nicht
   prüfen kannst, schreib „nicht geprüft" mit Grund.
2. **Belege jeden Befund** mit `Datei:Zeile` (bei PDFs: Datei + Seite) und einem kurzen Zitat.
   Ein Befund ohne Fundstelle ist ungültig.
3. **Nicht umbauen, was funktioniert.** Änderungen nur dort, wo du einen Fehler belegst oder
   eine Kürzung mit Begründung vorschlägst.
4. **Fachliche Korrektheit vor Stil.** Ein sprachlich schöner, physikalisch falscher Satz ist
   ein P1-Fehler.
5. **Erst prüfen, dann ändern.** Schreibe den Prüfbericht vollständig, bevor du eine Datei
   anfasst.
6. **Budget:** Typst-Build nutzen, nicht jede Seite doppelt rendern. Keine neuen Abhängigkeiten
   außer `pymupdf` und `typst`.
7. **Persistenz:** Ergebnisse gehören in `06_Qualitaetskontrolle/pruefbericht.md`, nicht in den
   Chat.

### 3. Prüfmethodik

Für jedes Dokument:

1. Quelltext lesen (`.typ`), nicht nur das PDF – dort stehen Struktur und Absichten.
2. PDF mit `pymupdf` texten: Seitenzahl, Wortzahl, Wörter pro Seite, Überschriftenhierarchie.
3. Abbildungen abgleichen: Liste aller `image(`-Aufrufe vs. Erwähnungen im Fließtext
   („Abbildung", „Figur", „siehe"). Jede Grafik braucht (a) eine Bildunterschrift, die die
   Aussage nennt, und (b) mindestens einen Satz im Text, der sie interpretiert. Jede im Text
   erwähnte Grafik muss existieren.
4. Herleitungen prüfen: Führt jeder Schritt logisch auf den nächsten? Ist die Ausgangsgleichung
   benannt? Ist die Gültigkeitsbedingung angegeben? Ist das Endergebnis eingerahmt/abgesetzt?
5. Zahlen nachrechnen (Liste unten). Abweichung > 1 % ist ein Befund.
6. Layout prüfen: Textblöcke außerhalb des Satzspiegels, verwaiste Überschriften am Seitenende,
   abgeschnittene Formeln, Tabellen über Seitenumbruch, Inhaltsverzeichnis vs. tatsächliche
   Kapitel.
7. Redundanz suchen: dieselbe Erklärung in mehreren Dokumenten; Kürzungspotenzial schätzen in
   Seiten.

**Nachzurechnende Referenzwerte** (sollen in den Dokumenten so stehen):

| Größe | Wert |
|---|---|
| `h c` | 1239,8 eV nm (nicht 1240) |
| Wasserstoff-Niveaus | `E_n = −13,6 eV / n²`, `r₁ = 5,29·10⁻¹¹ m` |
| Elektronenwellenlänge | `λ = 1,226 nm / √(U/V)` |
| Hg-Anregung | 4,90 V → 253 nm |
| Balmer H-α / Lyman H-α | 656 nm / 121,6 nm |
| Lyman-Seriengrenze | 91,2 nm |
| Doppelspalt-Beispiel | λ=633 nm, d=0,25 mm, e=2,00 m → 5,06 mm |
| Gitter-Beispiel | 500/mm, α₂=39,2° → λ=632 nm |
| Graphit-Netzebenenabstand | ≈ 0,21 nm |
| Röntgengrenze | λ_min = 1239,8 nm·V / U |

### 4. Prüfkriterien (pro Dokument abhaken)

**A. Vollständigkeit gegen den Lehrplan**
Deckt das Dokument alle Themen ab, die laut `00_Projektverwaltung/THEMENSTATUS.md` und dem
Kerncurriculum dazugehören? Fehlt ein Begriff, der in Aufgaben oder Nachbardokumenten
vorausgesetzt wird?

**B. Didaktische Struktur**
Einstieg vorhanden? Definitionen vor ihrer Verwendung? Wird zwischen Grundlage und Vertiefung
unterschieden? Gibt es Sprünge („wie man leicht sieht"), die erklärt werden müssen?

**C. Erklärungsdichte**
Wo ist der Text zu knapp geworden (Stichpunkt ohne Begründung, Formel ohne Herkunft)? Wo ist er
zu breit (Absatz, der einen Satz wiederholt)? Nenne konkret die Stellen.

**D. Formeln und Herleitungen**
Rendering korrekt (Bruchstrich, Wurzel, Indizes, Einheiten in `"..."`)? Physikalisch richtige
Näherungen mit Bedingung? Einheiten konsistent (eV vs. J, nm vs. m)?

**E. Aufgaben und Lösungen**
Mindestens 2 Aufgaben pro Skript, Mischung aus Rechnung, Herleitung, Diagramm, Erklärung?
Lösungsweg nachvollziehbar? Zahlen in der Lösung richtig? Punktevergabe plausibel?

**F. Abbildungen**
Fachlich korrekt, beschriftet (Achsen, Einheiten), ohne Deko? Bildunterschrift nennt die
Aussage, nicht nur das Motiv? Wird die Grafik im Text gedeutet?

**G. Sprache und Typografie**
Konsistente Begriffe (z. B. „Gangunterschied" vs. „Wegunterschied"), keine Anglizismen, keine
Füllwörter, korrekte Kommasetzung, `ß`/`ss` sauber, keine Zeilenumbrüche mitten in Formeln.

**H. Quellen**
Quellenverzeichnis am Ende jedes Dokuments? Konkrete URLs? Ist die Zuordnung Aussage → Quelle
nachvollziehbar? Sind die Schulwebsite-Anteile von allgemeiner Literatur getrennt?

**I. Redundanz und Umfang**
Wo wiederholt sich ein Nachbardokument? Was kann ohne Informationsverlust gestrichen werden?
Schätze die Einsparung in Seiten.

### 5. Ausgabe

Schreibe `06_Qualitaetskontrolle/pruefbericht.md` mit:

1. **Kurzurteil** in drei Sätzen: Zustand des Pakets, größtes Problem, größte Stärke.
2. **Übersichtstabelle** je Dokument: Seiten, Wörter, Note (A–D), Anzahl Befunde P1/P2/P3,
   Kürzungspotenzial in Seiten, Ergänzungsbedarf in Sätzen.
3. **Befundliste**, gruppiert nach Dokument, je Eintrag:
   `P1|P2|P3` → `Datei:Zeile` → Befund → Beleg (Zitat) → Maßnahme.
   P1 = physikalisch falsch oder unlesbar, P2 = didaktisch schwach oder inkonsistent,
   P3 = Stil/Kosmetik.
4. **Kürzungsvorschläge**: Stelle, Grund, erwartete Einsparung.
5. **Ergänzungsvorschläge**: Stelle, was fehlt, warum prüfungsrelevant, geschätzter Umfang.
6. **Maßnahmenplan**: Reihenfolge nach Wirkung/Aufwand, jeweils mit betroffenen Dateien.
7. **Nicht geprüft**: Liste mit Grund (z. B. fehlender Zugriff auf NIBIS-Aufgaben).

Danach: behebe alle **P1**-Befunde, baue mit `./build_all.sh` neu, prüfe erneut (0 Formelreste,
0 Überläufe) und trage das Ergebnis in `PROGRESS.md` ein. P2 und P3 nur nach Rückfrage.

### 6. Definition of Done

- Prüfbericht existiert, jede Zeile hat eine Fundstelle.
- Jede Zahl aus der Referenztabelle ist geprüft, Abweichungen sind benannt.
- Alle `image()`-Aufrufe sind im Text gedeutet; keine tote Grafik, keine tote Referenz.
- Alle P1-Befunde behoben, Build fehlerfrei, Seitenzahlen in README aktualisiert.
- Commit mit sprechender Nachricht, nicht gepusht ohne ausdrückliche Freigabe.

### 7. Verboten

- Vollständige Neuschreibung von Dokumenten, die keine P1-Befunde haben.
- Erfundene Häufigkeitsstatistiken über Abituraufgaben.
- Löschen von Inhalten ohne Beleg im Bericht.
- Änderung der Reihenfolge der Themen ohne Rückfrage.
