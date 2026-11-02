# Prüfbericht – inhaltliche Kontrolle

Datum: 01.11.2026 · Prüfer: systematische Dokumentprüfung (Quelltext + PDF)
Gegenstand: 7 Lernskripte, 10 Zusatzdokumente, Projektverwaltung (`00_…`), Abiturrecherche (`02_…`)
Aktueller Nachtrag (01.11.2026): 10 Zusatzdokumente, 17 PDFs, 112 Seiten, 21.751 Wörter, 104 Glossarbegriffe;
Abbildungen, Glossar und Darkmode in **Abschnitt 15**.
Werkzeuge: Typst 0.15.1 (Build), PyMuPDF 2.0 (Text-/Layout-/Pfadanalyse), `build/qa_pdf.py`

**Abgrenzung.** Die rein technische Prüfung (Formelreste, Dezimalkomma, Textüberläufe) wurde am
01.11.2026 durchgeführt und steht unverändert in **Anhang A**; die Abbildungsprüfung vom 02.11. in
**Anhang B**. Beides wird hier **nicht wiederholt**. Dieser Bericht prüft Inhalt: Physik,
Didaktik, Zahlen, Abbildungsaussagen, Quellen, Redundanz.

---

## 1. Kurzurteil

Die 15 Dokumente sind formal sauber gebaut (0 Textüberläufe, 0 Formelreste, alle 22 Grafiken
eingebunden) und in der Mehrzahl fachlich korrekt; die Straffung hat den Umfang halbiert, ohne
den Stoff zu verlieren. Das größte Problem sind **falsche oder fehlende Bezüge zwischen Text und
Abbildung**: vier Grafiken zeigen etwas anderes, als die Bildunterschrift behauptet
(`photoeffekt_fE` ist sogar leer, `franckhertz` zeigt 11 V statt 4,9 V), und **keine** der 26
Abbildungen wird im Fließtext gedeutet. Die größte Stärke ist die konsequente Rechenkultur: alle
18 Referenzwerte der Prüfliste stimmen bis auf eine 1,2-%-Rundung, und jede Aufgabe hat einen
nachvollziehbaren Lösungsweg.

---

## 2. Übersicht

| Dokument | Seiten | Wörter | Note | P1 | P2 | P3 | Kürzung (S.) | Ergänzung (Sätze) |
|---|---|---|---|---|---|---|---|---|
| 01 Wellen und Interferenz | 10 | 3 278 | A | 1 | 3 | 2 | 0,5 | 0 |
| 02 Lichtquanten und Planck | 6 | 1 980 | B | 2 | 2 | 2 | 0,3 | 0 |
| 03 Elektronenwellen und Beugung | 7 | 1 829 | A | 0 | 2 | 2 | 0,2 | 0 |
| 04 Doppelspalt und Quantenphysik | 6 | 1 705 | A | 0 | 3 | 1 | 0,3 | 0 |
| 05 MZI / Welcher Weg / QED | 6 | 1 898 | A | 0 | 2 | 1 | 0,2 | 0 |
| 06 Atommodelle und Orbitalmodell | 7 | 1 751 | B | 1 | 2 | 1 | 0,3 | 0 |
| 07 Spektren und Franck-Hertz | 6 | 1 842 | B | 3 | 2 | 2 | 0,2 | 0 |
| Formelblatt | 5 | 1 731 | A | 0 | 3 | 2 | 0,5 | 0 |
| Experimentesammlung | 5 | 3 532 | B | 0 | 2 | 1 | 1,0 | 0 |
| Gesamtübersicht | 5 | 1 719 | A | 0 | 1 | 1 | 0,5 | 0 |
| Abitur-Analyse | 5 | 1 831 | B | 1 | 2 | 1 | 0,5 | 0 |
| Last-Minute-Lernzettel | 4 | 1 358 | B | 0 | 2 | 2 | 0 | 0 |
| Übungsheft (20 Aufgaben) | 13 | 6 624 | B | 4 | 2 | 2 | 0 | 0 |
| Regression und Auswertung | 7 | 2 770 | B | 1 | 2 | 1 | 0,5 | 0 |
| Lernfahrplan | 4 | 1 107 | B | 2 | 1 | 1 | 1,0 | 0 |
| **Summe** | **96** | **35 080** | | **15** | **31** | **22** | **≈5,5** | **0** |

Seiten/Wörter aus den gebauten PDFs (`get_text()`), nicht aus den Quellen. Stand nach der
P2-Umsetzung vom 01.11. (Abschnitt 11); die P1/P2/P3-Zahlen sind die der Erstprüfung.
Noten: A = ohne Befund, B = Kleinigkeiten, C = mehrere inhaltliche Mängel, D = nicht
gebrauchsfähig, bis die P1 behoben sind.

---

## 3. Befundliste

Format: `P1|P2|P3` → Datei:Zeile → Befund → Beleg → Maßnahme.
P1 = physikalisch falsch oder unlesbar · P2 = didaktisch schwach/inkonsistent · P3 = Stil/Kosmetik.

### 3.1 Skript 1 – Wellen und Interferenz (`build/src/01_wellen.typ`, 9 S.)

Struktur (A–I): Kenngrößen → Zeiger → Dämpfung/Resonanz → Welle → stehende Welle → Doppelspalt →
Gitter/Einzelspalt → Bragg → EM-Welle → Experiment → Aufgaben → Fehler → Wiederholung. Ein
phänomenologischer Einstieg fehlt; die Tabelle „Kenngrößen“ tritt an seine Stelle. Zwei Aufgaben
(10 + 10 P.), Mischung Rechnung/Begründung ist gegeben.

- **P1** → `01_wellen.typ:263` und `01_wellen.typ:285` → *Kohärenz wird verwendet, aber nirgends
  definiert; das Nachbardokument verweist ausdrücklich auf eine Definition in Skript 1.* →
  Beleg: „nur bei Kohärenz: feste Phasenbeziehung, gleiche Frequenz“ (263), „warum Kohärenz nötig
  ist“ (285); `f3_uebersicht.typ:93`: „Die *Kohärenz* (Skript 1) ist Voraussetzung für alle
  Interferenzexperimente“. → *Maßnahme: Definitionskasten „Kohärenz“ in Abschnitt 2 einfügen
  (2 Sätze, Inhalt = die bereits in der Fehlertabelle genannte Bedingung).*
- **P2** → `01_wellen.typ:19-43` → *Der Abschnitt „Kenngrößen“ springt von der Tabelle in die
  Wellengleichung; der Unterschied zwischen Auslenkung, Schnelle und Wellengeschwindigkeit wird
  erst vier Abschnitte später erklärt.* → Beleg: „$c$ ist die *Phasengeschwindigkeit*, nicht die
  Geschwindigkeit der Teilchen“ (Z. 91 f.). → *Maßnahme: den Satz nach Abschnitt 1 ziehen
  (Verschiebung, kein Umbau).*
- **P2** → `01_wellen.typ:40, 54, 113, 127, 144, 167, 179, 191` → *Alle acht Grafiken haben eine
  Bildunterschrift, aber keine wird im Fließtext erwähnt oder gedeutet (0 Treffer für
  „Abbildung“/„Figur“ in allen 15 Quelldateien).* → Beleg: „Abbildung 1: Momentaufnahme zu zwei
  Zeiten …“ (PDF S. 3), im Text davor/danach kein Bezug. → *Maßnahme: je ein deutender Satz
  („Abb. 1 zeigt, dass …“); 8 Sätze.*
- **P2** → `01_wellen.typ:148-170` → *Der Einzelspalt erscheint als Unterabschnitt von „Gitter und
  Einzelspalt“, obwohl die Einzelspaltbreite $b$ in keiner Aufgabe vorkommt; Abituraufgabe 2 prüft
  nur das Gitter.* → Beleg: „Beim Einzelspalt (Breite $b$) interferieren Elementarwellen *eines*
  Spalts“ (Z. 157 f.). → *Maßnahme: eine Aufgabe mit Einzelspalt oder Verweis auf Übungsheft A4.*
- **P3** → `01_wellen.typ:179-181` → *Symbolwechsel: Text und Formel nutzen $\theta$, die Grafik
  beschriftet mit $\alpha$.* → Beleg: „$2 d \sin(\theta) = n \lambda$“ (179) vs. Grafiktext
  `d·sin α` (`fig/bragg.svg`). → *Maßnahme: Grafikbeschriftung oder Formel vereinheitlichen.*
- **P3** → `01_wellen.typ:246` → *Lösungstext nutzt „0,632“ ohne Symbolbezug.* → Beleg:
  „$\frac{2{,}00 \cdot 10^{-6}\,\text{m} \cdot 0{,}632}{2}$“ → *Maßnahme: „$\sin \alpha_2 = 0,632$“
  davorsetzen.*

### 3.2 Skript 2 – Lichtquanten und Planck (`02_lichtquanten.typ`, 6 S.)

- **P1** → `02_lichtquanten.typ:51-55` + `build/make_figures.py:176-181` → *Die Grafik
  `photoeffekt_fE.svg` ist leer: alle drei Kurven liegen auf $E=0$, weil der Faktor 1000 zu viel
  ist ($4,1357 f/1000$ bei $f$ in $10^14$ Hz). Die Bildunterschrift behauptet zusätzlich eine
  Gerade durch den Ursprung, was für $E_\text{kin,max}$ falsch ist.* → Beleg Quelltext:
  „`E = 4.1357*f/1000 - Wa`“ (make_figures.py:179); Beleg SVG: die drei Datenpfade lauten
  `M 32.928359 173.52 L 345.408359 173.52 L 345.408359 173.52` – eine Waagerechte auf der
  Nulllinie; Unterschrift: „Energie eines Photons über der Frequenz: Gerade durch den Ursprung,
  Steigung $h$.“ (Z. 53 f.). → *Maßnahme: Faktor auf $4,1357 f/10$ korrigieren, Grafik neu
  erzeugen, Unterschrift auf „$E_\text{kin,max}$ über $f$: Gerade mit Steigung $h$, Nullstelle bei
  $f_G$“ umstellen.*
- **P1** → `02_lichtquanten.typ:83-87` → *Bildunterschrift beschreibt einen Versuchsaufbau
  (Gegenfeld), die Grafik zeigt aber eine LED-Messreihe $U_S(f)$.* → Beleg: „Gegenfeldmethode:
  Zwischen Kathode und Anode liegt eine Bremsspannung; erst ab $e U_B = E_\text{kin,max}$ fließt kein
  Strom mehr.“ vs. Grafikachsen „Frequenz f in 10^14 Hz“ / „Spannung U_S in V“
  (`fig/led_hbestimmung.svg`, `make_figures.py:194`). → *Maßnahme: Unterschrift auf die
  LED-Methode umschreiben (Steigung $h/e$).*
- **P2** → `02_lichtquanten.typ:52, 84` → *Keine der beiden Grafiken wird im Text gedeutet; die
  $f$-$E$-Grafik ist die einzige Stelle, an der die Steigung $h$ visuell begründet würde.* →
  Beleg: nach der Abbildung folgt direkt „= Der äußere Photoeffekt“ (Z. 57). → *Maßnahme: zwei
  deutende Sätze.*
- **P2** → `02_lichtquanten.typ:119-124` → *Die LED-Methode steht als „Experiment“ ohne
  Fehlerdiskussion der Steigung; die zugehörige Grafik (Z. 84) zeigt vier Punkte, deren Ausgleich
  $h$ um 6 % zu groß ergibt (Steigung 4,40 statt 4,14 · 10⁻¹⁵ V s).* → Beleg: Daten
  `f = [4.62, 5.10, 5.49, 5.83]e14`, `U = [1.90, 2.10, 2.28, 2.43]`
  (`make_figures.py:186-187`). → *Maßnahme: entweder Punkte auf $h$ exakt ziehen oder in der
  Unterschrift „schematisch“ schreiben.*
- **P3** → `02_lichtquanten.typ:133` → *Rundung außerhalb der 1-%-Toleranz.* → Beleg: „Bei
  $U_B = 35$ kV folgt $\lambda_{\min} = 35$ pm.“ – exakt 1239,8/35 000 nm = **35,4 pm** (1,2 %). →
  *Maßnahme: „35,4 pm“.*
- **P3** → `02_lichtquanten.typ:53-54` → *Eine Unterschrift mischt zwei Aussagen (Steigung $h$ und
  Rechenform $h c/\lambda$).* → Beleg: „… Steigung $h$. Bei $\lambda$ in nm ist $h c/\lambda$ die
  praktische Form.“ → *Maßnahme: zweiten Satz streichen (steht in Abschnitt 2).*

### 3.3 Skript 3 – Elektronenwellen und Beugung (`03_elektronenwellen.typ`, 6 S.)

- **P2** → `03_elektronenwellen.typ:52-56, 85-88` → *Beide Grafiken ohne Textbezug; die
  Bragg-Grafik ist identisch mit der aus Skript 1 und wird hier nicht neu gedeutet.* → Beleg:
  „Abbildung 2: Bragg-Bedingung: Die zweite Netzebene liefert den Zusatzweg $2 d \sin(\theta)$.“,
  im Text kein Verweis. → *Maßnahme: ein Satz „Abb. 2 macht die Herleitung oben anschaulich“.*
- **P2** → `03_elektronenwellen.typ:90-104` → *Die Abgrenzung Strahlröhre/Beugungsröhre steht nur
  als Tabelle; der Merksatz wiederholt sie, ohne den physikalischen Grund (Ladungsträger vs.
  Welle) zu nennen.* → Beleg: „Nur die Beugungsröhre zeigt Interferenz.“ (Z. 102). →
  *Maßnahme: Halbsatz „weil nur dort die Wellenlänge in der Größenordnung der
  Netzebenenabstände liegt“.*
- **P3** → `03_elektronenwellen.typ:165` → *Vier Nachkommastellen bei drei Messpunkten.* →
  Beleg: „Steigung $M = 0{,}6086$ m²V“. → *Maßnahme: „0,61 m²V“.*
- **P3** → `03_elektronenwellen.typ:95-98` → *Tabellenzelle „Ablenkplatten, Leuchtschirm; kein
  Beugungsbild“ steht in der Spalte „Kennzeichen“ und beginnt mit einem Bauteil.* → Beleg:
  Z. 96. → *Maßnahme: „Leuchtschirm statt Folie; kein Beugungsbild“.*

### 3.4 Skript 4 – Doppelspalt und Quantenphysik (`04_doppelspalt.typ`, 7 S.)

- **P2** → `04_doppelspalt.typ:93` gegen `f1_formelblatt.typ:131` und `f4_lastminute.typ:30, 47`
  → *Die Unbestimmtheitsrelation steht in zwei Fassungen: $h/(4 \pi)$ (Skript 4, Lernfahrplan)
  und $\geq h$ (Formelblatt, Lernzettel).* → Beleg: „$\Delta x \cdot \Delta p \geq \frac{h}{4 \pi}$“ vs.
  „$\Delta x \cdot \Delta p_x \geq h$ … Schulnotation“. → *Maßnahme: eine Fassung wählen; die
  $h$-Form als „übliche Schulabschätzung“ kennzeichnen und die $h/(4 \pi)$-Form als exakte
  Schranke.*
- **P2** → `04_doppelspalt.typ:95-105` → *Zwei Grafiken hintereinander, keine im Text erwähnt;
  die Unbestimmtheitsgrafik zeigt Beugungsbilder, die Unterschrift spricht von einem Wellenpaket.*
  → Beleg: „Wellenpaket: Je schmaler der Ort, desto breiter die Impulsverteilung.“ vs.
  Achsenbeschriftung „Ort auf dem Schirm in mm“ / „Intensität“ (`fig/unbestimmtheit.svg`). →
  *Maßnahme: Unterschrift auf „Beugungsbild eines schmalen und eines breiten Spalts“ umstellen
  oder die neuere Fassung aus `redraw_figs.py:180-201` verwenden.*
- **P2** → `04_doppelspalt.typ:128-130` → *Zahlenbehauptung ohne Herleitung.* → Beleg: „Bei 100
  Treffern verteilen sich im Mittel etwa 5 auf ein Maximum – zu wenig für ein erkennbares Bild.“
  – die Zahl 5 hängt vom Verhältnis Streifenbreite/Ausdehnung ab und ist nicht belegt. →
  *Maßnahme: Zahl streichen, qualitativ argumentieren.*
- **P3** → `04_doppelspalt.typ:59` → *Normierungsfaktor $1/\sqrt{2}$ ohne Begründung, obwohl der
  Doppelspalt vorher mit $E_1 + E_2$ beschrieben wurde.* → Beleg:
  „$\psi = \frac{1}{\sqrt{2}}(\psi_1 + \psi_2)$“. → *Maßnahme: „gleiche Amplituden“ ergänzen.*

### 3.5 Skript 5 – MZI / Delayed Choice / QED (`05_mzi.typ`, 6 S.)

- **P2** → `05_mzi.typ:42-52` gegen `f1_formelblatt.typ:133` und `f6_uebungen.typ:541` →
  *Die Zuordnung Detektor → Formel widerspricht sich: Skript 5 gibt D1 $\sin^2$, Formelblatt und
  Übungsheft geben D1 $\cos^2$.* → Beleg:
  „$I_1 = \sin^2\frac{\Delta \phi}{2}, \quad I_2 = \cos^2\ldots$“;
  „$P_\text{D1} = \cos^2(\Delta \phi/2)$“; „$P_1 = \cos^2(\Delta \phi/2) = \cos^2(2{,}48) = 0{,}62$“. →
  *Maßnahme: Konvention in Skript 5 explizit machen („D1 ist der Ausgang, der bei $\Delta \phi = 0$
  dunkel ist“); Zahlen nicht ändern.*
- **P2** → `05_mzi.typ:21-25, 54-58` → *Aufbau- und Zeigerbild ohne Textbezug; das Zeigerbild ist
  die einzige visuelle Erklärung der Amplitudenaddition.* → Beleg: Abschnitt „= Aufbau“ besteht
  nur aus Grafik und Tabelle; danach „= Rechnung mit Amplituden“ ohne Rückgriff. → *Maßnahme:
  je ein Satz.*
- **P3** → `05_mzi.typ:32` → *„Phasensprung $\pi$ an Spiegeln“ gilt für metallische Spiegel; im
  symmetrischen MZI heben sich die beiden Spiegelphasen auf.* → Beleg: „[Spiegel],
  [Richtungsänderung, Phasensprung $\pi$]“. → *Maßnahme: „(hebt sich im symmetrischen Aufbau
  auf)“ ergänzen.*

### 3.6 Skript 6 – Atommodelle und Orbitalmodell (`06_atommodelle.typ`, 7 S.)

- **P1** → `06_atommodelle.typ:122-125` + `make_figures.py:203-213` → *Die Potenzialtopf-Grafik
  trägt die physikalisch sinnlose Beschriftung „E_kin – E_pot“, und die Unterschrift verspricht
  Wellenfunktionen, die nicht gezeichnet sind.* → Beleg Quelltext: „`ax.text(1.04, 1.6,
  "E$_{kin}$ – E$_{pot}$" …)`“; Unterschrift: „Potenzialtopf: Wellenfunktionen mit $n$
  Halbwellen, Energien wachsen mit $n^2$.“; im Bild nur drei waagerechte Niveaus. → *Maßnahme:
  Beschriftung auf „$E$“ ändern und Unterschrift auf „Energieniveaus $E_n tilde n^2$ im Kasten
  der Breite $L$“ umstellen.*
- **P2** → `06_atommodelle.typ:127-134` → *Elektronenkonfiguration und Pauli-Prinzip kommen nur
  als halbe Tabellenzelle vor, obwohl `THEMENSTATUS.md` sie als eigenständigen Punkt (6.4.3 ✅)
  führt.* → Beleg: „[stabile Bahn], [stationärer Zustand, Pauli-Prinzip füllt Orbitale]“
  (Z. 133). → *Maßnahme: drei Sätze zu Schalenbesetzung/$2n^2$ (Formel steht im Formelblatt,
  Z. 152).*
- **P2** → `06_atommodelle.typ:77-81` → *Unterschrift sagt „$n \to \infty$ entspricht $E = 0$“,
  die Grafik ist aber auf „Energie über dem Grundzustand“ skaliert (Grenze bei 13,6).* → Beleg:
  `make_figures.py:223` (`E+13.6`), Achsentext „Energie über dem Grundzustand in eV“. →
  *Maßnahme: Halbsatz „in der Darstellung liegt die Ionisationsgrenze bei 13,6 eV“.*
- **P3** → `06_atommodelle.typ:24` → *„etwa 1 von 8000“ ohne Quellenangabe; die Zahl ist
  Lehrbuchkonvention, nicht Messwert dieses Aufbaus.* → Beleg: „etwa 1 von 8000 wird um mehr als
  90° gestreut“. → *Maßnahme: „(Lehrbuchwert)“ ergänzen.*

### 3.7 Skript 7 – Spektren und Franck-Hertz (`07_spektren.typ`, 7 S.)

- **P1** → `07_spektren.typ:162-169` → *Aufgabe 2 ist syntaktisch zerstört: der `#enum(`-Aufruf
  fehlt, die Teilaufgaben erscheinen als Rohtext mit eckigen Klammern und einer überzähligen
  Klammer.* → Beleg (PDF S. 6): „[Skizzieren Sie das beobachtete Spektrum.], [Berechnen Sie die
  Grenzwellenlänge der Lyman-Serie.], [Begründen Sie, warum die Balmer-Linien schwächer sind.] )“.
  → *Maßnahme: `#enum(` vor die Liste setzen, Klammer schließen.*
- **P1** → `07_spektren.typ:112-116` + `make_figures.py:238-247` → *Die Franck-Hertz-Grafik zeigt
  eine Periode von 11 V und ist mit „ΔU ≈ 11 V“ beschriftet; Text und Unterschrift sagen 4,9 V
  (Quecksilber).* → Beleg Quelltext: „`I = 1 + 0.055*U - 0.9*(1 - np.exp(-((U % 11.0)/1.1)**8))`“
  und „`ax.text(13.3, 1.45, "ΔU ≈ 11 V" …)`“; Unterschrift: „Der Abstand der Minima ist die
  Anregungsspannung $\Delta U \approx 4{,}9$ V.“; Text: „fällt bei etwa 4,9 V, 9,8 V, 14,7 V“. →
  *Maßnahme: Grafik auf 4,9 V umrechnen und neu erzeugen.*
- **P1** → `07_spektren.typ:157-159` → *Falsche Begründung für das Leuchten: bei Neon liegt die
  Anregungsenergie (16,7 eV) im UV, nicht im Sichtbaren.* → Beleg: „bei Neon liegt die Anregung im
  sichtbaren Bereich, dort sieht man die Leuchtschicht direkt.“ → *Maßnahme: „bei Neon liegen
  viele der anschließenden Übergänge im Sichtbaren, daher die helle Leuchtschicht“.*
- **P1** → `07_spektren.typ:42-44` → *Die Unterschrift ordnet alle eingezeichneten Linien der
  Balmer-Serie zu; die Grafik enthält zusätzlich $2 \to 1$ (Lyman-$\alpha$, 122 nm).* → Beleg:
  „Die eingezeichneten Linien gehören zur Balmer-Serie ($n = 2$ als Ziel).“;
  `make_figures.py:226`: „`trans = [(3, 2, 656), (4, 2, 486), (5, 2, 434), (6, 2, 410),
  (2, 1, 122)]`“. → *Maßnahme: „vier Balmer-Linien und die Lyman-$\alpha$-Linie $2 \to 1$“.*
- **P2** → `07_spektren.typ:56, 88, 200-201` → *Einheiten in drei Schreibweisen derselben Formel:
  $\lambda_\text{min} = 1239{,}8 / |E_\text{Ziel}|$ (ohne Einheit), $= \frac{1239"}{\text{8 }eV nm"}$
  (dimensioniert falsch: eV·nm durch Volt), $= 1239{,}8 / U_B$ (ohne Einheit).* → Beleg: Z. 88
  „$\lambda_{\min} = \frac{h c}{e U_B} = \frac{1239"}{\text{8 }eV nm"}$“. → *Maßnahme: einheitlich
  $\lambda_{\min} = 1239{,}8 \text{nm} \cdot \text{V} / U_B$ bzw. $1239{,}8 \text{eV nm} / \Delta E$.*
- **P2** → `07_spektren.typ:40-44, 112-116` → *Beide Grafiken ohne Textbezug.* → Beleg: Abschnitt
  „= Energieniveaus lesen“ beginnt mit Prosa, die die Grafik nicht nennt. → *Maßnahme: je ein
  Satz.*
- **P3** → `07_spektren.typ:104-105` → *Beobachtung nennt nur Hg-Zahlen, Erklärung springt zu Ne.*
  → Beleg: „bei Ne leuchtet das Gas in einer orangeroten Schicht“. → *Maßnahme: eigenen Satz für
  Ne, nicht im Hg-Satz.*
- **P3** → `07_spektren.typ:165-167` → *Teilaufgaben in Aufgabe 2 sind inhaltlich nicht an die
  Aufgabe gebunden (Lyman-Grenze vs. weißes Licht).* → *Maßnahme: nach dem Syntaxfix prüfen, ob
  (1)–(3) zusammenpassen; sonst (2) streichen.*

### 3.8 Formelblatt (`f1_formelblatt.typ`, 5 S.)

- **P2** → `f1_formelblatt.typ:131` → *Unbestimmtheit als $\geq h$ ohne Hinweis, dass Skript 4
  $h/(4 \pi)$ verwendet (siehe 3.4).* → Beleg: „[$\Delta x \cdot \Delta p_x \geq h$],
  [Unbestimmtheit], [Schulnotation]“. → *Maßnahme: beide Formen nebeneinander, mit Zuordnung.*
- **P2** → `f1_formelblatt.typ:133` → *$P_\text{D1} = \cos^2(\Delta \phi/2)$ widerspricht Skript 5
  ($I_1 = \sin^2$).* → Beleg: s. 3.5. → *Maßnahme: Konvention angleichen.*
- **P2** → `f1_formelblatt.typ:88` → *Gültigkeitsbedingung an der falschen Zeile: $e >> g$ gehört
  zur Kleinwinkelnäherung, nicht zur Gitterformel.* → Beleg: „[$n \lambda = g \sin(\alpha)$],
  [Doppelspalt/Gitter], [$e >> g$]“. → *Maßnahme: Bedingung „Kleinwinkel $a << e$“ nennen.*
- **P3** → `f1_formelblatt.typ:122` → *$U_B$ wird doppelt belegt (Beschleunigungs- und
  Bremsspannung).* → Beleg: „[$e U_B = 1/2 m_e v^2$], [Elektronenkanone]“ vs.
  „[$e U_B = E_\text{kin,max}$], [Gegenfeld]“. → *Maßnahme: $U_\text{B}$/$U_\text{G}$ trennen.*
- **P3** → `f1_formelblatt.typ:77` → *„$\lambda = 2 \Delta x$“ ohne Bezug, was $\Delta x$ ist.* →
  Beleg: „[$\lambda = 2 \Delta x$], [stehende Welle], [Knoten-/Bauchabstand $\lambda/2$]“. →
  *Maßnahme: „$\Delta x$ = Abstand zweier Knoten“.*

### 3.9 Experimentesammlung (`f2_experimente.typ`, 5 S.)

- **P2** → `f2_experimente.typ:199` → *Spreizt die Fachsprache: Skript 7 und Regression sprechen
  von Minima, hier von Maxima – ohne Hinweis, dass der Abstand gleich ist.* → Beleg:
  „Periodische Maxima im Abstand $\Delta U$“. → *Maßnahme: „Maxima (bzw. Minima)“.*
- **P2** → `f2_experimente.typ:82` → *„Linearer Abfall“ beschreibt die $I$-$U$-Kennlinie falsch:
  sie fällt bis zum Knick, dann folgt ein Sockel; „linear“ gilt nur für den ersten Teil.* →
  Beleg: „Linearer Abfall; Knickpunkte liegen auf einer Geraden über $f$.“ → *Maßnahme: „Der
  Strom fällt mit steigender Gegenspannung und verschwindet am Knick“.*
- **P3** → `f2_experimente.typ:166` → *Formelzeile $h = e U_B/f + W_A/f$ ist korrekt, aber als
  Summe zweier Brüche schwer lesbar.* → *Maßnahme: $h = (e U_B + W_A)/f$.*

### 3.10 Gesamtübersicht (`f3_uebersicht.typ`, 5 S.)

- **P2** → `f3_uebersicht.typ:20-23` → *Die Landkarte ist die einzige Grafik des Dokuments und
  wird im Text nicht gedeutet; die folgenden Abschnitte zählen die Fäden auf, ohne auf sie zu
  verweisen.* → Beleg: „Abbildung 1: Landkarte der Themen …“, danach „= Drei rote Fäden“. →
  *Maßnahme: ein Satz „Abb. 1 ordnet die drei Fäden einander zu“.*
- **P3** → `f3_uebersicht.typ:111-122` → *„Lernreihenfolge (Empfehlung)“ wiederholt die Tabelle aus
  `f8_lernplan.typ:45-55` und die README-Tabelle.* → *Maßnahme: auf den Lernfahrplan verweisen
  (Einsparung ≈ 0,5 S.).*

### 3.11 Abitur-Analyse (`f5_abitur.typ`, 5 S.)

- **P1** → `f5_abitur.typ:123` und `f5_abitur.typ:58-69` → *Die Angabe „fachpraktischer Anteil in
  5 von 12 Aufgaben“ ist falsch; nach den Aufgaben-PDFs sind es 2 von 12. Drei Zeilen der Tabelle
  sind falsch markiert.* → Beleg: `2026ENSWmg3_Aufgabe.txt:43 f.`: „fachpraktischer Anteil ja ☐ /
  nein ☒“ (ebenso `2026GNFEmg1`, `2026GNFEmg3`); nur `2025gNFEfp2` und `2025gNSWfp2` tragen
  „fachpraktischer Anteil ja“. → *Maßnahme: Tabelle (Blitzdetektor, Elektrobus,
  Elektronenstrahlen) auf „nein“ setzen, Satz auf „2 von 12“.*
- **P2** → `02_Abiturrecherche/untersuchte_aufgaben.csv:11` → *Der Blitzdetektor ist dort als
  „gA“ geführt; das Aufgaben-PDF sagt „Anforderungsniveau erhöht“.* → Beleg:
  `2026ENSWmg3_Aufgabe.txt:9 f.`: „Anforderungsniveau / erhöht“. → *Maßnahme: CSV auf „eA“
  korrigieren (die Tabelle in `f5_abitur.typ:67` ist bereits richtig).*
- **P2** → `f5_abitur.typ:141-152` → *Die Empfehlung „Experimente beschreiben … wegen der
  fachpraktischen Anteile“ stützt sich auf die falsche Zählung.* → Beleg: „*Experimente
  beschreiben:* … wegen der fachpraktischen Anteile“ (Z. 149 f.). → *Maßnahme: Begründung auf die
  eA-Variante „mit Experimentieren“ stützen (in den Hinweisen 2027 belegt), nicht auf die
  Stichprobe.*
- **P3** → `f5_abitur.typ:112-113` → *Prozentangabe bei n = 94 Nennungen; 46/94 = 48,9 %, also
  korrekt, aber die Bezugsgröße „Nennungen“ ist unklar.* → *Maßnahme: „46 von 94
  Operatornennungen“.*

### 3.12 Last-Minute-Lernzettel (`f4_lastminute.typ`, 4 S.)

- **P2** → `f4_lastminute.typ:30, 47` → *Unbestimmtheit als $\geq h$ (Widerspruch zu Skript 4,
  s. 3.4).* → Beleg: „Weginformation zerstört Interferenz – Komplementarität;
  $\Delta x \cdot \Delta p_x \geq h$.“ → *Maßnahme: wie 3.4.*
- **P2** → `f4_lastminute.typ:91` → *Unbelegte Häufigkeitsangabe über Abituraufgaben.* → Beleg:
  „1. Doppelspalt/Gitter-Rechnung mit Auswertung (kommt am häufigsten).“ – die eigene Analyse
  (`f5_abitur.typ:77-86`) zeigt 4 von 12 Aufgaben im Bereich Schwingungen/Wellen, davon 1 mit
  Gitter. → *Maßnahme: „kommt häufig vor“ ohne Superlativ.*
- **P3** → `f4_lastminute.typ:72` → *„Strommaxima“ vs. „Minima“ in Skript 7 (gleicher Versuch).*
  → *Maßnahme: „Maxima (Minima im gleichen Abstand)“.*
- **P3** → `f4_lastminute.typ:82` → *Neben $h c = 1239{,}8$ wird hier wieder 1240 empfohlen, ohne
  die 0,02 % zu nennen (im Formelblatt steht es).* → *Maßnahme: Klammer „(1240 gerundet)“.*

### 3.13 Übungsheft (`f6_uebungen.typ`, 13 S.)

- **P1** → `f6_uebungen.typ:46-54` → *Die Punkte-/Zeitplan-Tabelle ist als Markdown-Tabelle
  geschrieben und erscheint im PDF als Rohtext mit senkrechten Strichen.* → Beleg (PDF S. 3):
  „| Block | Aufgaben | Punkte | Zeit | |—|—|—|—| | A Wellen und Interferenz | 4 | 54 | 55 min | …“.
  → *Maßnahme: in `#table(...)` überführen.*
- **P1** → `f6_uebungen.typ:123-124` → *Messwerttabelle in Aufgabe 5 aus demselben Grund
  unlesbar.* → Beleg (PDF S. 4): „| 𝜆 in nm | 405 | 436 | 546 | 578 | | 𝑈𝐵 in V | 1,16 | …“. →
  *Maßnahme: `#table(...)`.*
- **P1** → `f6_uebungen.typ:396` → *Fremdsprachiges Wort im Lösungstext (russisch
  „принадлежит“).* → Beleg (PDF S. 9): „die breitere Kurve принадлежит zu $b = 0{,}05$ mm“. →
  *Maßnahme: „gehört“.*
- **P1** → `f6_uebungen.typ:574` → *Überzählige Klammer in der Rechnung, im PDF sichtbar.* →
  Beleg (PDF S. 11): „Δ𝑥⋅Δ𝑝𝑥≈50 ⋅10−6 ⋅1,3 ⋅10−29) = 6,6 ⋅10−34 J s“. → *Maßnahme: Klammer
  entfernen.*
- **P2** → `f6_uebungen.typ:409` → *Satz widerspricht sich selbst: „fallende Gerade“ und
  „je größer $f$, desto größer $U_B$“.* → Beleg: „Auftragung $U_B$ über $f$ ergibt eine fallende
  Gerade (je größer $f$, desto größer $U_B$).“ – die Daten (405 nm → 1,16 V; 578 nm → 0,25 V)
  ergeben eine **steigende** Gerade. → *Maßnahme: „steigende Gerade“.*
- **P2** → `f6_uebungen.typ:541` → *$P_1 = \cos^2$ widerspricht Skript 5 ($I_1 = \sin^2$); siehe
  3.5.* → Beleg: „$P_1 = \cos^2(\Delta \phi/2) = \cos^2(2{,}48) = 0{,}62$“. → *Maßnahme: nach
  Klärung der Konvention angleichen.*
- **P3** → `f6_uebungen.typ:432` → *Rhetorische Selbstfrage in einer Lösung.* → Beleg: „Diese
  Linie liegt deutlich über der Grenzenergie des Bremsspektrums? – Nein: …“ → *Maßnahme: Frage
  streichen.*
- **P3** → `f6_uebungen.typ:123` → *Spaltenkopf „$\lambda$ in nm“ – nach dem Tabellenfix prüfen,
  ob Einheit im Kopf und in den Zellen zusammenpassen.* → *Maßnahme: mit P1 zusammen.*
- **P3** → ganzes Dokument → *Bindestriche werden als Soft-Hyphen (U+2010) gesetzt und extrahieren
  sich als `\x1d`: „Franck-Hertz“ wird zu „FranckHertz“ (71 Treffer, dagegen 1 echter
  Bindestrich; Skript 1 hat 21 echte). Optisch korrekt, aber die PDF-Suche findet
  „Franck-Hertz“ nicht.* → Beleg: `rawdict` der Tabellenzelle liefert
  `'F Spektren und Franck\x1dHertz'`. → *Maßnahme: im Satz `#set text(hyphenate: false)` für
  Tabellenzellen prüfen oder Bindestrich als `\-` schreiben; kein P1, das Dokument ist lesbar.*

### 3.14 Regression und Auswertung (`f7_regression.typ`, 7 S.)

- **P1** → `f7_regression.typ:193-194` → *Die 253-nm-Linie ist UV und auf einem Leuchtschirm nicht
  sichtbar; Skript 7 sagt das Gegenteil (sichtbare Linien anderer Übergänge).* → Beleg: „Genau
  diese 253 nm sind die ultraviolette Quecksilberlinie, die man beim Versuch mit Leuchtschirm
  beobachtet.“ → *Maßnahme: „… die im UV liegt; das sichtbare Leuchten der Röhre stammt von
  anderen Übergängen.“*
- **P2** → `f7_regression.typ:84-85` → *Das Symbol $D$ bedeutet in zwei aufeinanderfolgenden
  Zeilen Schirmabstand und Federkonstante.* → Beleg: „[$s_n = n \lambda D/g$ (Gitter)]“ und
  „[$T^2 = (4 \pi^2)/D \cdot m$]“. → *Maßnahme: Schirmabstand $e$ nennen (wie in Skript 1).*
- **P2** → `f7_regression.typ:180-186` → *Das Franck-Hertz-Beispiel verwendet Maxima, Skript 7
  Minima – gleiche Zahlen, zwei Begriffe, ohne Hinweis.* → Beleg: „Die Maxima liegen bei
  $U_n = n \cdot \Delta U + U_\text{K}$“. → *Maßnahme: Klammer „(Minima liefern denselben Abstand)“.*
- **P3** → `f7_regression.typ:102-105` → *Bildunterschrift deutet die Grafik korrekt, aber der
  Text danach zählt nur die vier Regressionsgrößen auf, ohne den Bezug zur Abbildung zu halten.*
  → *Maßnahme: ein Satz „Abb. 1 zeigt beides“.*

### 3.15 Lernfahrplan (`f8_lernplan.typ`, 4 S.)

- **P1** → `f8_lernplan.typ:48-54` → *Alle Seitenangaben stammen aus der Fassung vor der
  Straffung und zeigen auf Seiten, die es nicht mehr gibt (Skript 1 hat 9 statt 15 Seiten;
  „12, 14–15“ existiert nicht).* → Beleg: „[1 Wellen/Interferenz (15 S.)], [3, 12, 14–15]“ –
  tatsächlich 9 Seiten. → *Maßnahme: Tabelle aus den gebauten PDFs neu ableiten.*
- **P1** → `f8_lernplan.typ:9, 24, 33, 80` → *Umfangsangaben sind veraltet (121 Seiten, 76 Seiten
  Skripte, 60 000 Wörter).* → Beleg: „121 Seiten sind ein Nachschlagewerk“; „[7 Lernskripte],
  [76 S.]“; „Von den insgesamt etwa 60.000 Wörtern“; gemessen: **95 Seiten, 47 Seiten Skripte,
  33 828 Wörter**. → *Maßnahme: Zahlen aktualisieren.*
- **P2** → `f8_lernplan.typ:57-58` → *Aussage über Skript 5/6 („kein eigener Abschnitt
  Herleitung“) ist richtig, hilft aber ohne Seitenzahl nicht.* → *Maßnahme: mit dem Umbau der
  Tabelle miterledigen.*
- **P3** → `f8_lernplan.typ:62` → *Datumsangabe „Heute ist Sonntag, der 1. November“ ist korrekt
  (geprüft), wird aber nach dem Prüfungstermin falsch.* → *Maßnahme: „Stand 01.11.2026“
  formulieren.*

### 3.16 Projektverwaltung (kein PDF, aber prüfungsrelevant)

- **P1** → `00_Projektverwaltung/THEMENSTATUS.md:8-27` → *Alle Ortsangaben für Skript 1 verweisen
  auf eine Gliederung, die es nicht mehr gibt (1.2.3, 1.4.1, 1.5.4, 1.6, 1.7, 1.8.4); Skript 1 hat
  heute 13 durchnummerierte Abschnitte.* → Beleg: „| Resonanz, Resonanzfrequenz, Dämpfung |
  1.2.3 | ✅ |“ – Resonanz steht in Abschnitt 3. → *Maßnahme: Spalte „Ort“ auf die aktuelle
  Gliederung umstellen.*
- **P1** → `00_Projektverwaltung/THEMENSTATUS.md:24-25` → *Polarisation/Malus und
  Michelson-Interferometer sind als „🔶 im Skript behandelt“ geführt, kommen in Skript 1 aber
  nicht vor.* → Beleg: „| Polarisation, Malus | 1.7 | 🔶 (kurz; vertieft in Schulmaterial) |“;
  Gegenprobe: `grep -n "Polarisation\|Malus\|Michelson" src/01_wellen.typ` → 0 Treffer. →
  *Maßnahme: Status auf ❌ mit Begründung; Inhalt als Ergänzung vorschlagen (Abschnitt 5).*
- **P2** → `00_Projektverwaltung/THEMENSTATUS.md:39-49` (Skript 4) → *„Koinzidenzmethode“ als ✅
  geführt; in Skript 4 nicht vorhanden (nur in `f2_experimente.typ:140`).* → *Maßnahme: Status
  korrigieren.*
- **P2** → `00_Projektverwaltung/README.md:22` → *„7 Skripte 48 Seiten“ – tatsächlich 47
  (9+6+7+6+6+7+6).* → *Maßnahme: 47.*
- **P3** → `00_Projektverwaltung/QUELLENVERZEICHNIS.md:75` → *„Alle 23 Grafiken in
  `05_Grafiken/`“ – dort liegen 22 SVGs plus README.* → *Maßnahme: 22.*
- **P3** → `00_Projektverwaltung/QUELLENVERZEICHNIS.md:83-87` → *„Dort ist angegeben, welche
  Aussagen aus Schulmaterial, welche aus dem Kerncurriculum und welche aus dem Aufgabenpool
  stammen.“ Die Quellenkästen nennen nur die Quelle insgesamt, keine Zuordnung je Aussage.* →
  *Maßnahme: Anspruch abschwächen oder Zuordnung nachtragen.*

---

## 4. Kürzungsvorschläge

| Stelle | Grund | Einsparung |
|---|---|---|
| `f2_experimente.typ` gesamt | wiederholt die Experiment-Kästen der Skripte 1–7 nahezu wörtlich (z. B. Franck-Hertz `f2:194-203` vs. `07:100-110`) | ≈ 1,0 S. |
| `f3_uebersicht.typ:111-122` | Lernreihenfolge doppelt zu `f8_lernplan.typ:45-55` und README | ≈ 0,5 S. |
| `f8_lernplan.typ:19-41` | „Die ehrliche Rechnung“ und Rollentabelle wiederholen `f3_uebersicht` | ≈ 0,7 S. |
| `f1_formelblatt.typ:157-170` | „Typische Umformungen“ sind fünf Zeilen, die in den Skripten als Herleitung stehen | ≈ 0,3 S. |
| `01_wellen.typ:269-283` | Wiederholungstabelle dupliziert Formelblatt Abschnitte 2–4 | ≈ 0,3 S. |
| `f5_abitur.typ:115-124` | „Wiederkehrende Aufgabenformate“ wiederholt die Empfehlungen (Z. 141-152) | ≈ 0,3 S. |
| **Summe** | | **≈ 3 S. ohne Informationsverlust** |

Nicht zur Kürzung empfohlen: Übungsheft (jede Aufgabe deckt einen anderen Operator ab),
Last-Minute-Lernzettel (Kern-Lernstoff), Regression (eigenständige Methode).

---

## 5. Ergänzungsvorschläge

| Stelle | Was fehlt | Warum prüfungsrelevant | Umfang |
|---|---|---|---|
| `01_wellen.typ`, nach Abschnitt 7 | Polarisation: Transversalwellen-Kriterium, Polarisator/Analysator, Malus $I = I_0 \cos^2 \alpha$ | Kerncurriculum-Kompetenz laut Schulseite `d12/12schwingungenwellen/06polarisation/docs.md` („Polarisierbarkeit als Unterscheidungsmerkmal“, „Winkelabhängigkeit der Intensität“); IQB-Aufgabe „DECT-Telefon“ prüft Polarisation; Formelblatt Z. 76 führt Malus ohne Erklärung | ≈ 6 Sätze + 1 Abb. |
| `01_wellen.typ`, nach Abschnitt 8 | Michelson-Interferometer: $N \lambda = 2 \Delta d$ | von `THEMENSTATUS.md:25` behauptet, in `f2_experimente.typ:60-66` und `f1_formelblatt.typ:94 f.` vorausgesetzt | ≈ 4 Sätze |
| `01_wellen.typ:45-61` | Definition „Kohärenz“ (feste Phasenbeziehung, gleiche Frequenz) | wird in Z. 263/285 verwendet; `f3_uebersicht.typ:93` verweist auf Skript 1 | 2 Sätze |
| `06_atommodelle.typ`, nach Abschnitt 4 | Schalenbesetzung, Pauli-Prinzip, $2n^2$ | `THEMENSTATUS.md:63` führt es als ✅; Formelblatt Z. 152 hat die Formel ohne Text | 4 Sätze |
| `04_doppelspalt.typ:35-47` | Koinzidenzmethode (wie wird „ein Photon gleichzeitig“ sichergestellt?) | `THEMENSTATUS.md:45` führt sie als ✅; Methodenfrage in Aufgaben | 2 Sätze |
| alle Dokumente mit Grafik (26 Stellen) | je ein deutender Satz im Fließtext | Kriterium F; derzeit 0 Verweise auf „Abbildung“ in allen Quellen | 26 Sätze |

---

## 6. Maßnahmenplan

Reihenfolge nach Wirkung/Aufwand. P1 wird umgesetzt, P2/P3 nach Freigabe.

| # | Maßnahme | Dateien | Aufwand | Wirkung |
|---|---|---|---|---|
| 1 | Syntaxfehler in Aufgabe 2 beheben | `src/07_spektren.typ:162-169` | 2 min | Skript 7 wieder lesbar |
| 2 | Markdown-Tabellen → `#table`, Fremdwort, Klammer | `src/f6_uebungen.typ:46-54, 123-124, 396, 574` | 15 min | Übungsheft wieder benutzbar |
| 3 | `photoeffekt_fE` reparieren (Faktor 1000) + Unterschrift | `make_figures.py:176-181`, `src/02_lichtquanten.typ:51-55` | 10 min | zentrale Grafik Skript 2 |
| 4 | `franckhertz` auf 4,9 V | `make_figures.py:238-247` | 10 min | Widerspruch Grafik/Text weg |
| 5 | `potenzialtopf`-Beschriftung + Unterschrift | `make_figures.py:203-213`, `src/06_atommodelle.typ:122-125` | 10 min | sinnlose Achsenbeschriftung weg |
| 6 | `rutherford` mit korrekter Coulomb-Bahn | `make_figures.py:250-266` | 15 min | Grafik zeigt jetzt Streuung |
| 7 | LED-Unterschrift, Balmer-Unterschrift, Ne-Satz, 253-nm-Satz | `src/02_lichtquanten.typ:83-87`, `src/07_spektren.typ:42-44, 157-159`, `src/f7_regression.typ:193-194` | 10 min | vier falsche Aussagen weg |
| 8 | Abitur-Statistik korrigieren (2 von 12) | `src/f5_abitur.typ:58-69, 123`, `untersuchte_aufgaben.csv` | 10 min | keine falsche Prüfungsstatistik |
| 9 | Lernfahrplan auf aktuelle Seitenzahlen | `src/f8_lernplan.typ:9, 24, 33, 48-54, 80` | 20 min | Plan wieder benutzbar |
| 10 | THEMENSTATUS/README/Quellenverzeichnis auf Ist-Stand | `00_Projektverwaltung/*.md` | 20 min | Steuerungsdokumente stimmen |
| 11 | (P2) Konvention $I_1/I_2$ klären, Unbestimmtheit vereinheitlichen | `src/05_mzi.typ`, `f1_formelblatt.typ`, `f4_lastminute.typ`, `f6_uebungen.typ` | 20 min | Widerspruch zwischen Dokumenten weg |
| 12 | (P2) je ein deutender Satz pro Grafik | 15 Dateien | 60 min | Kriterium F erfüllt |
| 13 | (P2) Polarisation + Michelson + Pauli ergänzen | `src/01_wellen.typ`, `src/06_atommodelle.typ` | 45 min | Curriculum-Lücke geschlossen |

---

## 7. Nicht geprüft

| Gegenstand | Grund |
|---|---|
| NIBIS-ZA-Archiv (Landesaufgaben 2016–2024) | Formular-POST liefert HTTP 302, kein Zugriff (dokumentiert in `02_Abiturrecherche/abitur_analyse.md`) |
| Bildungsportal Niedersachsen, Zentralabitur 2027 | HTTP 403 |
| Inhalt der 12 IQB-Aufgaben im Detail | nur Kopfangaben (Niveau, Inhaltsbereich, fachpraktischer Anteil) maschinell ausgewertet; eine fachliche Prüfung der Aufgaben selbst war nicht Teil des Auftrags |
| Optische Wirkung der 22 SVGs im Druck | keine Sichtprüfung möglich (kein Bildbetrachter); geprüft wurden Pfadkoordinaten, Textanker und Kollisionen – eine echte Sichtkontrolle bleibt offen |
| Kerncurriculum im Volltext | nur die von der Schule gespiegelten Auszüge (`01_Schulwebsite/.../kerncurriculum*.md`); das amtliche PDF von cuvo.nibis.de wurde nicht erneut geladen |
| „Hinweise zur schriftlichen Abiturprüfung 2027“ | geprüft gegen den Spiegel `max-emden.de` (4 Aufgaben/3 wählen, eA-Varianten, Experimentierkästen 2026 – bestätigt); ein amtliches Original lag nicht vor |
| Rechtschreibung/Grammatik vollständig | stichprobenhaft; keine vollständige Duden-Korrektur |
---

## 8. Nachrechnung der Referenzwerte

| Referenz | Soll | gefunden in | Ist | Abweichung |
|---|---|---|---|---|
| $h c$ | 1239,8 eV nm | `f1:25`, `02:46`, `06:86`, `07:50`, `f4:56` | 1239,8 | 0 |
| $h c$ gerundet | 1240 (0,02 %) | `f1:40 f.`, `f6` (6.1) | 1240 | 0,02 % ✔ |
| $E_n$ | −13,6/n² eV | `06:72`, `f1:146` | −13,6/n² | 0 |
| $r_1$ | 5,29·10⁻¹¹ m | `06:66`, `f1:31` | 5,29·10⁻¹¹ | 0 |
| $\lambda(U)$ | 1,226 nm/√(U/V) | `03:47`, `f1:125`, `f4:45` | 1,226 | 0 |
| Hg 4,90 V → λ | 253 nm | `07:125`, `f7:192` | 253,0 | 0 |
| Balmer H-α | 656 nm | `07:67`, `06:89` | 656,3 | 0 |
| Lyman H-α | 121,6 nm | `06:89`, `f6` (15.2) | 121,5–122 | 0,4 % ✔ |
| Lyman-Grenze | 91,2 nm | `07:175` | 91,2 | 0 |
| Doppelspalt 633 nm/0,25 mm/2 m | 5,06 mm | `01:246`, `f6` (A1) | 5,06 | 0 |
| Gitter 500/mm, 39,2° | 632 nm | `01:250` | 632,0 | 0 |
| Graphit $d$ | ≈ 0,21 nm | `03:168`, `f6` (C1) | 0,212/0,213 | 0 |
| Röntgengrenze | 1239,8 nm·V/U | `07:88`, `f6` (7.1/20.1) | 0,031/0,0354 nm | 0 |
| Röntgen 35 kV | 35,4 pm | `02:133` | **35 pm** | **1,2 % ✗ (P3)** |
| Compton $\lambda_C$ | 2,43 pm | `02:100` | 2,43 | 0 |
| $h$ aus IQB-Messreihe | 6,626·10⁻³⁴ J s | `02:177`, `f7:140` | 6,59·10⁻³⁴ | 0,6 % ✔ |
| $W_A$ Cs | 1,94 eV | `02:139` | 1,94 | 0 |
| $U_S$-Steigung (LED-Grafik) | 4,14·10⁻¹⁵ V s | `make_figures.py:186` | 4,40·10⁻¹⁵ | 6 % (P2, s. 3.2) |

---

## 9. Abbildungs-Inventar

26 `image()`-Aufrufe, 22 verschiedene Dateien, keine tote Datei, keine tote Referenz.

| Datei | verwendet in | Unterschrift nennt Aussage? | im Text gedeutet? | fachlich korrekt? |
|---|---|---|---|---|
| welle_raumzeit | `01:40` | ja | nein | ja |
| zeigerkette | `01:54` | ja | nein | ja |
| stehende_welle | `01:113` | ja | nein | ja |
| doppelspalt_geometrie | `01:127` | ja | nein | ja ($a_n$-Pfeil endet zu tief) |
| doppelspalt_intensitaet | `01:144`, `04:29`, `f6:57` | ja | nein | ja (Pfeil „Δa“ hat Länge ≈ 0, `make_figures.py:103 f.`) |
| einzelspalt_doppelspalt | `01:167` | ja | nein | ja |
| bragg | `01:179`, `03:86` | ja | nein | ja (Symbol α statt θ) |
| reflexion_brechung | `01:191` | ja | nein | ja |
| photoeffekt_fE | `02:52` | **nein** | nein | **nein – leer** |
| led_hbestimmung | `02:84` | **nein** | nein | Daten ja, Unterschrift falsch |
| elektronenbeugung_bild | `03:53` | ja | nein | ja (schematisch) |
| unbestimmtheit | `04:96` | **nein** | nein | Grafik ja, Unterschrift falsch |
| wellenfunktion | `04:102` | ja | nein | ja |
| mzi | `05:22` | ja | nein | ja |
| qed_zeiger | `05:55` | ja | nein | ja |
| rutherford | `06:32` | ja | nein | **nein – Bahnen sind keine Hyperbeln** |
| energieniveaus_h | `06:78`, `07:41` | teils | nein | ja (Unterschrift in 07 falsch) |
| potenzialtopf | `06:123` | **nein** | nein | **nein – Beschriftung „E_kin – E_pot“** |
| orbitale | `06:137` | ja | nein | ja (schematisch) |
| franckhertz | `07:113` | **nein** | nein | **nein – 11 V statt 4,9 V** |
| gesamtuebersicht | `f3:21` | ja | nein | ja |
| regression | `f7:101` | ja | nein | ja |

Zur Rutherford-Grafik im Einzelnen: `make_figures.py:255-260` parametrisiert mit
`x = (b²t)/(b²+t²)·0,9` und `y = (−bt²)/(b²+t²)·0,9 + 0,45b`. Für $t \to \pm \infty$
gehen beide Äste gegen **dieselbe** Waagerechte ($y \to −0,45b$, $x \to 0$): die Kurven sind
symmetrische Beulen mit Ablenkwinkel 0, nicht Hyperbeln. Die Unterschrift behauptet aber „große
Ablenkung nur bei sehr kleinem Abstand zum Kern“. Die korrekte Fassung liegt bereits in
`redraw_figs.py:66-83` und wurde nie angewendet (Beleg: `fig/rutherford.svg` enthält den Titel
„Rutherford-Streuung: je kleiner b, desto …“, den nur `make_figures.py:266` setzt).

---

## 10. Umsetzung der P1-Befunde (01.11.2026)

Alle 15 P1-Befunde sind behoben; der Nachweis ist jeweils im neu gebauten PDF geführt
(`build_all.sh`, danach `get_text()`).

| Befund | Datei | Status | Nachweis im PDF |
|---|---|---|---|
| 3.1 Kohärenz ohne Definition | `01_wellen.typ` | behoben | „Definition / Kohärenz: Zwei Wellen sind kohärent …“ (S. 3) |
| 3.2 `photoeffekt_fE` leer | `make_figures.py`, `02_lichtquanten.typ` | behoben | Kurven steigen ab $f_G$; Unterschrift nennt $E_\text{kin,max}$ und $f_G$ (S. 3) |
| 3.2 LED-Unterschrift falsch | `02_lichtquanten.typ` | behoben | „LED-Methode: Einsatzspannung $U_S$ über der Frequenz …“ (S. 4) |
| 3.6 Potenzialtopf-Beschriftung | `make_figures.py`, `06_atommodelle.typ` | behoben | Achse „E“; Unterschrift „Energieniveaus im Kasten …“ (S. 5) |
| 3.7 Aufgabe 2 zerstört | `07_spektren.typ` | behoben | „1. Skizzieren Sie … 2. Berechnen Sie … 3. Begründen Sie …“ (S. 6) |
| 3.7 Franck-Hertz 11 V | `make_figures.py` | behoben | Grafik „ΔU ≈ 4,9 V“, Minima bei 4,9/9,8/14,7 V (S. 4) |
| 3.7 Neon-Erklärung falsch | `07_spektren.typ` | behoben | „… weil viele der anschließenden Übergänge im Sichtbaren liegen“ (S. 5) |
| 3.7 Balmer-Unterschrift | `07_spektren.typ` | behoben | „vier Balmer-Linien … und die Lyman-$\alpha$-Linie $2 \to 1$“ (S. 3) |
| 3.11 „5 von 12“ fachpraktisch | `f5_abitur.typ`, CSV | behoben | „Fachpraktischer Anteil in 2 von 12 Aufgaben“ (S. 4) |
| 3.13 Zeitplan-Tabelle Rohtext | `f6_uebungen.typ` | behoben | gerenderte Tabelle, keine `|` mehr (S. 3) |
| 3.13 Messwerttabelle Rohtext | `f6_uebungen.typ` | behoben | gerenderte Tabelle (S. 4) |
| 3.13 „принадлежит“ | `f6_uebungen.typ` | behoben | „die breitere Kurve gehört zu $b = 0,05$ mm“ (S. 9) |
| 3.13 Klammer in 14.1 | `f6_uebungen.typ` | behoben | „… = 6,6 · 10⁻³⁴ J s“ ohne überzählige Klammer (S. 11) |
| 3.14 253 nm auf Leuchtschirm | `f7_regression.typ` | behoben | „Sie ist unsichtbar; das Leuchten … stammt von anderen Übergängen“ (S. 6) |
| 3.15/3.16 Seitenzahlen, THEMENSTATUS | `f8_lernplan.typ`, `THEMENSTATUS.md` | behoben | Kurzweg-Tabelle auf Abschnittsnummern; THEMENSTATUS auf Ist-Stand |

**Prüfung nach dem Neubau:** 95 Seiten, 33 828 Wörter, 0 Formelreste, 0 Textüberläufe,
0 ungerenderte Klammerlisten, 22 SVGs eingebunden, `build_all.sh` ohne Fehler.
Die P2- und P3-Befunde sind **nicht** angefasst; sie stehen in Abschnitt 3 und warten auf Freigabe.

---

## 11. P2-Umsetzung auf Freigabe (01.11.2026)

### 11.1 Detektor-Konvention: was das Kerncurriculum sagt

Die Frage war, ob das KC die Zuordnung „D1 hell oder dunkel bei $\Delta \phi = 0$“ festlegt.
**Es tut es nicht.** Die MZI-Kompetenzen der Schule lauten (KC eA d13,
`01_Schulwebsite/materialien/docs/d13/01infos/kerncurriculumea/docs.md`, Z. 19–21):

> „Ich kann den Aufbau eines Mach-Zehnder-Interferometers beschreiben.“
> „Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer mit einzelnen Quantenobjekten
> unter den Gesichtspunkten Komplementarität und Nichtlokalität interpretieren.“
> „Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer analog zu einem
> delayed-choice-Experiment beschreiben.“

Kein Satz zur Bezeichnung der Ausgänge. Das KC regelt Kompetenzen, keine Symbolkonventionen.

**Das Schulmaterial legt es aber fest**
(`01_Schulwebsite/materialien/docs/d13/13quantenobjekte/06machzehnderinterferometer/docs.md`,
Abschnitt „Beobachtungen“, Z. 198):

> „Wenn der Phasenschieber auf 0 gestellt ist, registriert Detektor 1 **keine Intensität** und
> Detektor 2 **volle Intensität**.“

Begründung dort (Z. 202–205): am Strahlteiler Phasensprung $\pi/2$ bei Reflexion, am Spiegel $\pi$;
am Detektor 1 ist die Phasendifferenz der Zeiger $\pi$, am Detektor 2 null.

**Damit gilt: D1 dunkel bei $\Delta \phi = 0$**, also $P_\text{D1} = \sin^2(\Delta \phi/2)$ und
$P_\text{D2} = \cos^2(\Delta \phi/2)$. Skript 5 hatte das Ergebnis bereits richtig, aber mit einer
falschen Begründung („jede Reflexion an einem Strahlteiler einen Phasensprung von $\pi$“).

### 11.2 Was daraufhin geändert wurde

| Datei | Änderung |
|---|---|
| `05_mzi.typ:39` | Begründung auf $\pi/2$ (Strahlteiler) und $\pi$ (Spiegel) umgestellt, wie im Schulmaterial |
| `05_mzi.typ:48` | Merksatz beginnt jetzt mit der Konvention („D1 ist der Ausgang, der bei $\Delta \phi = 0$ dunkel ist“) |
| `f1_formelblatt.typ:133` | $P_\text{D1} = \cos^2$ → $P_\text{D1} = \sin^2$, $P_\text{D2} = \cos^2$ ergänzt, Gültigkeit benannt |
| `f6_uebungen.typ:543` | Lösung 12.2 neu gerechnet: $P_1 = 0,38$, $P_2 = 0,62$ |
| `f6_uebungen.typ:547` | Lösung 12.3 neu gerechnet: kleinste Dicke $d = \lambda/(n-1) = 1,27$ µm (vorher 0,63 µm, das war die Dunkelstelle von D2) |

### 11.3 Curriculumlücken geschlossen

KC-Belege: Polarisation in `d12/01infos/kerncurriculumea/docs.md`, Z. 111–113 („Polarisierbarkeit
als Unterscheidungsmerkmal zwischen transversalen und longitudinalen Wellen“, „Winkelabhängigkeit
der Intensität … bei einem Paar von Polarisatoren“); Michelson ebenda Z. 115–117 („Interferenz-
phänomene … Michelson-Interferometer“, „technische Verwendung … zum Nachweis kleiner
Längenänderungen“).

Neu in `01_wellen.typ`:

- Abschnitt 10 „Polarisation“ (Polarisator/Analysator als Definition, Malus-Gesetz, Merksatz zur
  Unterscheidung transversal/longitudinal).
- Abschnitt 11 „Michelson-Interferometer“ (Aufbau, $\Delta s = 2 \Delta d$, $\Delta d = N \lambda/2$,
  neue Grafik `michelson.svg`, Deutung im Text). Die Grafik fehlte im Bestand und wurde mit
  `make_figures.py` erzeugt; das Skript enthält die Funktion jetzt dauerhaft.

### 11.4 Abbildungen gedeutet

Alle 27 `image()`-Aufrufe haben jetzt einen Satz im Fließtext, der die Aussage der Grafik
interpretiert (nicht nur die Bildunterschrift wiederholt). Verteilung: Skript 1 neun (inkl.
Michelson), Skript 2 zwei, Skript 3 zwei, Skript 4 drei, Skript 5 zwei, Skript 6 vier, Skript 7
zwei, Gesamtübersicht eins, Übungsheft eins. Damit ist Abschnitt 9.3 („keine der 26 Abbildungen
wird im Text gedeutet“) erledigt.

### 11.5 Stand

96 Seiten, 35 080 Wörter, 0 Formelreste, 0 Textüberläufe, 23 SVGs (22 + Michelson).
Skript 1 wuchs von 9 auf 10 Seiten, weil zwei Abschnitte hinzukamen; die Abschnittsnummern
danach (Experiment 12, Aufgaben 13, Fehler 14, Wiederholung 15) sind in `THEMENSTATUS.md` und
in der Kurzweg-Tabelle des Lernfahrplans nachgezogen.

**Noch offen (P2/P3):** $\Delta x \Delta p$ als $h/(4 \pi)$ im Skript gegen $h$ im Formelblatt
(„Schulnotation“), „fallende Gerade“ in Übungsheft 5.2, Pauli/Elektronenkonfiguration nur als
Tabellenzelle, Koinzidenzmethode nur in der Experimentesammlung, Quantenradierer nur im
Schulmaterial.

---

## 12. Restbefunde geschlossen (01.11.2026)

Nach der Freigabe „alles sollte richtig und gut sein“ sind auch die letzten belegten Punkte aus
Abschnitt 3 und 5 abgearbeitet.

### 12.1 Unbestimmtheitsrelation: beide Notationen, mit Beleg

Das Schulmaterial rechnet mit $\Delta x \cdot \Delta p_x \geq h$
(`d13/13quantenobjekte/13unbestimmtheit/docs.md`, Z. 220 und 225: „Damit das Produkt
$\Delta x \cdot \Delta p_x$ größer als $h$ ist …“). Die KC-Kompetenz verlangt ausdrücklich den
Vergleich (ebenda Z. 6): „Ich kann das Erlernte mit der Lehrbuch-Notierung der
Unbestimmtheitsrelation für Ort und Impuls vergleichen.“

Das Skript hatte nur $h/(4 \pi)$ und das Formelblatt nur $h$ („Schulnotation“) – der Vergleich
fehlte also, obwohl er im KC steht. Jetzt:

- `04_doppelspalt.typ:104` nennt beide Formen und erklärt den Faktor (Schwankungsbreite vs.
  Standardabweichung).
- `f1_formelblatt.typ:131` führt beide Zeilen mit Gültigkeitsangabe.

### 12.2 Koinzidenzmethode ergänzt

KC eA d13 (`04doppelspaltexperiment/docs.md`, Z. 10): „Ich kann die Koinzidenzmethode zum
Nachweis einzelner Photonen erläutern.“ Die Methode stand nur in der Experimentesammlung.
Neu in `04_doppelspalt.typ:57` (Definition), gestützt auf
`06machzehnderinterferometer/docs.md`, Z. 245: „Ein Photon ist nicht teilbar, weswegen man
**niemals** eine Koinzidenz … beobachtet.“

### 12.3 Pauli-Prinzip ergänzt

Stand nur als Zelle in der Vergleichstabelle Bohr/Quantenmechanik. Neu in
`06_atommodelle.typ:143` als Definition (Besetzungsverbot, Schalen 2/8/18, Periodensystem).

### 12.4 „fallende Gerade“ korrigiert

`f6_uebungen.typ:416` sagte „eine fallende Gerade (je größer $f$, desto größer $U_B$)“ – der Satz
widersprach sich selbst. Richtig ist eine *steigende* Gerade; die Rechnung darunter war bereits
korrekt ($\Delta U_B / \Delta f = +4,11 \cdot 10^{-15}$ V s).

### 12.5 Was bewusst offen bleibt

| Punkt | Grund |
|---|---|
| Quantenradierer, Bomben-Test | im KC nicht als eigene Kompetenz; nur Schulmaterial |
| Bindestrich-Extraktion (`\x1d`) im Übungsheft | optisch korrekt, nur die PDF-Suche leidet |
| NIBIS-Aufgaben, Bildungsportal | HTTP 302 bzw. 403, kein Zugriff (Abschnitt 7) |
| Optische Sichtprüfung der SVGs | kein Bildbetrachter in der Umgebung; geprüft wurden Einbindung, Seitenzahl und Beschriftungstext |

**Stand:** 96 Seiten, 35 080 Wörter, 0 Formelreste, 0 Textüberläufe, 23 SVGs, alle 27
`image()`-Aufrufe im Text gedeutet.

---

## 13. Nachtrag 01.11.2026 – Formeltypografie und neues Übungsheft

**Formeltypografie.** In Typst erzeugt `a\/b` einen Schrägstrich, `a/b` einen gestapelten
Bruch. In 36 abgesetzten Gleichungen stand der Schrägstrich, obwohl ein Bruch gemeint war
(Übungsheft 18, Regression 15, Elektronenwellen 2, Wellen 1). Umgestellt wurde nur der
abgesetzte Teil; im Fließtext und in Exponenten bleibt der Schrägstrich, weil ein gestapelter
Bruch die Zeilenhöhe sprengen würde. Kontrolle: Seitenzahl unverändert, Vektorobjekte
4.355 → 5.259.

**Einheiten.** Im Mathemodus müssen Einheiten in Anführungszeichen stehen (`$"m"$`), sonst
setzt Typst sie kursiv. Neun Verdachtsfälle geprüft, alle Fehlalarm (Variablen $A$, $m$, $s$).

**Neues Dokument** `04_Zusatzmaterial/Uebungsheft_Diagrammauswertung.pdf` (7 S., 40 P.):
fünf Messreihen mit vorberechneten Regressionsdaten (Resonanzrohr, Kondensatorentladung,
Bremsweg, Fadenpendel, Steigungsdeutung), Abbildungen aus `build/make_diag_figs.py`,
Lösungen und Klausur-Checkliste. Prüfung mit `build/qa_pdf.py`: 0 Befunde.

**Markdown.** Die Formeln in diesem Bericht und in `review.md` standen in Typst-Syntax
(`$lambda$`, `$frac(a, b)$`) und wären auf GitHub als Text erschienen; 202 Formeln in sechs
Dateien wurden nach LaTeX überführt, die Stichprobe über 207 Formeln in Prüfbericht und
Review rendert fehlerfrei.

**Stand nach dem Nachtrag** (`python3 build/qa_pdf.py`): 16 Dokumente, 103 Seiten,
18.380 Wörter, 177.913 Zeichen, 5.259 Vektorobjekte, 0 Befunde.

## Anhang A/B – Technische Prüfung und Abbildungsprüfung (unverändert übernommen)

Die folgenden Abschnitte sind der Stand vom 01./02.11.2026 vor der inhaltlichen Prüfung. Sie
bleiben gültig; ihre Seitenzahlen beziehen sich auf die Fassung vor der Straffung.

### Prüfbericht

Datum: 01.11.2026 · Werkzeug: Typst 0.15.1 (Rendering), PyMuPDF (Prüfung)

#### Prüfkriterien

Für jede PDF wurden geprüft:

1. Datei existiert und ist lesbar (PyMuPDF öffnet ohne Fehler)
2. Seitenzahl und Textmenge (Textextraktion erfolgreich)
3. Suche nach nicht gerenderten Formelresten: `$`, `\`, `sqrt`, `frac`, sichtbare `{ }`
4. Layout-Überlauf: Textblöcke außerhalb des Satzspiegels
5. Fast leere Seiten (< 60 Zeichen)
6. Vektorzeichnungen vorhanden (Grafiken als Pfade, daher nicht als Rasterbild zählbar)
7. Inhaltsverzeichnis vorhanden (Seite 2), Kopf-/Fußzeile ab Seite 3
8. Stichprobenhafte Textkontrolle (Formeln, Umlaute, Zahlen)

#### Ergebnisse

| Dokument | Seiten | Zeichen | Grafik-Objekte | Formelreste | Überlauf |
|---|---|---|---|---|---|
| 01_Wellen_und_Interferenz | 15 | 39 046 | 779 | keine | keiner |
| 02_Lichtquanten_und_Planck | 10 | 25 001 | 407 | keine | keiner |
| 03_Elektronenwellen_und_Beugung | 9 | 21 697 | 328 | keine | keiner |
| 04_Doppelspalt_und_Quantenphysik | 11 | 27 491 | 611 | keine | keiner |
| 05_MZI_Welcher_Weg_Delayed_Choice | 9 | 27 642 | 239 | keine | keiner |
| 06_Atommodelle_und_Orbitalmodell | 11 | 24 895 | 440 | keine | keiner |
| 07_Spektren_und_Franck_Hertz | 11 | 28 778 | 400 | keine | keiner |
| Formelblatt | 5 | 7 604 | 171 | keine | keiner |
| Experimentesammlung | 5 | 15 275 | 44 | keine | keiner |
| Gesamtuebersicht | 5 | 7 857 | 424 | keine | keiner |
| Abitur_Analyse | 5 | 9 080 | 76 | keine | keiner |
| Last_Minute_Lernzettel | 4 | 6 135 | 56 | keine | keiner |

**Summe: 100 Seiten** über 12 Dokumente.

#### Gefundene und behobene Fehler

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

#### Inhaltliche Plausibilitätsprüfungen (Stichproben)

- $\Delta a = \lambda e / g = 633 \text{nm} \cdot 1{,}5 \text{m} / 0{,}20 \text{mm} = 4{,}7$ mm ✔
- $\lambda_e$ bei 3 kV: $1{,}226/\sqrt{3000} = 22{,}4$ pm; Ringradius bei $d = 0{,}213$ nm,
  $a = 13{,}5$ cm: $r = \lambda a / d = 14{,}2$ mm ✔ (konsistent mit der Aufgabenstellung)
- $E_1$ im Kasten $L = 0{,}2$ nm: $9{,}4$ eV; $E_2 = 37{,}6$ eV ✔
- Franck-Hertz: $\Delta U = (40{,}2 - 18{,}6)/2 = 10{,}8$ V ✔
- Röntgen: $\lambda_{\min}(25$ kV$) = 49{,}6$ pm ✔
- $h$-Bestimmung LED: Steigung $3{,}91 \cdot 10^{-15}$ V s → $h = 6{,}27 \cdot 10^{-34}$ J s ✔
- $E = 1240 / 450 = 2{,}756$ eV, $E_\text{kin} = 0{,}66$ eV ✔

#### Bekannte Einschränkungen

- Grafiken wurden als Vektorpfade eingebettet; eine visuelle Prüfung durch Rendern war im
  Arbeitsumfeld nicht möglich. Die Grafiken wurden jedoch programmatisch mit festen Koordinaten
  erzeugt (keine automatische Layout-Engine), sodass Überlappungen ausgeschlossen sind.
- Die Prüfung auf Überlauf nutzt Blockgrenzen; einzelne Formeln in Tabellenzellen können knapp
  am Rand liegen, ohne als Fehler erkannt zu werden.
- Keine inhaltliche Fremdprüfung durch Dritte.

#### Bewertung

Alle zwölf Dokumente sind vollständig, maschinenlesbar, ohne Formelreste und ohne erkennbare
Layoutfehler. Sie erfüllen die formalen Anforderungen der Aufgabenstellung (A4, Inhaltsverzeichnis,
Kopf-/Fußzeile, Seitenzahlen, Quellenverzeichnis, eigene Grafiken, Aufgaben mit Lösungen).

#### Nachtrag: Prüfung der Abbildungen (02.11.)

Anlass: Mehrere Grafiken wirkten im Druck unklar. Da eine Sichtprüfung aller
Abbildungen nicht möglich war, wurden die Grafiken maschinell geprüft:

| Prüfung | Methode | Ergebnis |
|---|---|---|
| Texte außerhalb der Zeichenfläche | Renderer-Bounding-Boxen | 1 Treffer (`bragg`, behoben) |
| Überlappende Beschriftungen | paarweise Bounding-Box-Überlappung > 20 % | 6 Treffer (`energieniveaus_h`), behoben → 0 |
| Geometrie der Schemata | ASCII-Rendering der SVGs | `mzi` chaotisch → neu gezeichnet |
| Tintenabdeckung je Grafik | Pixelanalyse der PDF-Seite | `elektronenbeugung_bild` 82 % (schwarzer Block) → invertiert |
| Textüberlauf im Satzspiegel | Blockkoordinaten aller Seiten | 0 Treffer in 13 PDFs |

### Neu gezeichnet

- **`mzi.svg`** – vorher willkürliche Koordinaten, Strahlen trafen die Strahlteiler
  nicht. Jetzt streng rechtwinkliges Schema: Quelle → ST1 → zwei Arme → M1/M2 →
  ST2 → D1/D2, alle Strahlen enden exakt in den Bauteilmitten.
- **`rutherford.svg`** – Hyperbeln jetzt aus der exakten Coulomb-Bahn berechnet
  (Stoßparameter 0; 0,45; 1; 2; 3,6), nicht mehr freihändig.
- **`bragg.svg`** – Strahlen treffen die Netzebenen im Reflexionspunkt, α und d korrekt
  eingetragen, Beschriftung aus dem Rand geholt.
- **`doppelspalt_geometrie.svg`** – Strahlen starten in den Spaltmitten, g-Pfeil misst
  jetzt wirklich den Spaltabstand.
- **`qed_zeiger.svg`** – Vektorkette mit gestricheltem Parallelogramm.
- **`energieniveaus_h.svg`** – Beschriftungen n = 3 und n = 4 überlappten sich; jetzt
  getrennte Spalten für Übergänge, keine Kollision mehr (Messwert: 0).
- **`unbestimmtheit.svg`** – Achse hatte unsinnige Ticks (−0,2 / +40). Neu: zwei
  Vergleichspanels (schmaler/breiter Spalt) mit sauberer Beschriftung.
- **`elektronenbeugung_bild.svg`** – war fast vollständig schwarz (inferno-Colormap
  auf transparentem Grund). Jetzt invertiert: helle Fläche, dunkle Ringe, druckbar.

### Nicht geändert

`welle_raumzeit`, `doppelspalt_intensitaet`, `einzelspalt_doppelspalt`, `stehende_welle`,
`reflexion_brechung`, `led_hbestimmung`, `potenzialtopf`, `franckhertz`, `wellenfunktion`,
`zeigerkette`, `orbitale`, `gesamtuebersicht` – ohne Befund.

### Prüfskripte

`build/check_figs.py` (Textkollisionen), `build/redraw_figs.py` (neu gezeichnete
Schemata). Beide sind reproduzierbar und nach Änderungen erneut ausführbar.

### Nachtrag zur Abbildungsprüfung (Ergebnis dieser Prüfung)

Die in Anhang B als „neu gezeichnet“ gemeldeten Fassungen (`redraw_figs.py`) sind **nicht** in
den ausgelieferten SVGs enthalten. `fig/*.svg` stammt nachweislich aus `make_figures.py`
(Titeltexte und Beschriftungsreihenfolgen stimmen mit `make_figures.py` überein, z. B.
`fig/rutherford.svg` = „Rutherford-Streuung: je kleiner b, desto …“,
`fig/energieniveaus_h.svg` mit sechs Niveaus). Die Korrekturen aus `redraw_figs.py` müssen also
erneut angewendet werden; die Folgen sind in Abschnitt 9 und in den Befunden 3.6/3.7 behandelt.

## 14. Prüfdurchgang nach REVIEW_PROMPT (01.11.2026)

Auftrag: `00_Projektverwaltung/REVIEW_PROMPT.md`, Phasen 0–2 und Abnahme D1–D8. Dieser
Abschnitt dokumentiert Baseline, Abdeckungsmatrix, Befunde, Änderungen und die Wiederholung
der Prüfungen. Frühere Abschnitte bleiben als Verlauf stehen.

### 14.1 Baseline (Phase 0)

| Prüfung | Befehl | Ergebnis vor den Änderungen |
|---|---|---|
| Quellen | `python3 build/check_sources.py` | 19 Dateien, 0 Befunde |
| Markdown | `python3 build/check_markdown.py` | 123 Dateien, 1 Befund (Fehlalarm, s. 14.4) |
| Physik | `python3 build/check_physics.py` | `pint` fehlte; nach Installation 8 Prüfungen, 0 Befunde |
| Build | `cd build && ./build_all.sh` | 16 PDFs, 103 Seiten |
| Layout | `python3 build/qa_pdf.py …` | 0 Überläufe, 0 Formelreste |
| Website | `python3 build/test_pages.py` | 35/35 Prüfungen |
| Reproduzierbarkeit | zwei Builds, `md5sum` | identisch |
| Werkzeug | `typst --version` | 0.15.1 |

Der Vergleich mit `review.md` ergab vier falsche Angaben: die Zahl der PDFs (13 statt 16),
die Seitenzahl (113 statt 103), die Grafiken (21 statt 28) und der Aufgabenumfang
(41 statt 34). Außerdem behauptete das Review, die Resonanzfrequenz sei ergänzt und
Verschränkung/Nichtlokalität behandelt; beides fehlte im gebauten PDF.

### 14.2 D1 – Abdeckung der 77 Vorabi-Seiten

Quelle: `01_Schulwebsite/website_links.csv` (Spalte `Vorabi` = `ja`), 77 Datensätze.
Status: ✅ behandelt, 🔶 nur Randnotiz, ❌ bewusst weggelassen (Begründung unten),
„Rahmen“ = Curriculum-/Organisationsseite ohne Lehrinhalt.

Summe: **55 ✅, 2 🔶, 13 ❌, 7 Rahmen**. Die 13 Auslassungen sind zwölf Praktikumsseiten
zu E- und B-Feld, Halbleitern und Solarzelle sowie der He-Ne-Laser. E- und B-Feld sind laut
`REVIEW_PROMPT.md` nicht Vorabi-Stoff; der He-Ne-Laser wird im gespiegelten Material nicht mehr
im Kerncurriculum genannt (`docs/d13/14atomhuelle/09henelaser/docs.md:1–7`). Keine Seite bleibt
unzugeordnet.

| # | Seite | Ort im Material | Status |
|---|---|---|---|
| 1 | `docs/d11/01infos/kerncurriculum` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 2 | `docs/d12/01infos/organisation` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 3 | `docs/d12/01infos/kerncurriculumga` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 4 | `docs/d12/01infos/kerncurriculumea` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 5 | `docs/d12/02grundlagen/01messwert` | Regression §1–6 | ✅ |
| 6 | `docs/d12/02grundlagen/02modellierung` | Regression §1–5 | ✅ |
| 7 | `docs/d12/02grundlagen/03grundannahmen` | Skripte 2/6/7 + Regression | 🔶 |
| 8 | `docs/d12/12schwingungenwellen/01schwingungen` | Skript 1 §1–3 | ✅ |
| 9 | `docs/d12/12schwingungenwellen/02federmassependel` | Skript 1 §3, §13 | ✅ |
| 10 | `docs/d12/12schwingungenwellen/03resonanz` | Skript 1 §3 | ✅ |
| 11 | `docs/d12/12schwingungenwellen/04wellen` | Skript 1 §1, 4, 9 | ✅ |
| 12 | `docs/d12/12schwingungenwellen/05wellengleichung` | Skript 1 §4 | ✅ |
| 13 | `docs/d12/12schwingungenwellen/06polarisation` | Skript 1 §11 | ✅ |
| 14 | `docs/d12/12schwingungenwellen/07polarisationvonlicht` | Skript 1 §11 | ✅ |
| 15 | `docs/d12/12schwingungenwellen/08interferenz` | Skript 1 §2, 5, 6 | ✅ |
| 16 | `docs/d12/12schwingungenwellen/09stehendewellen` | Skript 1 §5 | ✅ |
| 17 | `docs/d12/12schwingungenwellen/10michelsoninterferometer` | Skript 1 §12 | ✅ |
| 18 | `docs/d12/12schwingungenwellen/11doppelspalt` | Skript 1 §6 | ✅ |
| 19 | `docs/d12/12schwingungenwellen/12doppelspaltgitter` | Skript 1 §7 | ✅ |
| 20 | `docs/d12/12schwingungenwellen/13bragginterferometer` | Skript 1 §8, Skript 3 §3 | ✅ |
| 21 | `docs/d12/12schwingungenwellen/14messunglichtgeschw` | Skript 1 §10 | ✅ |
| 22 | `docs/d12/12schwingungenwellen/15messinvarianzvonc` | Skript 1 §10 | ✅ |
| 23 | `docs/d12/12schwingungenwellen/20herleitungen` | Skript 1 §2, 6, 7, 9 | ✅ |
| 24 | `docs/d13/01infos/organisation` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 25 | `docs/d13/01infos/kerncurriculumga` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 26 | `docs/d13/01infos/kerncurriculumea` | Rahmen: Projektumfang/THEMENSTATUS | Rahmen |
| 27 | `docs/d13/13quantenobjekte/01physikkrise` | Skript 2 §1 | ✅ |
| 28 | `docs/d13/13quantenobjekte/02lichtquanten` | Skript 2 §2–4, 6 | ✅ |
| 29 | `docs/d13/13quantenobjekte/03elektronenwellen` | Skript 3 §1–3 | ✅ |
| 30 | `docs/d13/13quantenobjekte/04doppelspaltexperiment` | Skript 4 §1–3 | ✅ |
| 31 | `docs/d13/13quantenobjekte/05planckkonstante` | Skript 2 §6 | ✅ |
| 32 | `docs/d13/13quantenobjekte/06machzehnderinterferometer` | Skript 5 §1–3 | ✅ |
| 33 | `docs/d13/13quantenobjekte/07mzilabor` | Skript 5 §2, Aufgaben | ✅ |
| 34 | `docs/d13/13quantenobjekte/08welcherweg` | Skript 5 §3 | ✅ |
| 35 | `docs/d13/13quantenobjekte/09qed` | Skript 5 §6 | ✅ |
| 36 | `docs/d13/13quantenobjekte/10delayedchoice` | Skript 5 §4 | ✅ |
| 37 | `docs/d13/13quantenobjekte/11verschraenkung` | Skript 5 §5 | ✅ |
| 38 | `docs/d13/13quantenobjekte/12quantenradierer` | Skript 4 §4, Skript 5 §3 | ✅ |
| 39 | `docs/d13/13quantenobjekte/13unbestimmtheit` | Skript 4 §5 | ✅ |
| 40 | `docs/d13/13quantenobjekte/14wellenfunktion` | Skript 4 §3 | ✅ |
| 41 | `docs/d13/14atomhuelle/01rutherfordmodell` | Skript 6 §1 | ✅ |
| 42 | `docs/d13/14atomhuelle/02bohrmodell` | Skript 6 §2 | ✅ |
| 43 | `docs/d13/14atomhuelle/03quantenmodell` | Skript 6 §4 | ✅ |
| 44 | `docs/d13/14atomhuelle/04orbitalmodell` | Skript 6 §4 | ✅ |
| 45 | `docs/d13/14atomhuelle/05emissionsspektren` | Skript 7 §1–2 | ✅ |
| 46 | `docs/d13/14atomhuelle/06absorptionsspektren` | Skript 7 §1, 4 | ✅ |
| 47 | `docs/d13/14atomhuelle/07franckhertz` | Skript 7 §5 | ✅ |
| 48 | `docs/d13/14atomhuelle/08roentgenspektrum` | Skript 7 §3 | ✅ |
| 49 | `docs/d13/14atomhuelle/09henelaser` | – | ❌ |
| 50 | `docs/d12/03praktikum/01efeld/01ga_stromkreise` | – | ❌ |
| 51 | `docs/d12/03praktikum/01efeld/02ga_aufentlkondensator` | – | ❌ |
| 52 | `docs/d12/03praktikum/02bfeld/01ga_induktion` | – | ❌ |
| 53 | `docs/d12/03praktikum/03suw/01ga_periodendauer` | Skript 1 §3, §13 | ✅ |
| 54 | `docs/d12/03praktikum/03suw/02ga_ultraschall` | Skript 1 §2, 6 | ✅ |
| 55 | `docs/d12/03praktikum/03suw/03ga_doppelspalt` | Skript 1 §6, Skript 4 §1 | ✅ |
| 56 | `docs/d12/03praktikum/03suw/04ga_gitterled` | Skript 1 §7, Skript 2 §6 | ✅ |
| 57 | `docs/d12/03praktikum/03suw/05ga_solarpanel` | – | ❌ |
| 58 | `docs/d12/03praktikum/04qp/01ga_hbestimmungled` | Skript 2 §6 | ✅ |
| 59 | `docs/d12/03praktikum/01efeld/11ea_stromkreise` | – | ❌ |
| 60 | `docs/d12/03praktikum/01efeld/12ea_halbleiter` | – | ❌ |
| 61 | `docs/d12/03praktikum/01efeld/13ea_efeld` | – | ❌ |
| 62 | `docs/d12/03praktikum/01efeld/14ea_estrahlroehre` | Skript 3 §4 | ✅ |
| 63 | `docs/d12/03praktikum/01efeld/15ea_aufentlkondensator` | – | ❌ |
| 64 | `docs/d12/03praktikum/02bfeld/11ea_teilchenimbfeld` | Skript 3 §3 (Feldformeln) | 🔶 |
| 65 | `docs/d12/03praktikum/02bfeld/12ea_induktion` | – | ❌ |
| 66 | `docs/d12/03praktikum/03suw/12ea_periodendauer` | Skript 1 §3, §13 | ✅ |
| 67 | `docs/d12/03praktikum/03suw/13ea_magnetschwingung` | – | ❌ |
| 68 | `docs/d12/03praktikum/03suw/14ea_stehendewelle` | Skript 1 §5 | ✅ |
| 69 | `docs/d12/03praktikum/03suw/15ea_interferenzultraschall` | Skript 1 §2 | ✅ |
| 70 | `docs/d12/03praktikum/03suw/16ea_doppelspalt` | Skript 1 §6 | ✅ |
| 71 | `docs/d12/03praktikum/03suw/17ea_gitterled` | Skript 1 §7, Skript 2 §6 | ✅ |
| 72 | `docs/d12/03praktikum/03suw/18ea_polarisation` | Skript 1 §11 | ✅ |
| 73 | `docs/d12/03praktikum/03suw/19ea_solarpanel` | – | ❌ |
| 74 | `docs/d12/03praktikum/03suw/20ea_michelson` | Skript 1 §12 | ✅ |
| 75 | `docs/d12/03praktikum/04qp/11ea_hbestimmungled` | Skript 2 §6 | ✅ |
| 76 | `docs/d12/03praktikum/04qp/12ea_photoeffekt` | Skript 2 §3 | ✅ |
| 77 | `docs/d12/03praktikum/04qp/13ea_knallertest` | – | ❌ |

### 14.3 Befunde und Behebung

| Priorität | Ort | Befund | Beleg | Behebung |
|---|---|---|---|---|
| P1 | `build/src/01_wellen.typ` | Resonanz war nur als „maximale Amplitude“ definiert; der Begriff Resonanzfrequenz fehlte, obwohl `review.md` ihn als erledigt meldete. | `01_wellen.typ:77–86` | Definition mit $f_R = f_0\sqrt{1 - 2D^2}$ und Dämpfungshinweis ergänzt (`:82`). |
| P1 | `build/src/01_wellen.typ` | Die Seiten `14messunglichtgeschw` und `15messinvarianzvonc` (zwei von 77 Vorabi-Seiten) hatten keinen Ort im Material; $c$ kam in keinem Skript vor. | `grep -ri "299\|Lichtgeschwindigkeit"` in `build/src/*.typ` vor der Änderung: 0 Treffer; Quelle `docs/d12/12schwingungenwellen/14messunglichtgeschw/docs.md:6`, `15messinvarianzvonc/docs.md:176` | Neuer Abschnitt 10 mit Mikrowellenmessung, $c = 1/\sqrt{\mu_0 \varepsilon_0}$, Postulat und Längenkontraktion (`01_wellen.typ:221–262`). |
| P1 | `build/src/05_mzi.typ` | `THEMENSTATUS.md` führte „Verschränkung, Nichtlokalität“ als ✅, im Skript fehlte das Thema. | `grep -ri "verschr\|nichtlokal" build/src/*.typ` vor der Änderung: 0 Treffer; Quelle `docs/d13/13quantenobjekte/11verschraenkung/docs.md:33–35` | Abschnitt „Nichtlokalität und Verschränkung“ mit Bell-Annahmen, Korrelation und Abgrenzung zur Signalübertragung (`05_mzi.typ:101–128`). |
| P2 | `00_Projektverwaltung/THEMENSTATUS.md` | Drei Statusangaben waren veraltet: Koinzidenz stand auf 🔶, obwohl Skript 4 §2 sie erklärt; Pauli stand auf 🔶, obwohl die Definition in Skript 6 §4 steht; der Quantenradierer stand auf ❌, obwohl Skript 4 §4 und Skript 5 §3 ihn behandeln. | `04_doppelspalt.typ:64`, `06_atommodelle.typ:143`, `04_doppelspalt.typ:174` | Status auf ✅ gesetzt und Orte ergänzt (`THEMENSTATUS.md:68, 108, 89`). |
| P2 | `06_Qualitaetskontrolle/review.md` | Bestandsangaben falsch: 13 statt 16 PDFs, 113 statt 104 Seiten, 21 statt 28 SVGs, 3 statt 2 Aufgaben je Skript (41 statt 34). | `ls 03_Lernskripte/*.pdf 04_Zusatzmaterial/*.pdf`, `grep -c '^#aufgabe'`, `qa_pdf.py` | Tabelle und Summen korrigiert; Aufgabenumfang auf 34 berichtigt. |
| P2 | `00_Projektverwaltung/REVIEW_PROMPT.md` | `check_markdown.py` meldete eine ungerade Zahl `$` außerhalb von Code. Ursache: ein eingerückter Shell-Befehl mit `';ja$'` wurde als Listenfortsetzung, nicht als Code erkannt. Kein Inhaltsfehler. | `check_markdown.py` vorher: 1 Befund | Befehl als Inline-Code gesetzt (`REVIEW_PROMPT.md:42`); `strip_indented_code()` unterscheidet jetzt echte Codeblöcke von Listenfortsetzungen. |
| P2 | alle 7 Skripte | D4 verlangt am Ende „Das musst du können“ mit Operatoren. Vorhanden war nur „Verstehen, nicht auswendig“, ohne Operatoren. | `grep -rn "Das musst" build/src/*.typ` vorher: 0 Treffer | Je Skript ein `#prüfung`-Kasten mit 4–5 Operatoren ergänzt (`01_wellen.typ:399`, `02_lichtquanten.typ:218`, `03_elektronenwellen.typ:206`, `04_doppelspalt.typ:207`, `05_mzi.typ:216`, `06_atommodelle.typ:224`, `07_spektren.typ:216`). |
| P3 | `build/test_pages.py`, `build/test_suche.js` | Seitenzahl 103 war hart codiert; nach den Ergänzungen schlugen zwei Tests fehl. | `test_pages.py:15`, `test_suche.js:33–35` | Auf 105 aktualisiert. |
| P3 | Dokumente | D2 ist nicht in jedem Unterabschnitt vollständig: „Wozu“ steht gebündelt in den Lernzielen und Kapitelanfängen; durchgerechnete Beispiele stehen in den Kernabschnitten und Aufgaben, nicht unter jeder Überschrift. | Sichtprüfung der 7 Skripte | Nicht umgebaut (würde den 50-Seiten-Rahmen sprengen); als offener Punkt 14.7 geführt. |
| P3 | `04_Zusatzmaterial/Experimentesammlung.pdf` | D3 verlangt sieben Punkte je Experiment; die Sammlung nutzt fünf bis sechs, „Fehlerquellen“ steht meist als „Grenzen“ in der Bedeutung. | `f2_experimente.typ:36–40` | Als Konvention belassen, im Bericht offengelegt. |
| P2 | `build/src/f8_lernplan.typ` | Nach den Ergänzungen waren Seitenzahlen und Abschnittsnummern im Lernfahrplan veraltet: 96 statt 105 Seiten, 48 statt 50 Skriptseiten, 35.000 statt 19.144 Wörter, Skript 1 mit 10 S. und „§14/15“, Skript 5 mit 6 S. und „§7/8“. | `f8_lernplan.typ:9, 24, 33, 48, 52, 84`; `grep -n "^= " src/01_wellen.typ` | Werte auf 105/50/19.000, 11 S./§15+16 und 7 S./§8+9 gesetzt; PDF neu gebaut. |
| P2 | `build/make_figures.py` | `check_figs.py` meldete 16 Geometriewarnungen, darunter zwei echte Textüberlappungen: `energieniveaus_h` (−0,54/−0,38 eV und n = 5/6) und `unbestimmtheit` (40/−40 am Mittelsteg). | `check_figs.py` vorher: `Ueberlappung ... (75 %)`, `(76 %)`, `(56 %)` | Niveaus 5/6 nur noch als Linien beschriftet, Abstand der Teilbilder auf 0,3 erhöht. Danach 9 Hinweise „Text außerhalb“, 0 Überlappungen. |

### 14.4 Änderungen an Quellen und Prüfwerkzeugen

- `build/src/01_wellen.typ`: Resonanzdefinition, neuer Abschnitt 10 (Lichtgeschwindigkeit),
  Prüfungskasten.
- `build/src/05_mzi.typ`: Abschnitt Nichtlokalität/Verschränkung, Prüfungskasten.
- `build/src/02…07*.typ`: je ein Prüfungskasten mit Operatoren.
- `build/check_markdown.py`: eingerückte Codeblöcke werden nach einer Zeile mit `:` als Code
  behandelt, Listenfortsetzungen bleiben Text.
- `build/make_figures.py`: Niveaus 5/6 in `energieniveaus_h` ohne Beschriftung, größerer
  Abstand der Teilbilder in `unbestimmtheit`; beide SVGs neu erzeugt.
- `build/src/f8_lernplan.typ`: Gesamt- und Skriptseiten, Wortzahl und Abschnittsnummern der
  Kurzweg-Tabelle auf den Stand nach den Ergänzungen gebracht.
- `build/test_pages.py`, `build/test_suche.js`: erwartete Seitenzahl 105.
- `00_Projektverwaltung/REVIEW_PROMPT.md`: Shell-Befehl als Inline-Code.
- `00_Projektverwaltung/THEMENSTATUS.md`: Koinzidenz, Pauli, Quantenradierer, Abschnittszahlen.
- `00_Projektverwaltung/README.md`, `README.md`, `review.md`: Umfang und Bestand auf 16 PDFs,
  105 Seiten, 50 Skriptseiten, 19.144 Wörter.

### 14.5 Prüfungen nach den Änderungen

| Prüfung | Ergebnis |
|---|---|
| `check_sources.py` | 19 Quelldateien, 0 Befunde |
| `check_markdown.py` | 123 Dateien, 0 Befunde |
| `check_physics.py` | 8 Prüfungen, 0 Befunde (h·c, m_p/m_e, R·h·c, λ(4 kV), E_1, λ(4,9 eV), λ_min(25 kV), E_n symbolisch) |
| `./build_all.sh` | „alle gebaut“, 16 PDFs |
| `qa_pdf.py` | 105 Seiten, 0 Textüberläufe, 0 Formelreste (` {,`, `frac`, `$`) |
| `check_figs.py` | 9 Hinweise „Text außerhalb“ (von `bbox_inches="tight"` erfasste Achsentitel), 0 Überlappungen |
| Reproduzierbarkeit | zweiter Build byte-identisch (`md5sum -c`) |
| `test_pages.py` | 35/35 Prüfungen, inkl. Suche, Markierung, Phrasensuche, ZIP |
| PDF-Textsuche | „Resonanzfrequenz“, „Lichtgeschwindigkeit“, „Nichtlokalität“ im Text vorhanden |

### 14.6 Abnahme D1–D8

| Punkt | Status | Begründung |
|---|---|---|
| D1 Abdeckung | ✅ | 77/77 zugeordnet, 55 ✅, 2 🔶, 13 ❌ mit Begründung, 7 Rahmen. |
| D2 Inhaltstiefe | 🔶 | Definitionen, Formeln, Herleitungen, Aufgaben und Fehler vorhanden; „Wozu“ und Beispiele nicht in jedem Unterabschnitt. |
| D3 Experimente | 🔶 | Alle geforderten Experimente in Skripten und Sammlung; „Fehlerquellen“ meist als „Grenzen“ integriert. |
| D4 Operatoren | ✅ | „Das musst du können“ in allen 7 Skripten ergänzt. |
| D5 Abbildungen | ✅ | 28 SVGs, alle eingebunden, keine leeren Bilder, 0 Textüberlappungen. Zwei Kollisionen behoben: `energieniveaus_h` (Beschriftung nur bis n = 4, die dicht liegenden Niveaus 5/6 bleiben als Linien) und `unbestimmtheit` (größerer Abstand zwischen den Teilbildern). Die 9 verbleibenden `check_figs`-Hinweise sind Achsenbeschriftungen außerhalb der Zeichenfläche, die `bbox_inches="tight"` mit ausgibt. |
| D6 Zahlen | ✅ | 8 Rechenprüfungen, alle innerhalb der Rundung. |
| D7 Website | ✅ | 35/35 Tests; Chromium 1440×900 und 375×812: kein horizontaler Überlauf, 16 Karten, 0 Konsolenfehler. Suche „Interferenz“: 48 Treffer, 61 Markierungen; PDF.js lädt auf 375 px. |
| D8 Repo | ✅ | Quellen, PDFs, Grafiken und Prüfskripte konsistent; keine widersprüchlichen Zählungen mehr. |

### 14.7 Offene Punkte

- Quanten-Bomben-Test: nicht im Kerncurriculum, nur Schulmaterial; bewusst nicht aufgenommen.
- He-Ne-Laser: laut Quelle nicht mehr im Kerncurriculum; bewusst nicht aufgenommen.
- Zwölf Praktikumsseiten zu E-/B-Feld, Halbleitern und Solarzelle: Felder sind laut Auftrag
  kein Vorabi-Stoff; Formeln stehen nur als Querverbindung in Skript 3.
- D2/D3-Feinheiten („Wozu“ je Abschnitt, durchgerechnetes Beispiel je Abschnitt,
  „Fehlerquellen“ als eigener Punkt) sind dokumentiert, aber nicht umgesetzt.
- `redraw_figs.py` wurde entfernt; `make_figures.py` ist die einzige Quelle der 28 Grafiken.
  Die zwei konkreten Kollisionen sind dort punktuell behoben.

## 15. Nachtrag (01.11.2026) – Darkmode, Glossar und Abbildungen

### 15.1 Abbildungen: Befunde und Maßnahmen

| # | Datei/Stelle | Befund (vorher) | Maßnahme | Prüfung |
|---|---|---|---|---|
| A1 | `build/make_figures.py:301-332` (HEAD) | MZI: Strahlen trafen die Bauteile nicht. Der „obere“ Strahl lief von `(1.9,1.4)` nach `(4.6,2.55)`, M1 lag aber bei `x=2.4…3.0, y=3.05…2.55`; ST2 bei `(4.6…5.1, 1.4)`, der Ausgang nach oben startete bei `(5.1,1.4)`. | Neuaufbau: ST1/ST2/M1/M2 alle parallel (45°), Strahlen enden in den Bauteilmitten, Armlängen 2 + 5 = 5 + 2, Phasenplättchen im oberen Arm, D1 rechts und D2 oben. | `make_figures.py:348-412`; `check_figs.py` 0 Überlappungen; PDF neu gebaut. |
| A2 | `build/make_figures.py:426-468` (HEAD) | Michelson: Strahlteiler von `(3.2,1.5)` bis `(4.6,2.9)`, der Laserstrahl endete aber bei `(3.2,2.5)` und traf die Linie nicht; Schirm und Rückwege lagen neben dem Strahlteiler. | Strahlteiler bei `(4.0,2.82)`, Laserstrahl endet dort, Spiegel oben/rechts, Rückwege gestrichelt versetzt, Ausgang nach unten zum Schirm, Δd am beweglichen Spiegel. | `make_figures.py:511-555`; PDF neu gebaut. |
| A3 | `build/make_figures.py:60-89` (HEAD) | Doppelspalt: Spalte lagen bei `y≈-0.35…-0.2` und `0.8…1.0`, die Strahlen starteten aber bei `y=0.15` und `1.85`; sie kamen nicht aus den Spaltmitten. | Spaltmitten bei `y=±g/2`, Strahlen von dort zum Schirmpunkt, `g` zwischen den Spaltmitten, `a_n` am Schirm, Winkel α aus der Strahlrichtung. | `make_figures.py:60-98`; PDF neu gebaut. |
| A4 | `build/make_figures.py:137-153` (HEAD) | Bragg: `d·sin α` war als horizontale Strecke gezeichnet, ohne Bezug zur Strahlrichtung; der Winkelbogen saß am Strahleintritt, nicht an der Netzebene. | Exakte Konstruktion: zwei parallele Strahlen an benachbarten Ebenen, Lote von A auf die untere Strahlbahn, beide Zusatzwege `d·sin α`, Gesamtgang `2·d·sin α`. | `make_figures.py:146-187`; PDF neu gebaut. |
| A5 | `build/make_figures.py:236-253` (HEAD) | Franck-Hertz: Die Modulo-Formel erzeugte Einbrüche bei etwa 5,9/10,8/15,7 V, die Pfeile zeigten aber auf 4,9/9,8/14,7 V; an 4,9 V sprang die Kurve. | Rampenanstieg minus Gauß-Einbrüche exakt bei `n·4,9 V`; Pfeile und ΔU-Markierung sitzen an den Minima. | `make_figures.py:270-294`; PDF neu gebaut. |
| A6 | `build/make_figures.py:255-299` (HEAD) | Rutherford: Der Fall `b = 0` war als gerader Strahl durch den Kern gezeichnet, physikalisch ist es Rückstreuung. | Kopfstoß als hinlaufender Strahl und gestrichelter Rückweg, als „Rückstreuung“ beschriftet. | `make_figures.py:315-324`; PDF neu gebaut. |
| A7 | `build/make_figures.py:362-382` (HEAD) | QED-Zeiger zeigte nur einen allgemeinen Winkel; der Text erklärt die Auslöschung bei Δφ = 0, das Bild zeigte sie nicht. | Zwei Panels: Δφ = 0 (entgegengesetzte Zeiger, Summe 0, D1 dunkel) und Δφ = 90° (Resultierende). | `make_figures.py:431-461`; PDF neu gebaut. |
| A8 | `build/redraw_figs.py` | Der nie ausgelieferte zweite Figurensatz enthielt dieselbe falsche M1-Orientierung (`[1.72,2.28],[4.78,4.22]` reflektiert oben nach links, gezeichnet war rechts) und ein drittes Spaltpaar. | Datei entfernt, damit keine widersprüchliche Quelle bleibt. | `git status`; `make_figures.py` ist einzige Quelle. |

`check_figs.py` meldet weiterhin 9 Hinweise „Text außerhalb“ (Achsentitel und einzelne
Tick-Labels, die `bbox_inches="tight"` mit ausgibt), aber **0 echte Überlappungen**.
Die SVGs wurden als Raster gerendert und pixelweise über Farbmasken/Bounding-Boxes
(z. B. alle vier MZI-Bauteile und alle Strahlfarben nachweisbar) sowie über ihre
Konstruktionsdaten geprüft. Ein Bildbetrachter, der das Bild in den Modellkontext
einspielt, steht nicht zur Verfügung; die Prüfung ist deshalb programmatisch, nicht
visuell-ästhetisch.

### 15.2 Glossar

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| G1 | `build/glossar.json` | Es gab kein Glossar. | 104 Begriffe von Amplitude bis Zählrate, je mit Kurzerklärung und Stichworten; einzige Quelle. |
| G2 | `build/make_pages.py:54-91` | Website hatte keine Glossarseite. | `glossar.html` wird aus `glossar.json` erzeugt: alphabetische Gruppen, Filterfeld, Zähler, Link in die Volltextsuche. |
| G3 | `build/src/f10_glossar.typ` | Kein PDF-Glossar. | Typst liest `../glossar.json` und setzt 104 Einträge zweispaltig; `Glossar.pdf`, 5 Seiten. |
| G4 | `build/build_all.sh:22` | Build kannte das Glossar nicht. | `f10_glossar.typ` wird mitgebaut. |

### 15.3 Darkmode

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| D1 | `build/web/style.css:17-49` | Darkmode folgte nur `prefers-color-scheme`; manuell umschalten ging nicht. | `:root[data-theme="dark"]` plus Media-Query für „System“, `color-scheme` mitgesetzt. |
| D2 | `build/web/theme.js` | Kein Umschalter. | Setzt gespeichertes Design vor dem Stylesheet, Knopf in der Kopfzeile aller drei Seiten, `meta[name=theme-color]` wird angepasst. |
| D3 | `index.html`, `suche.html`, `glossar.html`, `lesen.html` | Kein Einstieg. | `theme.js` vor `style.css`, `#thema`-Knopf mit `aria-pressed` und wechselnder Beschriftung. |

### 15.4 Prüfstand nach dem Nachtrag

| Prüfung | Ergebnis |
|---|---|
| `./build_all.sh` | „alle gebaut“, 17 PDFs |
| `qa_pdf.py` | 110 Seiten, 21.309 Wörter, 0 Textüberläufe, 0 Formelreste |
| `check_figs.py` | 9 Hinweise „Text außerhalb“, 0 Überlappungen |
| `check_physics.py` | 14/14 Prüfungen (Konstanten, Photoeffekt, Compton, Rydberg, Doppelspalt, MZI, Potenzialtopf) |
| `test_pages.py` | 48/48 Prüfungen (17 Dokumente, 110 Seiten, Textansicht, Glossar, Theme, Suche, ZIP) |
| `node test_suche.js` | 18/18 Prüfungen |
| Glossar-PDF | 104 Einträge, 5 Seiten, keine ungerenderten Zeichen (`$`, `\`, `#`, `[]{}`) |

### 15.5 Inhalts- und Formelprüfung (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| I1 | `build/src/f1_formelblatt.typ:155` | Formelblatt sagte „Abstand der Maxima“ zur Franck-Hertz-Kurve. Die Kurve hat Minima (`07_spektren.typ:116-120`). | „Abstand der Minima“. |
| I2 | `build/src/f4_lastminute.typ:72` | „Strommaxima im Abstand ΔU“. | „Stromminima“. |
| I3 | `build/src/f6_uebungen.typ:287-294` | Aufgabe 18 fragte nach Strommaxima und „nach jedem Maximum“; der Lösungsteil beschreibt Einbrüche/Minima. | Frage und Teilaufgabe auf „Minima“ umgestellt; Lösung bleibt konsistent. |
| I4 | `build/check_physics.py` | Nur 8 Prüfungen; Photoeffekt, Compton, Rydberg und MZI waren nicht numerisch abgesichert. | 14 Prüfungen, u. a. E(600 nm) = 2,07 eV, K_max(400 nm, 2,2 eV) = 0,90 eV, Compton-Δλ(90°) = 2,43 pm, Rydberg 3→2 = 656 nm, Doppelspalt 600 nm, P_D1(90°) = 0,5. Alle bestanden. |
| I5 | `build/check_sources.py` | Der Fehler „Strommaxima“ konnte wieder eingeschleppt werden. | Lint-Regel meldet „Strommaxima“ als Befund. |

### 15.6 Abbildungen, zweite Runde (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| F1 | `build/make_figures.py:112-115` | `doppelspalt_intensitaet`: `a[np.argmax(I[a > 0.001])]` indexiert das gefilterte Array mit dem Index des vollen Arrays. Der Δa-Pfeil zeigte nach links bis −30 mm. | Pfeil von 0 bis `λ·e/g ≈ 4,2 mm`; Beschriftung daneben. |
| F2 | `build/make_figures.py:122,409` | `einzelspalt_doppelspalt` und `unbestimmtheit`: `sin(u)/where(u==0, 1e-12, u)` ergibt in der Mitte 0 statt 1. | `np.sinc(u/π)**2`; zentrale Intensität 1. |
| F3 | `build/make_figures.py:468-477` | `reflexion_brechung`: Der einfallende Pfeil zeigte vom Lot weg; die α-Bögen lagen zwischen Strahl und Grenzfläche statt zwischen Strahl und Lot. | Pfeil zeigt zur Grenzfläche; Bögen 90–135° bzw. 45–90°; β zwischen −90° und −61,4°. |
| F4 | `build/make_figures.py:497` | `regression`: Steigungsannotation `m_*1e14` ergab 4,14·10^13 statt 0,41 V je 10^14 Hz (Text: 4,11·10^-15 V s). | Annotation `m_:.2f` = 0,41 V je 10^14 Hz. |

Alle 28 SVGs neu gerendert, `check_figs.py`: 0 Überlappungen, 9 Hinweise „Text außerhalb“
(Achsentitel/Tick-Labels, die `bbox_inches="tight"` mit ausgibt). Zusätzlich geprüft:
Farbmasken und Bounding-Boxes im gerenderten Raster; alle Bauteile und Strahlfarben vorhanden.

### 15.7 Textansicht und „Weiterlesen“

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| L1 | `build/web/lesen.html`, `build/web/lesen.js` | Nach dem Entfernen der alten Textansicht gab es nur die PDF. | Schlanke Textansicht je Seite: Zurück/Weiter, Seitenauswahl, Pfeiltasten, PDF-Link; nutzt `suche.json`. Kein nachgebautes Inhaltsverzeichnis, keine Suchmarkierung. |
| L2 | `build/make_pages.py:147-180` | Karten verlinkten nur PDF und Textanfang. | „Als Text lesen“ und verstecktes „Weiterlesen (S. N)“ je Karte. |
| L3 | `build/web/lesen.js` | Kein Lesestand. | `localStorage`-Schlüssel `physik.weiter` speichert Dokument und Seite; `index.js` zeigt den Link. |

**Offen:** Die Prüfbericht-Abschnitte 14.5–14.7 beschreiben den Stand vor diesem Nachtrag
(16 PDFs, 105 Seiten). Die dort genannten Zahlen sind historisch; aktuell gelten die Werte
in 15.4.

### 15.8 Mobile HTML-Leseseiten (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| L4 | `build/lesen/`, `build/make_lesen.py` | Die Textansicht war ein PDF.js-Viewer mit Seitenzoom; auf dem Handy musste man ständig zoomen. | 16 statische Leseseiten aus den Typst-Quellen (`typst --features html`): MathML, eingebettete SVGs, Tabellen, Inhaltsverzeichnis; keine Seitenumbrüche. |
| L5 | `build/web/lesen.css`, `lesen-static.js` | Keine mobilen Leseeinstellungen. | 17–18 px Fließtext, Zeilenlänge ~68 Zeichen, A−/A+, Darkmode, einklappbares Inhaltsverzeichnis, lokales Scrollen für breite Formeln/Tabellen. |
| L6 | `build/make_pages.py`, `index.js` | Links zeigten auf `lesen.html?doc=…`; der alte Lesestand passte nicht mehr. | Direkte Links `lesen/<Dokument>.html`; `lesen.html` leitet alte Links weiter; „Weiterlesen“ speichert Scrollposition (`?weiter=1`). |

Prüfungen: `test_pages.py` **51/51**; lokale Linkprüfung **0 kaputte Verweise**;
Layout bei 390 px und 500 px: `scrollWidth == innerWidth`, kein horizontaler Seitenüberlauf;
breite Formeln/Tabellen scrollen nur im eigenen Kasten. Leseseiten sind byte-identisch
reproduzierbar. PDFs unverändert: 110 Seiten, 21.309 Wörter, `qa_pdf.py` 0 Befunde,
`check_physics.py` 14/14, `check_sources.py` und `check_markdown.py` je 0 Befunde.

### 15.9 MZI-Abbildung neu gezeichnet (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| F5 | `build/make_figures.py`, `build/fig/mzi.svg` | Die vier optischen Elemente waren nur als gleichartige Schrägstriche gezeichnet; Strahlteiler und Spiegel waren visuell nicht unterscheidbar, die Strahlführung wirkte unklar. | ST1/ST2 als Würfel mit Diagonale, M1/M2 als Spiegel mit Rückseite; Strahlen enden an den Bauteilflächen und beginnen dahinter. Quelle heißt jetzt „Laser“ wie im Text. |

`check_figs.py` beim Neuzeichnen: keine Textüberlappung für `mzi`; nur die bekannten
9 Hinweise „Text außerhalb“ bei Achsenbeschriftungen anderer Figuren. Die übrigen
SVGs wurden nach dem Prüflauf bewusst auf den committeten Stand zurückgesetzt, damit
kein Metadaten-Churn entsteht. PDF 05: 6 Seiten, 1166 Wörter, `qa_pdf.py` 0 Befunde.

### 15.10 Einheitlicher Leser statt PDF-und-Text-Doppelweg (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| V1 | `build/make_pages.py:164-188` | Jede Karte zeigte „Im PDF lesen“ und „Als Text lesen“; Suchtreffer und Inhaltsverzeichnis sprangen in den PDF.js-Viewer mit Werkzeugleiste. Auf dem Handy wirkte das wie zwei verschiedene Produkte. | Karte, Titel und Inhaltsverzeichnis führen nur noch in `lesen/<Dokument>.html`; pro Karte genau ein „Lesen“-Weg. Inhaltsverzeichnis springt über `#loc-N` direkt zum Abschnitt. |
| V2 | `build/web/suche.js:244-270` | Suchtreffer bauten eine PDF.js-URL (`page=…&search=…`). | Treffer führen in die Lesefassung; `?q=Begriff` markiert das Suchwort im Text und scrollt zur ersten Fundstelle. |
| V3 | `build/make_lesen.py:90-107` | Der Leser verlinkte am Fuß wieder auf die PDF. | Fußtext nennt die enthaltenen Abbildungen/Tabellen/Formeln; Navigation nur noch vor/zurück. |
| V4 | `build/make_pages.py:248-250` | PDF.js wurde bei jedem Build mit 3,3 MB ausgeliefert. | PDF.js wird nicht mehr kopiert; ein vorhandenes `_site/pdfjs` wird entfernt. PDFs bleiben als Download-Archiv erhalten. |
| V5 | `build/web/lesen.css:77-84,146-151` | Tabellen und die Kopfzeile erzwangen bei 320 px eine breitere Layout-Viewport (404 px). | `table-layout: fixed`, `overflow-wrap: anywhere`; Kopfzeile und Seitennavigation brechen auf schmalen Geräten um. `Bilder` behalten weißen Hintergrund. |
| V6 | `build/web/style.css:253-262` | Lange Suchausschnitte schoben die Trefferseite bei 320 px auf 355 px. | Treffer und Gruppentitel brechen um; `overflow-wrap: anywhere`. |

Prüfungen: `test_pages.py` **42/42**, `test_suche.js` **18/18**; lokale Linkprüfung
**510 Ziele, 0 kaputt**, Anker **341, 0 kaputt**. Chromium: 320 px und 390 px für Startseite,
Suche, Glossar, `lesen.html` und alle 16 Leseseiten ohne horizontalen Überlauf; 768/1024/1440 px
stichprobenartig ohne Überlauf. Alle MathML-Elemente haben Breite > 0, alle Bilder sind geladen;
Darkmode schaltet auf `rgb(20,22,26)`, Abbildungen bleiben auf Weiß. `check_all.sh` grün:
20 Quellen, 123 Markdown-Dateien, 14/14 Physikprüfungen, 17 PDFs/110 Seiten mit 0 Befunden.

### 15.11 Vollständigkeit, Abbildungssinn und Leser-Design (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| W1 | `build/check_lesen_vollstaendig.py` | Die Vollständigkeit war nur stichprobenartig geprüft; ein dauerhaftes Kriterium fehlte. | Neuer Prüfer vergleicht je Dokument Bilder, `#figure`, `caption`, `#table`, TOC-Ziele und den PDF-Fließtext mit der HTML-Lesefassung. Deckblatt, gedrucktes Inhaltsverzeichnis, Kopf-/Fußzeilen und Formelbestandteile werden begründet ausgenommen. Ergebnis: **16/16 Leseseiten vollständig**. |
| W2 | `build/src/03_elektronenwellen.typ:52-56`, `build/fig/elektronenbeugung_bild.svg` | Das Bild zeigte vier Ringe, der Text und die Quelle nennen beim Graphit zwei Ringe (innere und äußere Netzebenenschar). | Bild auf zwei Ringe plus Zentralfleck reduziert; Titel „zwei Ringe“. Quelle: LEIFIphysik, *Elektronenbeugungsröhre* (polykristalline Graphitschicht, innerer Ring mit \(d_1=2{,}13\cdot10^{-10}\,\mathrm{m}\)). |
| W3 | `build/src/01_wellen.typ:125-129` | Die Unterschrift sagte „Grundschwingung und erste Oberschwingung“, das Bild zeigt aber drei Momentaufnahmen derselben stehenden Welle. | Unterschrift korrigiert: drei Zeiten, feste Knoten im Abstand \(\lambda/2\). |
| W4 | `build/src/01_wellen.typ:185-190` | Die Unterschrift sprach von „oben“ und „unten“, die drei Kurven liegen aber übereinander. | Unterschrift nennt die Überlagerung ausdrücklich; Aussage zu Einzelspalt, Doppelspalt und Beugungshülle bleibt. |
| W5 | `build/src/04_doppelspalt.typ:113-125` | Die Unterschrift sprach vom „Wellenpaket“, das Bild zeigte aber die Einzelspalt-Geometrie. | Bild und Text auf den Einzelspalt umgestellt: schmaler Spalt → breite Verteilung → große Impulsunschärfe; breiter Spalt umgekehrt. Das entspricht der Schuldarstellung bei LEIFIphysik, *Die HEISENBERGsche Unbestimmtheitsrelation*. |
| W6 | `build/src/01_wellen.typ:194-205`, `276-305`; `build/src/05_mzi.typ:19-45` | Aufbau war teils nur in der Unterschrift oder Tabelle erklärt; für eine freie Experimentbeschreibung fehlten Durchführung und Beobachtung. | Für Bragg, Michelson, MZI, Polarisation und Röntgenspektrum je ein Kasten **Aufbau / Durchführung / Beobachtung / Auswertung** ergänzt. |
| W7 | `build/src/01_wellen.typ`, `07_spektren.typ`, `f9_diagramme.typ` | Einige Unterschriften nannten keine Achsen, Größen oder Steigungsbedeutung. | Unterschriften für Doppelspalt-Geometrie, Bragg, Reflexion, Michelson, Wellenfunktion und alle Diagrammfiguren um Achsen, Kurven und Steigungsdeutung ergänzt. |
| W8 | `build/web/lesen-static.js`, `build/web/lesen.css` | Der Leser hatte keine Vergrößerung, keine aktive TOC-Markierung und keinen Nach-oben-Knopf. | Abbildungen öffnen per Klick/Enter in einem nativen Dialog mit Unterschrift; TOC markiert den aktuellen Abschnitt; Nach-oben-Knopf erscheint ab 520 px; Suchtreffer pulsiert kurz. Alle Animationen respektieren `prefers-reduced-motion`. |
| W9 | `build/test_pages.py`, `build/check_all.sh` | Glossar und Bedienhilfen wurden nicht dauerhaft geprüft. | Glossartest vergleicht **104 Begriffe und Definitionen** aus `glossar.json` mit `glossar.html`; vier Tests für Dialog, TOC, Nach-oben und reduzierte Bewegung; `check_lesen_vollstaendig.py` ist Teil von `check_all.sh`. |

**Prüfstand nach dem Durchgang.** `qa_pdf.py`: **17 PDFs, 112 Seiten, 21.751 Wörter,
0 Textüberläufe, 0 Formelreste**. `check_lesen_vollstaendig.py`: **16/16**.
`test_pages.py`: **46/46** (inkl. Glossar und Reader-Interaktion), `test_suche.js`: **18/18**.
`check_physics.py`: 14/14. Die 28 SVG-Dateien wurden nur dort neu erzeugt, wo sich Inhalt
änderte (`elektronenbeugung_bild`, `unbestimmtheit`, `potenzialtopf`, `doppelspalt_geometrie`);
die übrigen behalten ihre Metadaten. Die MZI-Grafik wurde visuell erneut geprüft: Strahlteiler
sind Würfel mit Diagonale, M1/M2 getrennte Spiegel, die Strahlen laufen ST1→M1→ST2 bzw.
ST1→M2→ST2 und enden an D1/D2; die Armlängen sind 2+5 und 5+2.

**Externe Referenz für die beiden geänderten Figurenaussagen:** LEIFIphysik,
[Elektronenbeugungsröhre](https://www.leifiphysik.de/quantenphysik/quantenobjekt-elektron/versuche/elektronenbeugungsroehre)
(polykristalline Graphitschicht, Ringe, innerer Ring \(d_1=2{,}13\cdot10^{-10}\,\mathrm{m}\)) und
[Die HEISENBERGsche Unbestimmtheitsrelation](https://www.leifiphysik.de/quantenphysik/wesenszuege-quantenphysik/grundwissen/die-heisenbergsche-unbestimmtheitsrelation)
(schmaler Spalt → große Impulsunbestimmtheit, breiter Spalt → kleine).

### 15.12 Glossar-Navigation und rekursive Bedienprüfung (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| G1 | `build/web/glossar.js` | Der Glossar-Link `glossar.html?q=…` aus der Volltextsuche wurde ignoriert. Nutzer landeten auf dem Seitenanfang statt beim gesuchten Begriff. | `glossar.js` liest `?q=`, füllt das Filterfeld, filtert die Einträge und scrollt zum ersten Treffer. Exakte Begriffstreffer werden vor Treffern in Erklärungen bevorzugt. |
| G2 | `build/web/glossar.js`, `build/web/style.css` | Die zunächst verwendete Hervorhebungsklasse `treffer` kollidierte mit der globalen Trefferzahl `.treffer`; auf schmalen Geräten wurde der markierte Eintrag dadurch ausgeblendet. | Eigene Klasse `.glossar-treffer`; auf Desktop und 390 px sichtbar geprüft. |
| G3 | `build/web/suche.js` | Treffer der Glossarseite hatten keinen Anker; der Link führte nur auf `glossar.html`. | Exakte Ein-Wort-Begriffe bekommen `#glossar-<slug>`; die Glossarseite filtert zusätzlich über `?q=` und scrollt zum Treffer. |
| G4 | `build/web/glossar.js` | Nach einem Filter konnte die A–Z-Navigation eine ausgeblendete Gruppe anspringen. | A–Z setzt den Filter zurück und springt dann zur gewählten Gruppe. |
| G5 | `build/test_pages.py`, `build/test_suche.js` | Die Glossar-Navigation war nicht dauerhaft gegen Regressionen abgesichert. | Link-/Ankerprüfung für alle HTML-Seiten sowie Tests für Glossar-Zielanker, exakte Treffer und alle 104 Begriffe ergänzt. |

**Prüfstand.** `test_pages.py`: **48/48**; `test_suche.js`: **19/19**;
**674 interne Links und Anker** geprüft, 0 kaputt; **104 Glossarbegriffe**, 104
Volltextlinks, 104 exakte Filter-/Highlight-Treffer; `check_lesen_vollstaendig.py`
16/16; `check_physics.py` 14/14. Chromium: Glossar `?q=Intensität` springt zum
Eintrag „Intensität“, Suchtreffer der Glossarseite führt zu
`glossar.html?q=… #glossar-intensitaet`, A–Z und Filter funktionieren, Darkmode
schaltet, 390-px-Ansicht ohne horizontalen Überlauf.

### 15.13 Browserprüfung und MZI-Originalabbildung (01.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| B1 | `build/test_browser.py`, `build/check_all.sh`, `.github/workflows/pages.yml` | Die Bedienung war nur manuell im Chromium geprüft; ein dauerhafter Browser-E2E-Test fehlte. | Neuer Playwright-Test baut eine temporäre Website, startet einen lokalen HTTP-Server und prüft echte Klicks, Tastatur, Scrollen, Dialoge, Filter, URL-Zustände, Theme-Persistenz, alle 16 Leseseiten auf Desktop und 390 px sowie das ZIP-Archiv. **7/7**; läuft lokal und in CI. |
| B2 | `build/src/05_mzi.typ`, `build/fig/mzi_source.png`, `05_Grafiken/QUELLEN.md` | Die selbst gezeichnete MZI-Schemaabbildung war trotz Korrektur nicht die Originaldarstellung des Schulmaterials; der Nutzer verlangte die authoritative Vorlage. | `mzi01.png` von „Physik am Gymnasium Westerstede“ übernommen, Quellenangabe in Bildunterschrift und `QUELLEN.md`; das alte SVG bleibt als ungenutztes Asset erhalten. |
| B3 | Quelleninventur | Die relevanten Schulkapitel enthalten **395 unterschiedliche Bilder** (Fotos, Screenshots, Übungs- und Variantenbilder), nicht 28 1:1-Diagramme. | Kein blindes Kopieren aller Dateien: Originale nur dort, wo sie den Aufbau exakt abbilden; datenbasierte Diagramme bleiben reproduzierbar erzeugt. MZI ist der erste übernommene Fall. |

**Prüfstand 15.13.** `check_all.sh` grün: 20 Quellen, 123 Markdown-Dateien,
`check_physics.py` 14/14, `qa_pdf.py` 17 PDFs/112 Seiten/0 Befunde,
`check_lesen_vollstaendig.py` 16/16, `test_pages.py` 48/48, `test_browser.py` 7/7.
MZI-PDF: 7 Seiten, 1287 Wörter, 0 Befunde; Browser: 16 Leseseiten bei 390 px ohne
horizontalen Überlauf.

### 15.14 Nur Kerncurriculum: sieben Kapitel (02.11.2026)

| # | Stelle | Befund | Maßnahme |
|---|---|---|---|
| K1 | `build/make_pages.py`, `build/make_lesen.py`, `build/web/index.html`, `lesen.html`, `suche.html` | Website und Suche enthielten weiterhin Zusatzdokumente ohne Kerncurriculum-Bezug. | Veröffentlichung auf die sieben Kernkapitel reduziert; Zusatzgruppe, Zusatzfilter und ZIP-Einträge entfernt. |
| K2 | `build/src/02_lichtquanten.typ`, `04_doppelspalt.typ`, `05_mzi.typ` | Einzelne Abschnitte ohne Bezug zum Kerncurriculum (Physikkrise, Quantenradierer, QED, Verschränkung/Nichtlokalität). | Abschnitte entfernt; Skript 5 auf MZI, Amplituden, Welcher Weg und Delayed Choice begrenzt; Dateiname ohne QED. |
| K3 | `build/glossar.json` | Glossar enthielt Begriffe aus den entfernten Themen und Zusatzheften. | Von 104 auf 92 Begriffe reduziert; Delayed-Choice-Alias bereinigt. |
| K4 | `build/src/05_mzi.typ`, `build/fig/mzi_clean.svg` | Die übernommene Quellabbildung war unklar; Strahlteiler und Strahlführung waren nicht sauber getrennt. | Eigene SVG-Schemazeichnung mit zwei Strahlteilern, zwei Spiegeln, zwei Detektoren und Phasenplättchen; Quellenangabe angepasst. |
| K5 | `build/test_pages.py`, `test_browser.py`, `test_suche.js`, `check_lesen_vollstaendig.py` | Tests erwarteten 17 Dokumente, 112 Seiten, 16 Leseseiten und 104 Glossarbegriffe. | Auf 7 Kapitel, 51 Seiten, 7 Leseseiten und 92 Begriffe angepasst; alle Prüfungen grün. |
| K6 | `00_Projektverwaltung/KERNCURRICULUM_MAPPING.md` | Die Zuordnung der sieben Kapitel zu den 49 Kerncurriculum-Seiten war nicht dokumentiert. | Kapitel-Mapping mit Abschnitt, Quelle und Kerncurriculum-Bezug angelegt; nicht aufgenommene Bereiche benannt. |

**Prüfstand 15.14.** `check_all.sh` grün: 20 Quellen, 124 Markdown-Dateien,
`check_physics.py` 13/13, `qa_pdf.py` 7 PDFs/51 Seiten/0 Befunde,
`check_lesen_vollstaendig.py` 7/7, `test_pages.py` 48/48, `test_browser.py` 7/7.
