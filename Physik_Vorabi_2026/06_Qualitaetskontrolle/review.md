# Full Review – 02.11.2026

Systematische Durchsicht des gesamten Projekts: Bestand, Themenabdeckung, Zahlen,
Layout, Abbildungen, Reproduzierbarkeit. Alles hier Genannte wurde geprüft, nicht geschätzt.

---

## 1. Bestandsaufnahme: Was ist im Repo – und wofür?

| Ordner | Inhalt | Größe | Bewertung |
|---|---|---|---|
| `03_Lernskripte` | 7 Themen-PDFs | 2,0 MB | **Lernmaterial – das brauchst du wirklich** |
| `04_Zusatzmaterial` | 6 PDFs inkl. Übungsheft | 1,0 MB | **Lernmaterial** |
| `05_Grafiken` | 21 SVGs, automatisch aus `build/fig` kopiert | 0,8 MB | Belegmaterial, im PDF ohnehin enthalten |
| `02_Abiturrecherche` | 12 IQB-Aufgaben (PDF + Text), Analyse, CSV | 5,7 MB | **Belegmaterial** – wichtig für die Argumentation, nicht zum Lernen |
| `01_Schulwebsite` | 113 gespiegelte Unterrichtsseiten | 2,1 MB | **Belegmaterial** – Quellenbasis |
| `00_Projektverwaltung` | README, PROGRESS, Quellen, Themenstatus | 40 KB | Projektsteuerung |
| `06_Qualitaetskontrolle` | Prüfbericht, dieses Review | 20 KB | Nachweis der Prüfung |
| `build` | Typst-Quellen, Figuren-Skripte, Build-Skript | 1,1 MB | **Nötig, wenn du etwas ändern willst** |

Gesamt: 13 MB, 113 Seiten PDF.

### Ehrliche Einordnung

Von den 13 MB sind rund **3 MB das, was du zum Lernen brauchst** (die 13 PDFs).
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
| 1 Wellen/Interferenz | vollständig – **einzige Lücke: „Resonanzfrequenz“ fehlte als Begriff** (nur „Resonanz“) → **jetzt ergänzt** mit Definition, $f_R approx f_0 = 1\/(2 pi) sqrt(D\/m)$ und Hinweis auf die Verschiebung bei starker Dämpfung |
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
| $h = 6","626 dot 10^(-34)$ J s | 21× | einheitlich |
| $c = 2","998 dot 10^8$ m/s | 7× | einheitlich |
| $e = 1","602 dot 10^(-19)$ C | 19× | einheitlich |
| $h c = 1240$ eV nm | 35× | einheitlich |
| $lambda_e = 1","226$ nm/√V | 14× | einheitlich |
| $13","6$ eV (H-Grundzustand) | 27× | einheitlich |

Keine widersprüchlichen Rundungen, keine Mischung aus 6,63 und 6,626.

### d) Layout (geprüft, sauber)

- 0 Textüberläufe über den Satzspiegel (alle 113 Seiten)
- 0 Abbildungen ohne Unterschrift am Seitenende
- 0 nicht gerenderte Formeln (`{`, `}`, `$`, `\` im extrahierten Text)
- kein Text, der aus Grafiken herausragt (Bounding-Box-Prüfung)

---

## 4. Was inhaltlich noch fehlt (bewusst, nicht vergessen)

| Lücke | Warum | Empfehlung |
|---|---|---|
| Atomkern/Radioaktivität | nicht in deiner Themenliste, aber im KC Jg. 13 | nur lernen, wenn im Unterricht behandelt |
| Polarisation, Comptoneffekt | in deinem Stoffplan nicht genannt | Skript 2 hat eine Kurzerwähnung, keine Vertiefung |
| Elektrische/magnetische Felder | 6 von 12 IQB-Aufgaben 2025/26 sind E/B-Feld-Aufgaben! | **größtes Risiko**: falls dein Vorabi auch Felder abfragt, fehlt dafür ein Skript |
| Landesaufgaben 2016–2024 | NIBIS-Archiv technisch blockiert | nicht rekonstruierbar |

Der Punkt mit den Feldern ist der wichtigste dieser Review: Die IQB-Auswertung zeigt,
dass Felder der häufigste Aufgabenblock im Pool sind. Deine Themenliste enthält sie
nicht – wenn dein Kurs sie im Vorabi braucht, ist das eine echte Lücke.

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

Die einzige inhaltliche Unsicherheit ist nicht Qualität, sondern **Umfang**: ob
Felder/Atomkern im Vorabi vorkommen. Das kann ich nicht aus den Quellen ableiten –
das weißt nur du aus dem Unterricht.
