# Full Review – 02.11.2026

Systematische Durchsicht des gesamten Projekts: Bestand, Themenabdeckung, Zahlen,
Layout, Abbildungen, Reproduzierbarkeit. Alles hier Genannte wurde geprüft, nicht geschätzt.

---

## 1. Bestandsaufnahme: Was ist im Repo – und wofür?

| Ordner | Inhalt | Größe | Bewertung |
|---|---|---|---|
| `03_Lernskripte` | 7 Themen-PDFs | 1,2 MB | **Lernmaterial – das brauchst du wirklich** |
| `04_Zusatzmaterial` | 8 PDFs inkl. Übungsheft | 1,2 MB | **Lernmaterial** |
| `05_Grafiken` | 27 SVGs, automatisch aus `build/fig` kopiert | 0,8 MB | Belegmaterial, im PDF ohnehin enthalten |
| `02_Abiturrecherche` | 12 IQB-Aufgaben (PDF + Text), Analyse, CSV | 5,7 MB | **Belegmaterial** – wichtig für die Argumentation, nicht zum Lernen |
| `01_Schulwebsite` | 113 gespiegelte Unterrichtsseiten | 2,1 MB | **Belegmaterial** – Quellenbasis |
| `00_Projektverwaltung` | README, PROGRESS, Quellen, Themenstatus | 40 KB | Projektsteuerung |
| `06_Qualitaetskontrolle` | Prüfbericht, dieses Review | 20 KB | Nachweis der Prüfung |
| `build` | Typst-Quellen, Figuren-Skripte, Build-Skript | 1,1 MB | **Nötig, wenn du etwas ändern willst** |

Gesamt: 12 MB, 102 Seiten PDF in 16 Dokumenten.

### Ehrliche Einordnung

Von den 12 MB sind rund **3 MB das, was du zum Lernen brauchst** (die 16 PDFs).
Der Rest ist Handwerkszeug und Beweismaterial:

- `01_Schulwebsite` ist kein Lernmaterial – es ist der Nachweis, dass die Inhalte aus
  deinem Unterricht stammen. Für das Lernen sind die Skripte destilliert daraus.
  Die 113 Seiten enthalten auch Themen, die **nicht** zu deiner Vorabi-Liste gehören:
  Kinematik (4), Dynamik (3), Kosmologie (9), elektrisches Feld (6), Magnetfeld (7),
  Atomkern (6) – zusammen 35 Seiten.
- `02_Abiturrecherche/iqb_aufgaben` enthält jede Aufgabe doppelt (PDF + extrahierter
  Text). Die `.txt`-Dateien brauchst du nur, wenn du schnell durchsuchen willst.
- `05_Grafiken` war bis heute eine **veraltete Kopie** der Grafiken (siehe Abschnitt 3).

Wenn du das Repo aufräumen willst: `01_Schulwebsite`, `02_Abiturrecherche/iqb_aufgaben/*.txt`
und `build/` kannst du löschen, ohne dass dir Lernmaterial fehlt. Ich habe es **nicht**
gelöscht – es ist der Beleg für die Quellenarbeit.

---

## 2. Themenabdeckung gegen deine Liste

Alle 7 Skripte wurden gegen die von dir vorgegebenen Stichworte geprüft
(Volltextsuche im erzeugten PDF, nicht in den Quellen).

| Skript | Ergebnis |
|---|---|
| 1 Wellen/Interferenz | vollständig – **einzige Lücke: „Resonanzfrequenz“ fehlte als Begriff** (nur „Resonanz“) → **jetzt ergänzt** mit Definition, $f_R \approx f_0 = \frac{1}{2\pi}\sqrt{D/m}$ und Hinweis auf die Verschiebung bei starker Dämpfung |
| 2 Lichtquanten | vollständig |
| 3 Elektronenwellen | vollständig (inkl. Bragg, Davisson-Germer, Röhrentypen) |
| 4 Doppelspalt/Quanten | vollständig (inkl. Komplementarität, Welcher-Weg, Wellenfunktion) |
| 5 MZI/QED | vollständig (inkl. Quantenradierer, Delayed Choice) |
| 6 Atommodelle | vollständig (inkl. Elektronenkonfiguration) |
| 7 Spektren/FH | vollständig (inkl. Bremsspektrum, Kontaktspannung) |

**Struktur jedes Skripts geprüft:** Einleitung, Theorie, Experimente (Aufbau/Durchführung/
Beobachtung/Erklärung/Bedeutung), Herleitungen, Grafiken, 3 Abituraufgaben mit Lösung,
typische Fehler, Wiederholung, Quellen – in allen 7 vorhanden, keine Ausnahme.
Keine Platzhalter, kein „TODO“, keine Textreste.

**Aufgabenumfang:** 3 je Skript (21) + 20 im Übungsheft = **41 Aufgaben mit Lösung**.

---

## 3. Gefundene Fehler und was daraus wurde

### a) Veraltete Grafiken im Repo (behoben)

`05_Grafiken/` enthielt noch die **kaputten Originale** (chaotische MZI-Strahlen,
kollidierende Energieniveau-Labels). Wer dort nachschaute, sah den alten Murks.
→ Ordner wird jetzt bei jedem Build aus `build/fig` überschrieben, doppelte Skripte
entfernt, README mit Warnung „nicht hier bearbeiten“ ergänzt.

### b) PDFs waren nicht reproduzierbar (behoben)

Jeder Build erzeugte andere Bytes (Zeitstempel), also bei jedem Lauf 13 geänderte
Binärdateien. Mit `SOURCE_DATE_EPOCH` im Build-Skript ist der Build jetzt
**bit-identisch** (geprüft: zweimal bauen → gleiche MD5-Summe).

### c) Zahlen und Konstanten (geprüft, sauber)

| Konstante | Vorkommen | geprüft |
|---|---|---|
| $h = 6{,}626 \cdot 10^{-34}$ J s | 21× | einheitlich |
| $c = 2{,}998 \cdot 10^8$ m/s | 7× | einheitlich |
| $e = 1{,}602 \cdot 10^{-19}$ C | 19× | einheitlich |
| $h c = 1240$ eV nm | 35× | einheitlich |
| $\lambda_e = 1{,}226$ nm/√V | 14× | einheitlich |
| $13{,}6$ eV (H-Grundzustand) | 27× | einheitlich |

Keine widersprüchlichen Rundungen, keine Mischung aus 6,63 und 6,626.

### d) Layout (geprüft, sauber)

- 0 Textüberläufe über den Satzspiegel (alle 102 Seiten)
- 0 Abbildungen ohne Unterschrift am Seitenende
- 0 nicht gerenderte Formeln (`{`, `}`, `$`, `\` im extrahierten Text)
- kein Text, der aus Grafiken herausragt (Bounding-Box-Prüfung)

---

## 4. Was inhaltlich noch fehlt (bewusst, nicht vergessen)

| Lücke | Warum | Empfehlung |
|---|---|---|
| Atomkern/Radioaktivität | nicht in deiner Themenliste, aber im KC Jg. 13 | nur lernen, wenn im Unterricht behandelt |
| Polarisation, Comptoneffekt | in deinem Stoffplan nicht genannt | Skript 2 hat eine Kurzerwähnung, keine Vertiefung |
| Elektrische/magnetische Felder | **laut Rückmeldung nicht prüfungsrelevant** für dieses Vorabi | abgehakt – siehe Kasten unten |
| Landesaufgaben 2016–2024 | NIBIS-Archiv technisch blockiert | nicht rekonstruierbar |

**Zu den Feldern:** Die IQB-Auswertung zeigt 6 von 12 Aufgaben aus dem Feldbereich – das ist
viel. Auf Rückfrage ist das Thema für dieses Vorabi aber nicht prüfungsrelevant. Deshalb kein
eigenes Skript, sondern nur die Formeln, die *innerhalb* von Quantenaufgaben gebraucht werden:
Skript 3 hat dafür den Kasten „Querverbindung – Feldformeln“ (E = U/d, a = eE/m, Querablenkung,
Lorentzradius, Wien-Filter). Das reicht für Aufgaben, in denen ein Elektronenstrahl abgelenkt
oder fokussiert wird, ohne dass eine Feldaufgabe daraus werden muss.

---

## 5. Offene technische Punkte

- `build/check_figs.py` prüft Textkollisionen, aber keine **inhaltliche** Richtigkeit
  einer Grafik (ob eine Kurve den richtigen Verlauf hat, kann nur ein Mensch beurteilen).
- `build/qa_pdf.py` zählt Seiten und Zeichen; es erkennt keine inhaltlich falschen Aussagen.
- Die Schulwebsite-Bilder (Screenshots) sind **nicht** eingebunden (fremdes Material,
  Bedienleisten im Bild). Auf Wunsch austauschbar.

---

## 6. Fazit

Fachlich und formal ist der Stand prüfbar sauber: Abdeckung vollständig, Struktur
einheitlich, Zahlen konsistent, Layout ohne Befund, Build reproduzierbar.
Zwei echte Fehler wurden in dieser Runde gefunden und behoben (veraltete Grafiken,
nicht reproduzierbarer Build), einer inhaltlich geschlossen (Resonanzfrequenz).

Felder sind für dieses Vorabi abgehakt; die nötigen Formeln stehen als Querverbindung in
Skript 3. Offen bleibt nur der Atomkern (Jg. 13) – er war nicht Teil der Themenliste und ist
nur relevant, falls er im Unterricht noch behandelt wird.

---

## Nachtrag 3 – Konstanten und Regression

**Konstanten auf CODATA-Werte geprüft.** $h$, $c$, $e$, $m_e$, $m_p$, $k$, $r_1$, $R$ standen
bereits in der genauen Form (6,626 / 2,998 / 1,602 / 9,109 / 1,673 / 8,99 / 5,29 / 1,097).
Einziger gerundeter Wert war $h c = 1240$ eV nm. Jetzt überall $h c = 1239{,}8$ eV nm mit
ausdrücklichem Hinweis, dass 1240 die gerundete Rechenform ist (Abweichung 0,02 %, bei drei
gültigen Ziffern folgenlos). Geändert: Formelblatt, Last-Minute-Zettel, Skript 2 (Herleitung).

**Neues Dokument `04_Zusatzmaterial/Regression_und_Auswertung.pdf` (7 Seiten).**
Deckt das Auswertungshandwerk ab, das in Prüfungen vorausgesetzt wird:
- Kette Messgröße → Diagramm → Ausgleichsgerade → Steigung mit Einheit → gesuchte Größe
- Protokoll in acht Schritten (Tabelle: was tun / was im Heft stehen muss)
- Zuordnung Auftragung → Gesetz → Bedeutung der Steigung (9 Fälle, u. a. $U_B$ über $f$,
  $a_n$ über $n$, $T^2$ über $m$, $r^2$ über $1/U$, $\ln s$ über $t$)
- Steigung, Achsenabschnitt, $R^2$, Residuen – was sie aussagen und was nicht (Abbildung mit
  Ausgleichsgerade und Residuenplot)
- vier vollständig durchgerechnete Beispiele (Fotozelle, Doppelspalt, Franck-Hertz, Dämpfung)
- Fehlertabelle, zwei Übungsaufgaben mit Lösung

Alle Regressionswerte im Dokument wurden mit `numpy.polyfit` berechnet und gegengeprüft:
Fotozelle $m = 4{,}11 \cdot 10^{-15}$ V s, $b = -1{,}88$ V, $R^2 = 0{,}99997$;
Doppelspalt $m = 5{,}062$ mm, $\lambda = 633$ nm; Franck-Hertz $m = 4{,}90$ V, $b = 5{,}50$ V;
Dämpfung $k = 0{,}200$ 1/s; Übungsaufgaben $D = 9{,}9$ N/m bzw. $d = 0{,}212$ nm.
