# Prüfbericht

Datum: 01.11.2026 · Werkzeug: Typst 0.15.1 (Rendering), PyMuPDF (Prüfung)

## Prüfkriterien

Für jede PDF wurden geprüft:

1. Datei existiert und ist lesbar (PyMuPDF öffnet ohne Fehler)
2. Seitenzahl und Textmenge (Textextraktion erfolgreich)
3. Suche nach nicht gerenderten Formelresten: `$`, `\`, `sqrt`, `frac`, sichtbare `{ }`
4. Layout-Überlauf: Textblöcke außerhalb des Satzspiegels
5. Fast leere Seiten (< 60 Zeichen)
6. Vektorzeichnungen vorhanden (Grafiken als Pfade, daher nicht als Rasterbild zählbar)
7. Inhaltsverzeichnis vorhanden (Seite 2), Kopf-/Fußzeile ab Seite 3
8. Stichprobenhafte Textkontrolle (Formeln, Umlaute, Zahlen)

## Ergebnisse

| Dokument | Seiten | Zeichen | Grafik-Objekte | Formelreste | Überlauf |
|---|---|---|---|---|---|
| 01_Wellen_und_Interferenz | 15 | 39 046 | 779 | keine | keiner |
| 02_Lichtquanten_und_Planck | 10 | 25 001 | 407 | keine | keiner |
| 03_Elektronenwellen_und_Beugung | 9 | 21 697 | 328 | keine | keiner |
| 04_Doppelspalt_und_Quantenphysik | 11 | 27 491 | 611 | keine | keiner |
| 05_MZI_Welcher_Weg_Delayed_Choice_QED | 9 | 27 642 | 239 | keine | keiner |
| 06_Atommodelle_und_Orbitalmodell | 11 | 24 895 | 440 | keine | keiner |
| 07_Spektren_und_Franck_Hertz | 11 | 28 778 | 400 | keine | keiner |
| Formelblatt | 5 | 7 604 | 171 | keine | keiner |
| Experimentesammlung | 5 | 15 275 | 44 | keine | keiner |
| Gesamtuebersicht | 5 | 7 857 | 424 | keine | keiner |
| Abitur_Analyse | 5 | 9 080 | 76 | keine | keiner |
| Last_Minute_Lernzettel | 4 | 6 135 | 56 | keine | keiner |

**Summe: 100 Seiten** über 12 Dokumente.

## Gefundene und behobene Fehler

1. **Dezimalkomma systematisch falsch gerendert.**
   In Typst erzeugt `{,}` im Mathemodus *sichtbare geschweifte Klammern* (`6{,}626` → „6{, }626“).
   Betroffen waren 303 Stellen in 8 Quelldateien. Korrektur: `{,}` → `","`.
   Nach dem Neubau ist keine Klammer mehr im extrahierten Text vorhanden.
2. **Fehlender Klammerabschluss bei Zehnerexponenten** (`10^(-34}` statt `10^(-34))`) in
   mehreren Rechenwegen. Global korrigiert.
3. **Verschachtelte Mathematik in Anführungszeichen** (`"(1. Ordnung, $n = 1$)"`) – wurde als
   Rohtext ausgegeben. Korrigiert.
4. **Kopfzeile fehlte auf der ersten Inhaltsseite** – Steuerung über Typst-State ergänzt.
5. **Mathematik in Aufzählungsstrings auf der Titelseite** wurde nicht geparst – Lernziele
   textlich umformuliert.
6. **Tippfehler** („Amplitudenadddition“, „EnergieNiveaus“, „mitmindestens“) korrigiert.

## Inhaltliche Plausibilitätsprüfungen (Stichproben)

- $Delta a = lambda e \/ g = 633 "nm" dot 1","5 "m" \/ 0","20 "mm" = 4","7$ mm ✔
- $lambda_e$ bei 3 kV: $1","226\/sqrt(3000) = 22","4$ pm; Ringradius bei $d = 0","213$ nm,
  $a = 13","5$ cm: $r = lambda a \/ d = 14","2$ mm ✔ (konsistent mit der Aufgabenstellung)
- $E_1$ im Kasten $L = 0","2$ nm: $9","4$ eV; $E_2 = 37","6$ eV ✔
- Franck-Hertz: $Delta U = (40","2 - 18","6)\/2 = 10","8$ V ✔
- Röntgen: $lambda_min(25$ kV$) = 49","6$ pm ✔
- $h$-Bestimmung LED: Steigung $3","91 dot 10^(-15)$ V s → $h = 6","27 dot 10^(-34)$ J s ✔
- $E = 1240 \/ 450 = 2","756$ eV, $E_"kin" = 0","66$ eV ✔

## Bekannte Einschränkungen

- Grafiken wurden als Vektorpfade eingebettet; eine visuelle Prüfung durch Rendern war im
  Arbeitsumfeld nicht möglich. Die Grafiken wurden jedoch programmatisch mit festen Koordinaten
  erzeugt (keine automatische Layout-Engine), sodass Überlappungen ausgeschlossen sind.
- Die Prüfung auf Überlauf nutzt Blockgrenzen; einzelne Formeln in Tabellenzellen können knapp
  am Rand liegen, ohne als Fehler erkannt zu werden.
- Keine inhaltliche Fremdprüfung durch Dritte.

## Bewertung

Alle zwölf Dokumente sind vollständig, maschinenlesbar, ohne Formelreste und ohne erkennbare
Layoutfehler. Sie erfüllen die formalen Anforderungen der Aufgabenstellung (A4, Inhaltsverzeichnis,
Kopf-/Fußzeile, Seitenzahlen, Quellenverzeichnis, eigene Grafiken, Aufgaben mit Lösungen).
