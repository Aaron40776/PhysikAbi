## Feder-Masse-Pendel

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann die Gleichung für die Periodendauer eines Feder-Masse-Pendels angeben.
> - Ich kann die zugehörigen Abhängigkeiten experimentell untersuchen.
> - Ich kann geeignete Ausgleichskurven ermitteln.
> - Ich kann diese Verfahren auf das Fadenpendel anwenden.
> - Ich kann ein lineares Kraftgesetz als Bedingung für die Entstehung einer mechanischen harmonischen Schwingung nennen.


---

## Federkonstante

Wenn auf eine Feder eine Kraft $F$ ausgeübt wird, verformt sich die Feder:

- Bis zu einer bestimmten Grenzkraft, die von der Feder abhängt, ist diese Verformung umkehrbar, so dass die Feder in ihre entspannte Position zurückkehrt, ohne dass sie ihre Form dauerhaft geändert hätte. Diese Verformung nennt man **elastische Verformung** der Feder. 

- Übt man zu viel Kraft auf die Feder aus, beginnt sich die Kristallstruktur im Metall der Feder zu verändern und die Feder bleibt dauerhaft verformt. Eine solche dauerhafte Verformung nennt man **plastische Verformung** der Feder.

Im Bereich der **elastischen Verformung** der Feder gilt das **Hooksche Gesetz**: die Kraft $F$, die auf die Feder wirkt, ist proportional zur Ausdehnung $s$ der Feder: $F \sim s$. 

<iframe frameborder="0" src="https://phet.colorado.edu/sims/html/hookes-law/latest/hookes-law_de.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Quelle: [PhET](https://phet.colorado.edu/de/simulation/hookes-law)

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Einführung", **aktiviere** rechts alle Markierungsfelder und **stelle** die Federkonstante auf 100 N/m ein.

2. **Lenke** mit der Maus die Feder nach rechts erst um 0,2 m aus, danach um 0,4 m und schließlich um 0,6 m und **beobachte** die Auswirkung.

3. **Klicke** in der unteren Menüleiste auf "Energie" und **aktiviere** rechts "Energie Grafik" und alle Markierungsfelder. **Lenke** die Feder nach rechts und dann nach links aus und **beobachte** die Auswirkung.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 2.**: Die auf die Feder wirkende Kraft und die bewirkte Auslenkung sind proportional zueinander. Eine Verdoppelung der wirkenden Kraft bewirkt eine Verdoppelung der Auslenkung. Die äußere Zugkraft und die rückstellende Federkraft auf die Masse sind vom Betrag gleich groß und entgegengesetzt gerichtet. Daher bleibt die Feder in Ruhe, solange die Kraft ausgeübt wird.

![](hook01.jpg)
![](hook02.jpg)
![](hook03.jpg)

**Zu 3.**: Wenn auf die Feder eine Kraft $F$ ausgeübt wird und diese um eine Strecke $s$ ausgedehnt wird, muss dafür eine mechanische Arbeit aufgewendet werden. Im idealen Fall ohne Reibungsverlust, wird diese Energie in der Feder als **Spannenergie** gespeichert. Lässt man die Feder los, kann die gespeicherte Energie die Feder zurück in Richtung ihrer Ruhelage beschleunigen. Die **Spannenergie** kann also als eine **potentielle Energie** aufgefasst werden. Wenn die Feder gedehnt oder gestaucht wird, speichert sie potentielle Energie, was im Schaubild oberhalb der Feder dargestellt wird.

![](hook04.jpg)
![](hook05.jpg)

</details>

Je nachdem, welche Feder man verwendet, muss man für die Auslenkung der Feder mehr oder weniger Kraft aufwenden.

Wenn man mit der Kraft $F$ an der Feder zieht und diese daraufhin um den Weg $s$ ausgelenkt wird, kann der Quotient aus Kraft $F$ und Auslenkung $s$ als ein Maß für die "Festigkeit" der Feder verwendet werden. 

Dieser Quotient wird **Federkonstante** $D$ genannt. Für die Federkonstante $D$ gilt also:

$$
    D = \frac{F}{s}
$$

Die Einheit der Federkonstante ist $[D] = \frac{N}{m}$. 

> [!NOTE]
>Die Federkonstante $D$ gibt an, wie viel Kraft $F$ bewirkt werden muss, um die Feder um $s = 1 \, \rm{m}$ zu dehnen.

Wenn die Federkonstante $D$ einer Feder bekannt ist, kann man ausrechnen, wie viel Kraft $F$ bewirkt werden muss, um die Feder um die Strecke $s$ zu dehnen:

$$
 F = D \cdot s
$$

Wenn eine Feder die Federkonstante $D$ hat, und um die Strecke $s$ gedehnt wird, dann speichert sie bei der Dehnung die potentielle Energie 

$$
    E_\text{spann} = \tfrac{1}{2} \cdot D \cdot s^2
$$

als **Spannenergie**. 

Sobald man die Feder loslässt, kann die gespeicherte Spannenergie genutzt werden, um die Feder zu beschleunigen, so dass sie in Richtung ihrer Ruhelage entspannt wird.

---

## Simulation: Feder-Masse-Pendel

Wenn die Feder an einer Halterung befestigt und an die Feder eine Masse $m$ gehängt wird, bewirkt die **Gravitationskraft**, dass die Feder gedehnt wird. 

Sobald die Rückstellkraft der Feder und die Gravitationskraft im **Gleichgewicht** sind, befindet sich das Feder-Masse-Pendel in seiner **Ruhelage**.

Bewirkt man eine zusätzliche Kraft, um die Masse aus ihrer Ruhelage auszulenken, wird die Feder weiter gespannt und speichert **potentielle Energie** in Form von **Spannenergie**. 

Lässt man dann die Masse los, bewirkt die Rückstellkraft, dass die Masse beschleunigt wird. 

Die gespeicherte potentielle Energie wird in **Bewegungsenergie** umgewandelt. 

Dieser Prozess wiederholt sich periodisch, so dass das **Feder-Masse-Pendel** anfängt zu schwingen. 

<iframe frameborder="0" src="https://phet.colorado.edu/sims/html/masses-and-springs/latest/masses-and-springs_de.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Quelle: [PhET](https://phet.colorado.edu/de/simulation/masses-and-springs)

<details>

  <summary>Durchführung</summary>
  
Teil 1:
- **Klicke** auf "Intro".
- **Lasse** die Federkonstanten unverändert und **hänge** an das linke Pendel eine Masse von $m = 100 \, \text{g}$ und an das rechte Pendel eine Masse von $m = 250 \, \text{g}$. 
- **Lenke** die Pendel aus und **beobachte** die Schwingung, insbesondere die Schwingungsdauer $T$ der beiden Pendel.
- **Stelle** eine Hypothese auf, wie die Periodendauer $T$ von der Masse $m$ abhängt.

Teil 2: **Führe** zur **Überprüfung der Hypothese** folgendes Experiment durch:
- **Klicke** auf "Experimente" und **wähle** für das Pendel eine geringe Federkonstante und stelle die Dämpfung auf "Keine". 
- **Ziehe** mit der Maus die Stoppuhr und das Lineal in die Simulation.
- **Messe** für mindestens 10 verschiedene Massen (beginnend mit 50 g) die Periodendauer $T$ des Feder-Masse-Pendels, indem du die Dauer für 10 vollständige Schwingungen misst und diese Zeit durch 10 teilst. 
- **Zeichne** ein geeignetes Masse-Periodendauer-Diagramm.

Teil 3:
- **Hänge** an beide Federn ein Massenstück mit $m = 100 \, \text{g}$ und **vergrößere** die Federkonstante der rechten Feder deutlich. 
- **Lenke** die Pendel aus und **beobachte** die Schwingung, insbesondere die Schwingungsdauer $T$ der beiden Pendel. 
- **Stelle** eine Hypothese auf, wie die Periodendauer $T$ von der Federkonstante $D$ abhängt.

Teil 4: **Führe** zur **Überprüfung der Hypothese** folgendes Experiment durch: 
- **Klicke** auf "Experimente" und **wähle** für das Pendel eine bestimmte Masse und stelle die Dämpfung auf "Keine". 
- **Ziehe** mit der Maus die Stoppuhr und das Lineal in die Simulation.
- **Messe** für 10 verschiedene Federkonstanten (0,1 bis 1) die Periodendauer $T$ des Feder-Masse-Pendels, indem du die Dauer für 10 vollständige Schwingungen misst und diese Zeit durch 10 teilst. 
- **Zeichne** ein geeignetes Federkonstanten-Periodendauer-Diagramm.

</details>

<details>

  <summary>Beobachtungen/Hypothesen</summary>
  
**Zu 1.**: Das Pendel, an welchem das Massenstück mit der geringeren Masse hängt, hat eine kürzere Periodendauer $T$, das heißt es pendelt pro Sekunde öfters hin und her. 

Je größer die Masse $m$ des Massenstücks an einem Feder-Masse-Pendel ist, desto größer ist die Periodendauer $T$ der Schwingung des Pendels. 

**Hypothese:** Die Periodendauer $T$ ist proportional zu $m$.

![](fmp01.jpg)

**Zu 2.**: Die experimentelle Anordnung sollte wie folgt sein:

![](fmp03.jpg)

Messtabelle:

 Masse $m$ in kg | 0,050 | 0,070 | 0,090 | 0,100 | 0,120 | 0,140 | 0,160 | 0,180 | 0,200 | 0,220 | 0,240 | 
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
Periodendauer $T$ in s | 0,58 | 0,67 | 0,76 | 0,83 | 0,92 | 0,96 | 1,02 | 1,09 | 1,15 | 1,20 | 1,26 | 

Diagramm und mathematische Regression:

![](fmp04.jpg)

**Korrektur der Hypothese:** Die Periodendauer $T$ ist proportional zu $\sqrt{m}$.

**Zu 3.**: Das Pendel mit der größeren Federkonstante $D$ hat eine kürzere Periodendauer $T$, das heißt es pendelt pro Sekunde öfters hin und her. 

Je größer die Federkonstante $D$ der Feder eines Feder-Masse-Pendels ist, desto kleiner ist die Periodendauer $T$ der Schwingung des Pendels. 

**Hypothese**: Die Periodendauer $T$ ist proportional zu $\frac{1}{D}$

![](fmp02.jpg)

**Zu 4.**: Messtabelle:

Federkonstante $D$ in N/m | 0,1 | 0,2 | 0,3 | 0,4 | 0,5 | 0,6 | 0,7 | 0,8 | 0,9 | 1,0
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- 
Periodendauer $T$ in s | 1,2 | 0,99 | 0,89 | 0,81 | 0,75 | 0,69 | 0,66 | 0,63 | 0,61 | 0,57

Diagramm und mathematische Regression:

![](fmp05.jpg)

**Korrektur der Hypothese**: Die dritte Wurzel aus der Messung ist ein ziemlich krummer Wert. Daher nehme ich an, dass die Periodendauer $T$ proportional zu $\frac{1}{\sqrt{D}}$ ist.

</details>


Die Auswertung der Experimente zum Feder-Masse-Pendel liefert folgende Hypothesen:

- Die Periodendauer $T$ ist proportional zu $\sqrt{m}$, mit $m$ = Masse des Pendelkörpers

- Die Periodendauer $T$ ist proportional zu $\frac{1}{\sqrt{D}}$, mit $D$ = Federkonstante der Feder

---

## Periodendauer eines Feder-Masse-Pendel

Für die **Periodendauer $T$ eines Feder-Masse-Pendels** gilt:

$$
 T = 2 \pi \cdot \sqrt{\cfrac{m}{D}}
$$

dabei ist $m$ = Masse des schwingenden Körpers, $D$ = Federkonstante der verwendeten Feder.

Damit haben wir eine Formel gefunden, welche die Periodendauer eines Feder-Masse-Pendels in Abhängigkeit der Masse und der Federkonstante beschreibt.

- die Periodendauer $T$ ist proportional zu $\sqrt{m}$, mit $m$ = Masse des Pendelkörpers,

- die Periodendauer $T$ ist proportional zu $\frac{1}{\sqrt{D}}$, mit $D$ = Federkonstante der Feder

Für die Beobachtung eines Feder-Masse-Pendel gilt also:

- Je größer die Masse $m$ ist, desto größer ist die Periodendauer $T$ (langsame Schwingung bei großer Masse)

- Je größer die Federkonstante $D$ ist, desto kleiner ist die Periodendauer $T$ (schnelle Schwingung bei großer Federkonstante)

Die Messung der Periodendauer im Experiment ist schwierig, weswegen systematische Messungenauigkeiten nicht auszuschließen sind. Die Messung sollte mehrfach wiederholt werden und das Messverfahren sollte optimiert werden. 

---

## Studienorientierung: Modellierung eines Feder-Masse-Pendel

> Die Herleitung ist nicht im Kerncurriculum gefordert und wird weder im Abitur noch in Klausuren geprüft. 

Beim Feder-Masse-Pendel wirken folgende Kräfte:

- die **Gravitationskraft** $F_\text{G} = m \cdot g$, mit $m$ = Masse des Pendelkörpers und $g$ = Ortsfaktor = $9,81 \, \frac{\text{N}}{\text{kg}}$

- die **rückstellende Federkraft** $F_\text{R} = D \cdot y$, mit $y$ = vertikale Auslenkung aus der Ruhelage, $D$ = Federkonstante der Feder.

Wenn sich die Pendelmasse unterhalb der Ruhelage befindet, wirkt die Rückstellkraft der Feder nach oben, die Gravitationskraft wirkt nach unten.

![](herleitung01.jpg)

Wenn sich die Pendelmasse oberhalb der Ruhelage befindet, wirkt die Rückstellkraft der Feder nach unten, genauso wie die Gravitationskraft. Die Gravitationskraft ist in beiden Situationen gleich groß, die Rückstellkraft der Feder ist unterhalb der Ruhelage jedoch wesentlich größer als oberhalb der Ruhelage.

![](herleitung02.jpg)

Die Summe aus der Gravitationskraft und der Rückstellkraft ist oberhalb und unterhalb der Ruhelage bei gleichem Abstand des Massenstücks von der Ruhelage vom Betrag gleich groß, so dass das Feder-Masse-Pendel **harmonisch** schwingt. 

![](herleitung03.jpg)
![](herleitung04.jpg)

**Vereinfachend** genügt es für die mathematische Modellierung daher z.B. nur die Situation unterhalb der Ruhelage zu betrachten und mit geeigneten Formeln zu modellieren, da das Verhalten des Pendels oberhalb der Ruhelage symmetrisch dazu ist.

**Modellierung des Schwingungsvorgangs:**

- In der **Ruhelage** befindet sich das Feder-Masse-Pendel in einer Gleichgewichtslage, in der die Gravitationskraft $F_\text{G}$ und die Federkraft $F_\text{R}$ sich gerade ausgleichen. Das Pendel steht still.

- Zieht man die Feder nach unten, dehnt man die Feder und speichert **Spannenergie** in der Feder: $E_\text{spann} = \frac{1}{2} \cdot D \cdot s^2$ (siehe Formelsammlung).

- Da die wirkende **Rückstellkraft** größer als die Gewichtskraft ist, wird die Feder mit $F = m \cdot a$ nach oben beschleunigt und die **Spannenergie** wird in **Bewegungsenergie** $E_{kin} = \frac{1}{2} \cdot m \cdot v^2$ umgewandelt. 

- Mit zunehmender Höhe wird die Bewegung durch die Gewichtskraft und die Spannkraft der Feder gebremst und die Bewegungsenergie wird in **potentielle Energie** umgewandelt, die als Spannenergie und Lageenergie gespeichert ist. Aufgrund der Gewichtskraft und der Federkraft wird das Pendel dann wieder nach unten beschleunigt. 

- Dieser Vorgang wiederholt sich solange, bis **Reibung** die Energie, welche durch die Auslenkung des Pendels aus der Ruhelage dem Feder-Masse-Pendel zugeführt wurde, in Wärmeenergie umgewandelt hat. Dann wird das Pendel wieder in seiner **Ruhelage** ruhen. 

In der weiteren Betrachtung werden alle Reibungskräfte vernachlässigt.

In der **Ruhelage** ist die Gewichtskraft $F_\text{G}$ im Gleichgewicht mit der Rückstellkraft der Feder $F_\text{R}$:

$$
\begin{align}
    F_\text{G} &= F_\text{R} \\
    m \cdot g &= D \cdot y_0 \\
    y_0 &= \frac{m \cdot g}{D}
\end{align}
$$

In der **Ruhelage** einer Feder, an welcher eine Masse $m$ hängt, wurde die Feder um den Weg $y_0 = \frac{m \cdot g}{D}$ im Vergleich zur Ruhelage ohne Massenstück nach unten ausgelenkt.

Lenkt man das Feder-Masse-Pendel nach unten aus der Ruhelage aus, ist die resultierende Kraft die Differenz aus der Rückstellkraft und der Gravitationskraft, die einander entgegengesetzt gerichtet sind. Da die rückstellende Kraft von der Auslenkung abhängt, ändert sich diese bei der Bewegung des Massenstücks ständig. Die rückstellende Kraft und daher auch die resultierende Kraft werden daher als **Funktionen in Abhängigkeit von der Zeit** $t$ geschrieben: $F_\text{res}(t) = F_\text{R}(t) - F_\text{G}$

- Für die rückstellende Kraft gilt: $F_\text{res}(t) = D \cdot s = D \cdot (y_0-y(t))$

- Die Gravitationskraft ändert sich nicht und es gilt: $F_\text{G} = m \cdot g$

Zusammen folgt damit:

$$
\begin{align}
F_\text{res}(t) &= F_\text{R}(t) - F_\text{G}\\
 &= D (y_0-y(t)) - m \, g\\
 &= D \left(\cfrac{m \cdot g}{D} - y(t) \right) - m \, g\\
 &= m \, g - D \, y(t) - m \, g\\
 &= - D \, y(t)
\end{align}
$$

Für die resultierende Kraft, welche auf das Feder-Masse-Pendel wirkt, gilt also: 

$$
F_\text{res}(t) = - D \, y(t)
$$

Diese resultierende Kraft bewirkt eine **Beschleunigung** des Massestücks. Da die beschleunigende Kraft sich ständig ändert, ändert sich auch die Beschleunigung des Massenstücks ständig. 

Für den Zusammenhang zwischen der beschleunigenden Kraft $F_\text{B}(t)$ und der daraus resultierenden Beschleunigung gilt: $F_\text{B}(t) = m \cdot a(t)$ und damit:

$$
\begin{align}
    F_\text{B}(t) &= F_\text{res}(t) \\
    m \cdot a(t) &= - D \cdot y(t)
\end{align}
$$

Die **Geschwindigkeit** $v$ ist die Änderung des Weges $y$, während die Zeit vergeht. Ist diese Änderung konstant gilt: $v = \frac{y}{t}$. 

Beim Feder-Masse-Pendel ändert sich der Weg, den das Massenstück zurücklegt aber nicht gleichbleibend. Man kann für die Bewegung des Feder-Masse-Pendel also zu einem bestimmten Zeitpunkt nur die Momentangeschwindigkeit angeben. 

Die Geschwindigkeit ist damit eine Funktion der Zeit $v(t)$ und kann als Ableitung der Ortsfunktion $v(t) = \frac{dy(t)}{dt} = (y(t))'$ angegeben werden. **Mathematisch ist die Geschwindigkeit die zeitliche Ableitung des Weges**.

Die **Beschleunigung** $a$ beschreibt die Änderung der Geschwindigkeit $v$. Ist die Änderung der Geschwindigkeit konstant, kann man schreiben: $a = \frac{v}{t}$. 

Bei nicht konstanter Beschleunigung ist die Beschleunigung eine Funktion der Zeit $a(t)$ und kann als Ableitung der Geschwindigkeitsfunktion $a(t) = \frac{dv(t)}{dt} = (v(t))'$ angegeben werden. 

**Mathematisch ist die Beschleunigung die zeitliche Ableitung der Geschwindigkeit**.

Setzt man diese Einsichten zusammen, folgt, dass die **Beschleunigung die Änderung der Änderung des Weges zu einem bestimmten Zeitpunkt ist**. Mathematisch kann man das wie folgt schreiben:

$$
    a(t) = (v(t))' = ((y(t))')' = (y(t))''
$$

Anstelle der Beschleunigungsfunktion $a(t)$ setzt man die zweite Ableitung der Ortsfunktion $(y(t))''$ ein:

$$
\begin{align}
    F_\text{B}(t) &= F_\text{res}(t) \\
    m \cdot a(t) &= - D \cdot y(t) \\
    m \cdot (y(t))'' &= - D \cdot y(t) \\
    (y(t))'' &= - \cfrac{D}{m} \cdot y(t) \\
    (y(t))'' + \cfrac{D}{m} \cdot y(t) &= 0
\end{align}
$$

Diese Gleichung enthält eine Weg-Zeit-Funktion $y(t)$ und deren zweite Ableitung $(y(t))''$. Eine solche Gleichung nennt man eine **Differentialgleichung**. 

Jetzt soll versucht werden, eine Funktion zu erraten, welche diese Gleichung löst. Eine Lösungsfunktion kann eine Funktion sein, deren zweite Ableitung bis auf einen Faktor gleich der ursprünglichen Funktion ist. Die Mathematik kennt eine Funktion, deren 2. Ableitung bis auf ein Vorzeichen mit der ursprünglichen übereinstimmt: 

$$
\begin{align}
    (\sin(x))' &= \cos(x) \\
    (\cos(x))' &= - \sin(x) \\
    (\sin(x))'' &= - \sin(x)
\end{align}    
$$

Wir suchen also eine Funktion $a \cdot \sin(b \cdot x)$, die folgende Gleichung löst: $(y(t))'' = - \cfrac{D}{m} \cdot y(t)$.

Das negative Vorzeichen wird von der zweiten Ableitung der sin-Funktion bereitgestellt. Die Kettenregel liefert die innere Ableitung als Produkt, also brauchen wir den Faktor $a$ nicht. 

Da wir zwei Mal ableiten, wird der Faktor, der im Argument der Sinusfunktion steht zwei Mal mit sich selbst multipliziert. Wir suchen also einen Faktor $b$, so dass gilt:

$$
\begin{align}
b \cdot b = \frac{D}{m} \\
b^2 = \frac{D}{m}
\end{align}  
$$

Uns interessiert nur die positive Lösung, also gilt: $b = \sqrt{\frac{D}{m}}$, denn

$$
\sqrt{\frac{D}{m}} \cdot \sqrt{\frac{D}{m}} = \frac{D}{m}
$$

Damit könnte eine geeignete Funktion konstruiert worden sein, welche die Differenzialgleichung löst: 

$$
    y(t) = \sin \left(\sqrt{\frac{D}{m}} \cdot t \right)
$$

**Probe:** Wir berechnen zweite Ableitung der gefundenen Funktion und setzen die Funktion und ihre zweite Ableitung in die Differenzialgleichung ein. Wenn die Differenzialgleichung gelöst ist, haben wir eine geeignete Funktion gefunden.

$$
\begin{align}
y(t) &= \sin \left(\sqrt{\cfrac{D}{m}} \cdot t \right)\\
y'(t) &= \sqrt{\cfrac{D}{m}} \cos \left(\sqrt{\cfrac{D}{m}} \cdot t \right)\\
y''(t) &= \sqrt{\cfrac{D}{m}} \cdot \sqrt{\cfrac{D}{m}} \left( -\sin \left(\sqrt{\cfrac{D}{m}} \cdot t \right) \right) = - \cfrac{D}{m} \cdot \sin \left(\sqrt{\cfrac{D}{m}} \cdot t \right) = - \cfrac{D}{m} \cdot y(t)
\end{align}
$$

Die zweite Ableitung von $y(t) = \sin \left(\sqrt{\frac{D}{m}} \cdot t \right)$ ist gleich $- \cfrac{D}{m} \cdot y(t)$ und löst damit die Differenzialgleichung, eignet sich also zur Beschreibung des Schwingungsvorgangs des Feder-Masse-Pendels. 

Führt man noch eine Amplitude $A$ für die Schwingung ein, folgt insgesamt für die **Schwingungsfunktion des Feder-Masse-Pendels**:

$$
 y(t) = A \cdot \sin \left(\sqrt{\frac{D}{m}} \cdot t \right)
$$

Im Kapitel "Schwingungen" wurde die allgemeine Schwingungsfunktion eingeführt:

$$
 y(t) = A \cdot \sin(\omega \cdot t) = A \cdot \sin \left( \frac{2 \pi}{T} \cdot t \right)
$$

Vergleicht man die gefundene Schwingungsfunktion $y(t) = A \cdot \sin \left(\sqrt{\frac{D}{m}} \cdot t \right)$ mit der allgemeinen Form $y(t) = A \cdot \sin \left( \frac{2 \pi}{T} \cdot t \right)$, folgt: 

$$
   A \cdot \sin \left( \frac{2 \pi}{T} \cdot t \right) = A \cdot \sin \left(\sqrt{\frac{D}{m}} \cdot t \right)
$$

Vergleicht man die Argumente der Sinusfunktion, so gilt:

$$
    \frac{2 \pi}{T} = \sqrt{\frac{D}{m}}
$$

Diese Gleichung kann man nach der Periodendauer $T$ auflösen:

$$
\begin{align}
    \frac{2 \pi}{T} &= \sqrt{\frac{D}{m}} \\
    2 \pi &= T \cdot \sqrt{\frac{D}{m}} = T \cdot \frac{\sqrt{D}}{\sqrt{m}}\\
    2 \pi \cdot \frac{\sqrt{m}}{\sqrt{D}} &= T \\
    T &= 2 \pi \cdot \sqrt{\frac{m}{D}} \\
\end{align}    
$$

Damit wurde die Formel für die Periodendauer eines Feder-Masse-Pendels erfolgreich hergeleitet.

---