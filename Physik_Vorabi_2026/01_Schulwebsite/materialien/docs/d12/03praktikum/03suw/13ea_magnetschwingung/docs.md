## P3.3 Magnetschwingung

---

## E01: Schwingender Magnet

**E01.1:** **Baue** den Grundaufbau mit der Bodenplatte, zwei vertikalen und einer horizontalen Stange auf. **Befestige** in der vereinbarten Weise den Kraftmesser an der horizontalen Stange.

**Befestige** an dem Stabmagneten den Haken-Magneten und hänge den Stabmagneten an die lange Feder. **Nimm** aus dem Ultraschallwellen-Kasten eine der transparenten Boxen und **lege** den Deckel als Erhöhung unter die Feder. **Stelle** auf den transparenten Deckel die Induktionsspule mit dem Kabel nach unten. **Platziere** die Spule so, dass das Kabel zum MEC-Board gelegt werden kann. **Verbinde** den Kraftmesser über den Anschluss A des MEC-Boards mit dem Oszilloskop und **verbinde** die Induktionsspule über den Anschluss C mit dem Zeiger-Voltmeter. **Dokumentiere** den Versuchsaufbau mit einem Foto.

**Bestimme** die Frequenz $f$ des schwingenden Magneten. **Messe** die maximale Spannung $U_\text{ind}$, welche in der Induktionsspule induziert wird.

**Erstelle** einen Graphen der Änderung des Magnetfelds $\frac{dB}{dt}$ mit Hilfe des Induktionsgesetzes $U_\text{ind} = - N \cdot A \cdot \frac{dB}{dt}$. **Ermittle** durch **Aufleiten** einen Graphen, welcher das Magnetfeld $B(t)$ modelliert. 

Spulendaten: Windungszahl N = 1000, Widerstand R = 300 Ohm, Innendurchmesser d = 30 mm, Spulenlänge l = 60 mm.

---

## E02: Gedämpfte Schwingung

**E02.1:** **Baue** den Grundaufbau mit der Bodenplatte, zwei vertikalen und einer horizontalen Stange auf. **Befestige** in der vereinbarten Weise den Kraftmesser an der horizontalen Stange.

**Befestige** an dem Stabmagneten den Haken-Magneten und hänge den Stabmagneten an die lange Feder. **Nimm** aus dem Ultraschallwellen-Kasten eine der transparenten Boxen und **lege** den Deckel als Erhöhung unter die Feder. **Stelle** auf den transparenten Deckel die Induktionsspule mit dem Kabel nach unten. **Platziere** die Spule so, dass das Kabel zum MEC-Board gelegt werden kann. **Verbinde** den Kraftmesser über den Anschluss A des MEC-Boards mit dem Oszilloskop und **verbinde** die Induktionsspule über den Anschluss C mit dem Zeiger-Voltmeter. **Dokumentiere** den Versuchsaufbau mit einem Foto.

**Schiebe** auf das oberen Ende der Induktionsspule den Gummiring und **setze** auf den Gummiring den Metallring. 

**Bringe** den Magneten zum Schwingen. Die Schwingung erfolgt erheblich gedämpft. Zusätzlich zum Luftwiderstand und zu den Reibungseffekten dämpft der Metallring die Schwingung des Magneten.

**Erkläre** dieses Phänomen.

---

**E02.2:** **Filme** den gedämpften Schwingungsvorgang und **erstelle** aus der Videoanalyse eine Messtabelle. **Erstelle** auf Basis der Messtabelle ein Auslenkungs-Zeit-Diagramm.

**Bestimme** die prozentuale Abnahme der Amplitude pro Zeitschritt (in unserem Fall pro Sekunde) und **entwickle** eine Formel, welche die gedämpfte Schwingung modelliert. **Plotte** den Graphen der modellierten Funktion im gleichen Schaubild wie die Messdaten und **vergleiche** beide Graphen.

---

## Mathematik zur gedämpften Schwingung

Um eine gedämpfte Schwingung zu modellieren, gehen wir davon aus, dass die Amplitude einer Schwingung in jedem gleichen Zeitintervall (z.B. 1 Sekunde) um den gleichen Anteil abnimmt. Mathematisch handelt es sich dann um eine **exponentielle Abnahme** der Amplitude, da in gleichen Zeitintervallen der Bestand um den gleichen prozentualen Anteil abnimmt.

**Beispiel:** Wenn in jedem Zeitschritt die Amplitude $A$ um 10% abnimmt, dann wäre eine geeignete Modellierung des Veränderung der Amplitude:

$$
    A(t) = A_0 \cdot 0,9^t = A_0 \cdot e^{ln(0,9) \cdot t}
$$

Umwandlung der Exponentialfunktion zur Basis $0,9$ in eine Exponentialfunktion zur Basis $e$:

$$
\begin{align}
    A(t) &= A_0 \cdot 0,9^t \\
    \frac{A(t)}{A_0} &= 0,9^t \qquad | ln \\
    ln \left(\frac{A(t)}{A_0}\right) &= ln(0,9^t) \\
    ln\left(\frac{A(t)}{A_0}\right) &= t \cdot ln(0,9) \qquad | e^x \\
    \frac{A(t)}{A_0} &= e^{t \cdot ln(0,9)} \\
    A(t) &= A_0 \cdot e^{ln(0,9) \cdot t}
\end{align}
$$

Insgesamt kann eine **gedämpfte Schwingung** deren Amplitude um $p$ % in jedem Zeitschritt abnimmt, wie folgt mathematisch beschrieben werden:

$$
  y(t) = A(t) \cdot sin(\omega \cdot t + \phi) = A_0 \cdot (1-\tfrac{p}{100})^t \cdot sin(\omega \cdot t + \phi) = A_0 \cdot e^{ln \left( 1-\tfrac{p}{100} \right) \cdot t} \cdot sin(\omega \cdot t + \phi)
$$

Zur Vereinfachung fasst man den Ausdruck $ln \left( 1-\tfrac{p}{100} \right)$ zu einer Konstanten, der **Dämpfungskonstanen** $k$ zusammen. Da der Logarithmus einer Zahl, die zwischen 0 und 1 liegt negativ ist, die Dämpfungskonstante aber als positivie Zahl notiert wird, gilt:

$$
 k = - ln \left( 1-\tfrac{p}{100} \right)
$$

Für eine gedämpfte Schwingung gilt damit:

$$
 y(t) = A_0 \cdot e^{- k \cdot t} \cdot sin(\omega \cdot t + \phi)
$$

Plottet man eine solche Funktion, entsteht die **Sinuskurve der gedämpften Schwingung**. 

---

## Protokoll

**Erstelle** mit einem Textverarbeitungsprogramm deiner Wahl das Praktikumsprotokoll, **exportiere** es als PDF-Dokument und **gib** es in der vereinbarten Weise ab.

**Benenne** die Datei in der Form: **kursnummer_P1.1_nachname_vorname.pdf**. 

---