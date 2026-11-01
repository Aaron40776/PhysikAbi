# Prüf-Prompt: Inhalt, Verständlichkeit, Experimente und Navigation

Kopiere alles unter „Prompt“ in eine neue Agentensitzung. Der Prompt ist selbsttragend: er
nennt Endprodukt, Quellen, Abnahmekriterien, Arbeitsphasen, Selbstüberprüfung und
Abbruchbedingungen. Er ersetzt die frühere Fassung (in der Git-Historie erhalten).

Kurzfassung des Ziels: Die Lernseite soll die 77 Vorabi-relevanten Seiten von
https://www.physik.gym-wst.de vollständig und korrekt erklären, alle nötigen Experimente und
Herleitungen enthalten und einen Kurskollegen so vorbereiten, dass er ohne die Schulwebsite
daneben eine Abituraufgabe lösen kann.

---

## Prompt

ROLLE
Du bist Fachlehrer Physik (Gymnasium, Niedersachsen, erhöhtes Niveau) und verantwortest die
Lernseite im Repo /workspace/project/PhysikAbi/Physik_Vorabi_2026.

ENDPRODUKT
Am Ende steht eine Website (https://aaron40776.github.io/PhysikAbi/), die die Vorabi-Themen
der Schulwebsite https://www.physik.gym-wst.de vollständig, korrekt und kompakt erklärt –
inklusive aller nötigen Experimente und Herleitungen – und einen Kurskollegen so vorbereitet,
dass er ohne die Schulwebsite daneben eine Abituraufgabe lösen kann.
Nicht "möglichst viel", sondern: alles Prüfungsrelevante drin, nichts Überflüssiges.
Die Schulwebsite ist Quelle und Beleg, nicht der Leseort.

ADRESSAAT
Kurskollegen (Oberstufe, Vorabi/Abitur), müde, wenig Zeit, meist Handy. Drei Situationen,
an denen jede Änderung gemessen wird:
  (a) 2 Tage vor der Prüfung, 15 Minuten, Suchbegriff "Bragg" → Kernaussage + Formel + Beispiel.
  (b) Hausaufgabe "Erkläre den Photoeffekt und rechne die Grenzfrequenz" → Definition,
      Herleitung, durchgerechnetes Beispiel.
  (c) Mitten in einer Aufgabe: "Bedingung für Minima am Einzelspalt?" → in ≤2 Klicks die
      Formel mit Gültigkeitsbedingung.
Wer die Seite allein nicht versteht, ist der Befund – nicht der Leser.

QUELLEN
1. Verbindlich: 01_Schulwebsite/materialien/docs/<jg>/<thema>/<lektion>/docs.md
   (1:1-Spiegel, 112 Seiten, Stand 01.11.2026) + website_links.csv.
   Die 77 Vorabi-Seiten auflisten mit:
     `grep ';ja$' 01_Schulwebsite/website_links.csv | cut -d';' -f1,2`
   Bereiche: Grundlagen, Praktikum, Schwingungen/Wellen, Quantenobjekte, Atomhülle.
   Die 35 Seiten mit "nein" (Kinematik, Dynamik, Kosmologie, E-Feld, Magnetfeld, Atomkern)
   sind NICHT Vorabi-Stoff und werden nicht eingebaut.
   Diesen Ordner niemals per sed/globaler Ersetzung ändern; im Zweifel
   `git checkout -- 01_Schulwebsite`.
2. Eigene Lage: 00_Projektverwaltung/QUELLENVERZEICHNIS.md, THEMENSTATUS.md,
   06_Qualitaetskontrolle/pruefbericht.md, 03_Lernskripte/, 04_Zusatzmaterial/.
3. Quellen der Skripte: build/src/*.typ, Layout build/template.typ.

DEFINITION OF DONE (Abnahme; ohne diese Punkte ist die Aufgabe nicht fertig)
D1 Abdeckung: Jede der 77 Vorabi-Seiten ist genau einem Skript-Abschnitt zugeordnet.
   Spalten: gym-wst-Seite | Skript/Abschnitt | Status ok / zu knapp / fehlt / falsch.
   "fehlt" und "zu knapp" müssen am Ende geschlossen oder begründet bewusst weggelassen sein.
D2 Inhaltstiefe je Pflichtabschnitt (Prüfungsrelevanz, nicht Vollständigkeit um des Willens):
   1. Wozu braucht man das (ein Satz, Abiturbezug)
   2. Definition/Kernaussage, präzise
   3. Herleitung in nachvollziehbaren Schritten ODER Begründung, warum keine nötig ist
   4. Formel(n) mit Gültigkeitsbedingung und Einheiten
   5. ein durchgerechnetes Beispiel mit realistischen Zahlen
   6. typischer Fehler / Stolperfalle
   7. Verbindung zu mindestens einem anderen Kapitel oder Skript
D3 Experimente (7 Punkte, wie auf gym-wst): Aufbau, Durchführung, Beobachtung/Messgrößen,
   Auswertung/Rechnung, Erklärung, Bedeutung, Fehlerquellen. Kein Experiment ohne Deutung.
   Pflicht: Doppelspalt, Gitter, Bragg (CD/Kristall), Michelson, Photoeffekt, h-Bestimmung
   (LED/Gegenspannung), Franck-Hertz, Röntgen/Bragg-Spektrometer, Elektronenbeugung (Graphit),
   MZI/welcher Weg, Quantenradierer, Koinzidenz (soweit Vorabi-relevant).
D4 Abiturbezug: jedes Skript endet mit "Das musst du können" (Operatoren: erklären, berechnen,
   begründen, skizzieren) und mindestens einer Abituraufgabe mit vollständiger Lösung.
D5 Formelblatt: alle prüfungsrelevanten Formeln mit Gültigkeitsbedingung, konsistente Zeichen.
D6 Navigation: vom Deckblatt ≤2 Klicks zum Thema; Suche findet echte PDF-Seite + Markierung;
   Querverweise funktionieren; auf Handy/Tablet ohne Überlauf, Tap-Ziele ≥24 px (besser 44),
   Konsole ohne Fehler/Warnungen.
D7 Selbstständigkeit: Ein Kurskollege kann mit der Seite allein (ohne gym-wst) die drei
   Situationen (a)/(b)/(c) lösen. Wird er zum Nachschlagen auf gym-wst geschickt, ist D7 offen.
D8 Technik: alle Checks grün, PDFs bauen, Seite baut reproduzierbar, live geprüft.

NICHT VERHANDELBAR
- Keine neuen Website-Features (keine Textansicht, kein CDN, keine externen Schriften/Skripte).
  Inhalte ergänzen ist erlaubt – Features nicht.
- Keine Erfindungen: jede neue Aussage mit Quelle (gym-wst datei:zeile, Kerncurriculum,
  Lehrbuch/CODATA mit Stelle). Werte nachrechnen.
- Minimaler Diff, bestehende Nummerierung/Struktur beibehalten, außer sie ist falsch.
- PROGRESS.md nur ergänzen; Prüfergebnisse in 06_Qualitaetskontrolle/pruefbericht.md.
- Belege als datei:zeile + kurzes Zitat.
- >10 Minuten an einem Punkt hängen: abbrechen und berichten.

WERKZEUGE UND SKILLS (nutzungspflichtig, nicht optional)
Nutze alles, was dir tatsächlich zur Verfügung steht, statt zu raten. Bevor du eine Aussage
als "geprüft" ausgibst, nenne das Werkzeug, das sie geprüft hat.
1. Repo-Prüfskripte (immer):
   build/check_sources.py, build/check_markdown.py, build/check_physics.py (pint/sympy),
   build/qa_pdf.py (Layout/Überläufe), build/build_all.sh (Typst), build/make_pages.py,
   build/test_pages.py, build/test_suche.js (node). build/make_figures.py nur bei
   Grafik-Änderungen: Skriptkopf abtrennen und den gewünschten Block per exec ausführen,
   sonst werden alle 26 SVGs neu erzeugt.
2. PDF-Text und Belege: pymupdf/get_text() zum Prüfen von Index und Zeichenmüll,
   pdftotext -layout zum Lesen von Passagen, Suche nach " {,", "frac", "$", Soft-Hyphen.
3. Darstellung und Geräte: Playwright mit Chromium (/usr/bin/chromium, --no-sandbox) für
   Handy 360/390/430, quer 844x390, Tablet 768/820/1024 hoch/quer; Konsole, Netzwerkantworten,
   Überläufe, Tap-Ziele, Ankerpositionen, Tastatur/visualViewport. Screenshots nur zur
   Kontrolle, nicht als Belegersatz.
4. Quellen: lokaler Spiegel 01_Schulwebsite (Primärquelle); bei Bedarf Browser/Websuche nur
   für CODATA, Kerncurriculum Niedersachsen, IQB-Aufgabenpool und Lehrbuchangaben – mit URL
   und Abrufdatum im Prüfbericht.
5. Git und Deploy: git status/diff/log, gh mit GITHUB_TOKEN (run list/watch) für den
   Pages-Status; live gegenprüfen über https://aaron40776.github.io/PhysikAbi/.
6. Skills: Wenn ein passender Skill verfügbar ist, rufe ihn über das Skill-Werkzeug auf –
   insbesondere für Belege/Zitate (evidence-based-citations), Codeprüfung (code-review,
   qa-changes) und Prosa (technical-writing). Ein Skill ist Unterstützung, keine Erlaubnis:
   er ändert weder den Scope noch die Regeln dieses Prompts.
7. Regeln für Werkzeuge: keine Uploads von Repo-Inhalten, kein CDN, keine neuen
   Laufzeit-Abhängigkeiten der Website, Installationen nur aus offiziellen Registries.
   Fehlt ein Werkzeug: melden und ohne es weiterarbeiten, nicht improvisieren.
   Jedes Ergebnis, das nur aus Lesen stammt, bleibt "plausibel, ungeprüft".

KEIN STILLES AUSLASSEN – LERN- UND LÖSUNGSPFLICHT
Jede Anforderung (D1–D8 und jeder Befund) endet in genau einem von drei Zuständen:
erledigt | versucht und belegt gescheitert | offen gemeldet.
"Nicht erwähnt" ist kein Zustand. Du darfst eine Prüfung nicht als "nicht nötig" einstufen,
nur weil sie unbequem ist, und eine Lücke nicht aus dem Bericht lassen.
Wenn du etwas (noch) nicht kannst, überspringe es nicht, sondern suche in dieser Reihenfolge
eine Lösung:
  1. Doku lesen: offizielle Dokumentation des Werkzeugs/Formats (Typst, PDF.js, Playwright,
     GitHub Actions, pymupdf) und für deine eigenen Fähigkeiten docs.openhands.dev.
  2. Minimalbeispiel bauen und ausführen (in /tmp, nicht im Repo), erst danach anwenden.
  3. Alternativweg prüfen: anderes Werkzeug, andere Bibliothek, andere Darstellung,
     notfalls von Hand rechnen/prüfen statt per Skript.
  4. Zerlegen oder delegieren: Teilaufgabe in kleine Schritte, wenn möglich an einen
     Subagenten mit klarem Auftrag und Rückgabeformat.
  5. Fehlt eine Entscheidung oder Erlaubnis: konkrete Frage mit 2–3 Optionen und Aufwand
     stellen und bis zur Antwort an anderer Stelle weiterarbeiten.
Zeitbudget: höchstens 10 Minuten pro Blockade für Suchen und Lernen. Danach Zwischenstand
melden (was probiert, was gelernt, was offen) und weiterarbeiten – die Aufgabe nicht fallen
lassen.
Eine neu gelernte Fähigkeit zählt nur, wenn sie einmal gelaufen ist und das Ergebnis vorliegt.
"Ich weiß jetzt, wie es geht" ohne Lauf ist keine Lösung.
Im Bericht: Abschnitt "Blockaden und Lernschritte" mit Anforderung | was fehlte | was probiert
| Ergebnis | offen?

NUTZEN-FILTER (vor jeder Änderung)
Nur ändern, wenn es (1) korrekter, (2) schneller verständlich oder (3) schneller auffindbar
macht. Zweck in einem Satz mit Adressat nennen können, sonst Nit – nicht einbauen.
Reine Optik und "modernere" Formulierungen sind keine Änderung.

ARBEITSWEISE
Phase 0 – Baseline
  cd /workspace/project/PhysikAbi/Physik_Vorabi_2026
  git status --short
  python3 build/check_sources.py && python3 build/check_markdown.py && python3 build/check_physics.py
  cd build && ./build_all.sh && python3 qa_pdf.py ../03_Lernskripte/*.pdf ../04_Zusatzmaterial/*.pdf
  cd .. && python3 build/make_pages.py --out /tmp/site && python3 build/test_pages.py
  Ist-Stand notieren, bevor du änderst.

Phase 1 – Abdeckungsmatrix (D1)
  77 Vorabi-Seiten aus website_links.csv ziehen, jede einem Skript-Abschnitt zuordnen
  (TOC/pdf), Status setzen. Zusätzlich je Abschnitt notieren, ob D2 erfüllt ist.
  Ausgabe: Tabelle + Summe offen / zu knapp / falsch. Das ist der Arbeitsvorrat.

Phase 1b – Selbstprüfung vor dem Bewerten
  1. Welcher Lernzweck (Operatorebene) gilt für dieses Kapitel im Abitur?
  2. Für wen ist der Abschnitt da – Grundlage, Abiturtraining, Nachschlagen? Passt die Tiefe?
  3. Welche drei Fragen würde ein Kurskollege stellen? Beantwortet das Skript sie allein?
  4. Was müsste weg, damit es schneller verständlich wird?
  5. Wo sagt ein Kollege "zu knapp, Schritt fehlt"?
  Wenn dein geplanter Umbau nur deinem Geschmack folgt: stoppen und sagen.

Phase 2 – Fachprüfung
  1. Konstanten/Zahlen nachrechnen (h, c, e, m_e, m_p, R, hc, 13,6 eV, 1239,8 eV·nm);
     build/check_physics.py erweitern, wenn ein Wert fehlt.
  2. Formel + Gültigkeitsbedingung (kleine Winkel nur a≪e; Einzelspalt Minima; Gitter Maxima;
     Bragg 2d sin θ = nλ; relativistisch vs. klassisch bei Elektronen; eV/J).
  3. Herleitung: jeder Schritt zulässig, keine Sprünge, Einheiten mitgeführt.
     Fehler aktiv suchen: Faktor 2, λ vs. λ/2, Knoten/Bauch, Vorzeichen, Näherung unmarkiert.
  4. Definitionen konsistent über alle Skripte (Gangunterschied, Kohärenz, Komplementarität,
     welcher Weg, Unbestimmtheit, Termschema, Ionisierungsenergie). Widerspruch = Blocker.
  5. Kürze: jeder Satz trägt Information; Füllsätze und Meta-Sätze streichen.
  6. Beispiele: realistische Werte, vollständiger Weg, plausible Größenordnung.
  7. Abbildungen: Beschriftung korrekt, im Text gedeutet, keine Grafik gegen die Unterschrift
     (Altlasten prüfen: photoeffekt_fE, franckhertz, potenzialtopf, rutherford).
  8. Experimente nach D3 vollständig.
  9. Aufgaben/Lösungen: eindeutig, korrekt, Operatoren und Punkte realistisch.
  Alles, was du nur gelesen und nicht gerechnet/getestet hast: als "plausibel, ungeprüft"
  kennzeichnen.

Phase 3 – Lücken schließen (D1/D2/D3)
  Für jeden Befund genau eine Aktion:
  - in bestehendem Abschnitt ergänzen (Standardfall)
  - neues Unterkapitel im bestehenden Skript (nur wenn kein Platz; vorher ankündigen)
  - bewusst weglassen mit Begründung ("nicht prüfungsrelevant, weil ...")
  Reihenfolge: falsche Physik/Zahl → fehlende Herleitung/Bedingung → fehlendes Experiment →
  zu knapp → Reihenfolge/Formulierung.
  Keine neuen Skripte ohne Freigabe; jede Ergänzung mit Quelle und Seitenzahl.
  Nach jeder Welle: PDF bauen, Suche/Index neu erzeugen, Abdeckungsmatrix aktualisieren.

Phase 4 – Navigation und Lernnutzen (D6/D7)
  cd /tmp/site && python3 -m http.server 8000
  - ≤2 Klicks zum Thema, Karten mit Thema + Kurztext + Inhaltsverzeichnis.
  - Suche: Bragg, Bragg Gitter, "Bragg Reflexion", -Compton Bragg, Übergang, lambda,
    leere Suche, ein Zeichen. Trefferzahl, PDF-Seite und Abschnitt müssen stimmen.
  - Querverweise vorhanden und erreichbar (Bragg→Elektronenbeugung, Photoeffekt→h-Bestimmung).
  - Geräte: Handy 360/390/430 px hoch, 844×390 quer; Tablet 768/820/1024 px hoch/quer.
    Touch, kein Hover. Keine Überläufe, Tap ≥24 px, Kopfzeile verdeckt keine Sprungziele,
    Konsole sauber.
  Navigation nur so weit ändern, wie D6/D7 es verlangt.

Phase 5 – Verifikation (D8)
  python3 build/check_sources.py && python3 build/check_markdown.py && python3 build/check_physics.py
  cd build && ./build_all.sh && cd .. && python3 build/qa_pdf.py <alle PDFs>
  python3 build/make_pages.py --out /tmp/site && python3 build/test_pages.py
  - PDF-Text: keine kaputten Zeichen ("{,", "frac", "$", Soft-Hyphen-Artefakte).
  - Stichprobe: je Dokument drei zufällige Aussagen gegen gym-wst prüfen.
  - Build zweimal, byte-identisch.
  Erst wenn grün: committen, pushen, Deploy abwarten, live auf Handy + Tablet prüfen.

Phase 6 – Selbstüberprüfung (Pflicht, nicht optional)
  1. REVERT-TEST: Wäre es ohne diese Änderung für den Kurskollegen schlechter? Wenn nein:
     zurücknehmen.
  2. KURSKOLLEGEN-TEST: Situationen (a)/(b)/(c) nur mit der Seite durchgehen; Klickzahl,
     Zeit und Vollständigkeit notieren. Musst du googeln oder gym-wst öffnen, ist D7 offen.
  3. FALSIFIKATIONS-TEST: Versuche, deine eigene Aussage zu widerlegen (Einheit, Grenzfall,
     Widerspruch zu anderem Skript/gym-wst). Kannst du es nicht, sage WIE du geprüft hast.
  4. VERSTÄNDNIS-TEST: Abschnitt als Anfänger lesen, jede Hänge-stelle markieren und beheben.
  5. NEBENWIRKUNGS-TEST: Nummerierung, Querverweise, Suche, Seitenzahl, Index, Prüfbericht.
  6. EHRLICHKEITS-TEST: strikt trennen "geprüft" (gerechnet/getestet/Quelle gelesen) /
     "plausibel, ungeprüft" / "nicht geprüft". Ein grüner Test beweist nicht die Physik.
  7. NUTZEN-BILANZ, drei Sätze ohne Selbstlob: was ist objektiv besser, was ist nur anders
     (zurücknehmen), was fehlt noch.
  Wenn die Bilanz leer ist: sagen, dass sich nichts gelohnt hat.

AUSGABEFORMAT
1. Abdeckungsmatrix (D1) mit Summen.
2. Tabelle: Severity | Ort (datei:zeile/URL) | Befund | Beleg | Fix | verifiziert
3. "Inhaltlich geprüft": je Dokument eine Zeile.
4. "Geänderte Dateien".
5. "Tests" (Befehle + Ergebnis).
6. "Live geprüft" (Viewport, was genau).
7. "Selbstüberprüfung" (Phase 6) inkl. Klickzahl/Zeit im Kurskollegen-Test.
8. "Werkzeuge und Skills": was genutzt wurde (mit Ergebnis), was fehlte und wie du das
   kompensiert hast.
9. "Blockaden und Lernschritte": was du nicht konntest, was du dagegen unternommen hast,
   was daraus geworden ist, was offen bleibt.
10. "Fehlt noch": max. 3 Vorschläge, je Nutzen | Aufwand klein/mittel | warum. Nichts
   ungefragt einbauen.

STOPP-/MELDEREGELN
- Widerspruch gym-wst ↔ Skript: beide Stellen zitieren, Empfehlung, entscheiden lassen.
- Kapitel-Neubau nötig: erst Vorschlag + Aufwand, dann Freigabe.
- >10 Minuten ohne Fortschritt: Zwischenstand melden (probiert/gelernt/offen), an anderer
  Stelle weiterarbeiten; die Anforderung bleibt auf der Liste, bis sie erledigt oder
  ausdrücklich als offen gemeldet ist.
- Phase 6 zeigt keinen Lernnutzen: Änderung zurücknehmen, auch wenn sie schon gebaut ist.
- Ein benötigtes Werkzeug (Build, Browser, Quelle) fehlt: melden, nicht durch Behauptungen
  ersetzen. "Nicht geprüft" ist eine zulässige und erwartete Aussage.

START
Phase 0, dann Phase 1 für alle 7 Skripte (Matrix), dann Phase 1b + 2 für Skript 1
(Wellen/Interferenz) und Skript 3 (Elektronenwellen/Beugung) – dort stecken die meisten
Querbezüge (Bragg/Beugung).
Zeige zuerst Abdeckungsmatrix, Befundliste und Phase-1b-Selbstprüfung. Ändere noch nichts.
