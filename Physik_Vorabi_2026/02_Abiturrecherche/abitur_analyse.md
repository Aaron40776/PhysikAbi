# Abitur- und Vorabi-Analyse Physik (Niedersachsen, Jahrgang 2027)

Stand: 01.11.2026 · Datenbasis: siehe Abschnitt 1.

## 1. Datenbasis und Zugänglichkeit

| Quelle | Zugang | Ergebnis |
|---|---|---|
| IQB-Aufgabenpool Physik (2025/2026) | direkt (PDF) | **12 vollständige Aufgaben** heruntergeladen und ausgewertet (`iqb_aufgaben/`) |
| Niedersachsen, ZA-Archiv `za-aufgaben.nibis.de` | HTML-Formular mit Bot-Schutz | Formular-POST wird mit HTTP 302 auf `index.php` abgewiesen; **kein Zugriff** auf die PDF-Pakete. Als *nicht untersucht* gekennzeichnet. |
| Bildungsportal Niedersachsen (Zentralabitur 2027) | HTTP 403 | **nicht zugänglich** |
| Hinweise zur schriftlichen Abiturprüfung 2027, Fach Physik (Nds. KM, Juni 2024) | PDF über Schulswebsite | **vollständig ausgewertet** (Rahmen: 4 Aufgaben, 3 auswählen; eA-Varianten mit Experiment) |
| Kerncurriculum Physik 2022 (Auszüge auf physik.gym-wst.de) | direkt | **vollständig ausgewertet** (Kompetenzlisten gA/eA) |

Wichtig: Es wurden **keine** Aufgaben rekonstruiert, die nicht im Volltext vorlagen. Die
Häufigkeitsaussagen unten beziehen sich ausschließlich auf die 12 tatsächlich analysierten
Pool-Aufgaben.

## 2. Formaler Prüfungsrahmen (Abitur 2027)

Aus den fachbezogenen Hinweisen 2027:

- Grundlage: Bildungsstandards Physik (KMK 2020), konkretisiert durch KC Physik 2022, sowie der
  Erlass „Schülerexperimente in der schriftlichen Abiturprüfung auf erhöhtem Anforderungsniveau“.
- Es werden **vier Aufgaben** vorgelegt, von denen **drei** bearbeitet werden.
- Varianten: eA ohne Experiment; eA „mit Experimentieren – Elektrik“; eA „mit Experimentieren –
  Optik“ (jeweils eine Aufgabe mit durchzuführendem Experiment); gA ohne experimentelle Anteile.
- Festgelegte Experimentierkästen (für 2026): Optik und Atomphysik; Magnetismus – Elektrik –
  Elektronik (3B Scientific, Conatex).
- Hilfsmittel: WTR, Formelsammlung; fachpraktischer Anteil je Aufgabe ausgewiesen.

**Konsequenz für das Vorabi:** Der Aufbau „Materialien + mehrere Teilaufgaben mit Operatoren +
Punktangaben + Kontrollwerte“ ist der Normalfall. Reine Reproduktionsfragen sind selten; der
Schwerpunkt liegt auf *Begründen* und *Erklären*.

## 3. Untersuchte Aufgaben (Übersicht)

Vollständige Tabelle: `untersuchte_aufgaben.csv` (Semikolon-getrennt).

| Jahr | Niveau | Titel | Inhaltsbereich | fachpraktisch |
|---|---|---|---|---|
| 2025 | eA | 3D-Metalldruck mit Elektronenstrahlen | E/B-Felder | nein |
| 2025 | eA | Sicherheit von Deichen | E/B-Felder | nein |
| 2025 | eA | Elektroneninterferenz am Doppelspalt | Quantenobjekte | nein |
| 2025 | eA | Interferenzen bei Bluetooth-Signalen | Schwingungen/Wellen | nein |
| 2025 | eA | DECT-Telefon | Schwingungen/Wellen | nein |
| 2025 | gA | Der dynamische Lautsprecher | E/B-Felder | **ja** |
| 2025 | gA | Kapazitive Beschleunigungssensoren | E/B-Felder | nein |
| 2025 | gA | Elektroneninterferenz am Doppelspalt | Quantenobjekte | nein |
| 2025 | gA | Eigenschaften von Licht | Schwingungen/Wellen | **ja** |
| 2026 | eA | Blitzdetektor | Schwingungen/Wellen | **ja** |
| 2026 | gA | Der Elektrobus – Induktives Laden | E/B-Felder | **ja** |
| 2026 | gA | Elektronenstrahlen zur Härtung von Lacken | E/B-Felder | **ja** |

## 4. Auswertung

### 4.1 Verteilung der Inhaltsbereiche (n = 12)

| Inhaltsbereich | Anzahl | Anteil |
|---|---|---|
| Elektrische und magnetische Felder | 6 | 50 % |
| Schwingungen und Wellen | 4 | 33 % |
| Quantenobjekte | 2 | 17 % |
| Atomhülle | 0 | 0 % |

**Befund:** In den 12 vorliegenden Pool-Aufgaben kommt *Atomhülle* (Rutherford, Bohr, Spektren,
Franck-Hertz) **nicht** vor. Das ist eine Aussage über diese Stichprobe, keine Prognose. Da das
Kerncurriculum die Atomhülle verbindlich fordert (und die Schule sie unterrichtet), bleibt sie
prüfungsrelevant – sie ist im Vorabi-Skript 6 und 7 vollständig abgedeckt.

### 4.2 Operatoren (gezählt über alle 12 Aufgaben)

| Operator | Anzahl |
|---|---|
| Begründen Sie | 23 |
| Erklären Sie | 16 |
| Bestimmen Sie | 8 |
| Erläutern Sie | 7 |
| Beschreiben Sie | 7 |
| Berechnen Sie | 6 |
| Beurteilen Sie | 6 |
| Ermitteln Sie | 5 |
| Stellen Sie … dar | 4 |
| Skizzieren Sie | 3 |
| Zeigen Sie | 3 |
| Interpretieren Sie | 2 |
| je 1: Ordnen, Bewerten, Entscheiden, Diskutieren | 4 |

**Befund:** Argumentative Operatoren (Begründen/Erklären/Erläutern = 46 von 94 Nennungen, rund
49 %) dominieren deutlich vor reinem Rechnen (Berechnen = 6). Typisch ist die Kombination
„berechnen und dann beurteilen“.

### 4.3 Aufgabenformate, die sich wiederholen

1. **Kontext mit Materialien** (Zeitungsausschnitt, technische Beschreibung, Messreihe, Zitat) und
   daran anschließend 2–4 Teilaufgaben.
2. **Messdaten auswerten** (Tabelle, Diagramm, Kennlinie) mit anschließender *Beurteilung* der
   Modellannahmen.
3. **Kontrollwerte** in eckigen Klammern als Plausibilitätshilfe.
4. **Skizzen** verlangt (Feldlinien, Strahlengang, Energieschema, Schaltbild).
5. **Fachpraktischer Anteil** in 5 von 12 Aufgaben (Durchführung und Auswertung eines
   Schulexperiments beschreiben).
6. **Bewertungsaufgaben** mit Bezug zu Technik/Gesellschaft (Deichsicherheit, Telefonsysteme,
   E-Mobilität).

### 4.4 Benötigte mathematische Verfahren

- Prozent-/Verhältnisrechnungen, Einheitenumrechnung (eV ↔ J, nm ↔ m)
- Lineare Regression/Ausgleichsgerade, Steigungsdreieck
- Trigonometrie ($sin$, $tan$, $arctan$) für Interferenz- und Brechungsaufgaben
- Exponentielles Abklingen (gedämpfte Schwingung, Entladen)
- Abschätzungen mit Größenordnungen („Beurteilen Sie mithilfe einer Rechnung …“)

### 4.5 Bezug zu den Kompetenzlisten der Schule

Die auf `physik.gym-wst.de` veröffentlichten Kerncurriculum-Auszüge (gA/eA) decken die
Aufgabenformate ab. Besonders häufig adressiert:

- „Ich kann … Beobachtungen mithilfe optischer Analogieversuche deuten“ (Elektronenbeugung)
- „Ich kann die stochastische Deutung … übertragen“ (Doppelspalt mit einzelnen Quanten)
- „Ich kann … durch Auswertung von Messwerten … bestätigen“ (de Broglie, h-Bestimmung)
- „Ich kann … Beurteilen/Bewerten“ (technische Kontexte)

## 5. Empfehlungen für die Vorabi-Vorbereitung

1. **Rechenroutinen** der Wellenoptik (Doppelspalt, Gitter, Bragg) sicher beherrschen – sie
   erscheinen in 4 von 12 Aufgaben.
2. **Quantenobjekte**: de-Broglie-Rechnung plus *stochastische Deutung* und *Komplementarität*
   kombiniert üben (so wie in der IQB-Aufgabe „Elektroneninterferenz am Doppelspalt“).
3. **Begründen lernen**: Zu jeder Rechnung eine physikalische Begründung in einem Satz
   formulieren („weil …“), da dieser Operator am häufigsten vorkommt.
4. **Experimente beschreiben** können: Aufbau, Durchführung, Beobachtung, Auswertung, Fehler –
   wegen der fachpraktischen Anteile.
5. **Atomhülle nicht vernachlässigen**, obwohl in der Stichprobe nicht vertreten: KC-Pflicht.

## 6. Grenzen dieser Analyse

- Nur 12 Aufgaben (veröffentlichter Pool 2025/2026), keine vollständigen Jahrgänge.
- Das Nds. ZA-Archiv war technisch nicht zugänglich; ältere Landesaufgaben konnten nicht geprüft
  werden.
- Keine Aussage über die tatsächliche Verteilung im Vorabi 2026 oder Abitur 2027 möglich.
