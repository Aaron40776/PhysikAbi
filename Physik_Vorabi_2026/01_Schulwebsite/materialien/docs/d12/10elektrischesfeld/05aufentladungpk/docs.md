## Aufladung und Entladung eines Kondensators

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann den t-I-Zusammenhang und die t-U-Zusammenhänge beim Aufladevorgang und beim Entladevorgang eines Kondensators mithilfe einer Exponentialfunktion beschreiben.
> - Ich führe selbstständig Experimente zum Auf- und Entladevorgang hinsichtlich Stromstärke und Spannung durch.
> - Ich kann aus den Messdaten den zugehörigen t-I- bzw. t-U-Zusammenhang ermitteln.
> - Ich kann den Zusammenhang zwischen der Halbwertszeit und dem Produkt aus R und C überprüfen.
> - Ich kann die Auswahl einer exponentiellen Regression auf der Grundlage der Messdaten begründen. 
> - Ich kann die geflossene Ladung mithilfe von t-I-Diagrammen ermitteln. 

---

## Schaltung

### Kondensator-Aufladung

- Ein Kondensator mit der Kapazität $C$ wird an eine Gleichspannungsquelle angeschlossen.

- An der Gleichspannungsquelle wird ein fester Spannungswert $U$ eingestellt.

- Zusätzlich zum Kondensator kann ein Widerstand $R$ in den Stromkreis eingebaut sein, welcher die Aufladestromstärke $I$ begrenzt.

![](aufladung.png)

<details>

  <summary>Kondensator-Aufladung im Detail</summary>
  
Die Kondensatorplatte, welche am negativen Pol der Gleichspannungsquelle angeschlossen wird, ist zu Beginn des Aufladevorgangs elektrisch neutral.

Nachdem der Schalter geschlossen wurde, stößt der negative Pol der Ladungsquelle Elektronen ab und "pumpt" diese auf die angeschlossene Kondensatorplatte. Der Aufladevorgang beginnt:

- Je mehr Elektronen auf der zunehmend negativeren Platte vorhanden sind, desto mehr stoßen sich diese voneinander ab. 

- Irgendwann sind dann so viele Elektronen auf der negativ geladenen Platte, dass die abstoßenden Kräfte der Elektronen auf der Kondensatorplatte gleich groß sind wie die abstoßenden Kräfte der Spannungsquelle. 

- Sobald das Kräftegleichgewicht erreicht wird, ist die maximale Kondensator-Ladung $Q_0$ und die maximale Kondensator-Spannung $U_0$ (entspricht der von außen anliegenden Spannung) erreicht. 

- Die Stromstärke $I$ ist am Anfang des Aufladevorgangs am größten, da die Elektronen maximal von der Spannungsquelle abgestoßen werden, aber noch keine Gegenkraft von der noch neutralen Kondensatorplatte erfahren. 

- Je größer die Anzahl der Elektronen auf der Kondensatorplatte wird, desto größer wird die abstoßende Kraft und die Stromstärke des Aufladestroms sinkt. 

- Sobald die abstoßenden Kräfte der Spannungsquelle und der negativ geladenen Kondensatorplatte gleich groß sind, ist die Kondensatorplatte vollständig geladen und der Aufladestrom kommt zum Erliegen.

Für die am positiven Pol der Spannungsquelle angeschlossene Kondensatorplatte kann die Argumentation analog erfolgen, mit dem Unterschied, dass jetzt Anziehungskräfte auf die Elektronen wirken.

Der Widerstand $R$ begrenzt die Stromstärke $I$ des Aufladestroms wegen $U = R \cdot I$, also $I = \frac{U}{R}$.

</details>

---

### Kondensator-Entladung

- Der Kondensator wird mit sich selbst verbunden.

- Der Kondensator entlädt sich.

- Zusätzlich zum Kondensator kann ein Widerstand $R$ in den Stromkreis eingebaut sein, welcher die Entladestromstärke $I$ begrenzt.

![](entladung.png)

<details>

  <summary>Kondensator-Entladung im Detail </summary>

Die Kondensatorplatte, welche am negativen Pol der Gleichspannungsquelle angeschlossen wird, ist zu Beginn des Entladevorgangs mit der Ladung $Q_0$ maximal geladen. Die angeschlossene Spannungsquelle verhindert einen Ladungsausgleich. 

Legt man den Schalter um, so dass der Kondensator von der Spannungsquelle getrennt wird (siehe Abbildung zur Kondensator-Entladung) und die beiden Kondensatorplatten leitend verbunden sind, beginnt der Entladungsvorgang. 

- Die Elektronen der negativ geladenen Kondensatorplatte stoßen sich gegenseitig ab und werden von den Protonen der positiv geladenen Kondensatorplatte angezogen. 

- Die Elektronen fließen solange von der negativ geladenen Kondensatorplatte zur positiv geladenen, bis beide Platten elektrisch neutral sind und die resultierenden abstoßenden und anziehenden Kräfte auf die Elektronen verschwinden.

- Die Stromstärke $I$ ist am Anfang des Entladungsvorgangs am größten, da die Elektronen maximal von der negativ geladenen Kondensatorplatte abgestoßen und maximal von der positiv geladenen Kondensatorplatte angezogen werden. 

- Je geringer die Anzahl der überschüssigen Elektronen auf der negativ geladenen Kondensatorplatte ist und je geringer die Anzahl der fehlenden Elektronen auf der positiv geladenen Kondensatorplatte ist, desto geringer wird die Stromstärke $I$ des Entladestroms.

Auch hier begrenzt der Widerstand $R$ die Stromstärke $I$ des Entladestroms wegen $U = R \cdot I$, also $I = \frac{U}{R}$.

Bei der Aufladung und der Entladung des Kondensators ändern sich die Spannung zwischen den Kondensatorplatten und die Stromstärke ständig. Diese beiden Größen werden deswegen als eine Funktion der Zeit dargestellt:

$$
 I(t) = \frac{U(t)}{R}
$$

</details>

---

### Simulation: Veranschaulichung

> <a href="https://phet.colorado.edu/sims/html/capacitor-lab-basics/latest/capacitor-lab-basics_de.html" target="_blank">Simulation in neuem Fenster öffnen</a>

<iframe src="https://phet.colorado.edu/sims/html/capacitor-lab-basics/latest/capacitor-lab-basics_de.html" width="100%" height="700" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf der Startseite auf "Lichtquelle". **Lade** den Kondensator auf, indem du die Spannungsquelle auf -1,5 V einstellst. **Trenne** dann den Kondensator von der Spannungsquelle, indem du den Schalter in die Mittenstellung bewegst.

2. **Aktiviere** oben "Gespeicherte Energie" und lege den Schalter in die rechte Stellung um, so dass der Stromkreis von Kondensator und Lampe geschlossen wird.

3. **Wiederhole** das simulierte Experiment für unterschiedliche Spannungen.

</details>

<details>

  <summary>Beobachtungen und Folgerungen</summary>
  
**Zu 1.**: Die Aufladung des Kondensators läuft in der Simulation fast ohne Verzögerung ab. Wenn der Kondensator aufgeladen ist, hat der Kondensator elektrische Energie gespeichert.

![](entladung01.png)

Bei der Aufladung des Kondensators ist kein Widerstand (Energieumwandler) in den Stromkreis eingebaut. Nur die Kabel selbst stellen den fließenden Elektronen einen kleinen Widerstand entgegen. Der Aufladevorgang erfolgt mit einer sehr großen Stromstärke, weswegen der Kondensator in wenigen Augenblicken aufgeladen ist.

**Zu 2.**: Sobald der Stromkreis mit Kondensator und Lampe geschlossen ist, fließen Elektronen von der negativ geladenen Platte zur positiv geladenen Platte, da die Elektronen sich auf der negativ geladenen Platte gegenseitig abstoßen und von den Protonen der positiv geladenen Platte angezogen werden. In der Lampe wird ein Teil der gespeicherten elektrischen Energie in Licht- und Wärmenergie umgewandelt. Es dauert in der Simulation einige Sekunden, bis der Kondensator entladen ist. Sobald beide Platten elektrisch neutral sind, leuchtet die Lampe nicht mehr.

![](entladung02.png)

Bei der Entladung des Kondensators ist ein Widerstand (Glühbirne als Energieumwandler) in den Stromkreis eingebaut. Da ein großer Teil der im Kondensator gespeicherten Energie von der Glühbirne in Licht- und Wärmeenergie umgewandelt wird, steht diese Energie nicht mehr für den Ladungstransport zur Verfügung. Die Stromstärke $I$ nimmt dadurch stark ab und es dauert deutlich länger, bis der Kondensator entladen ist.

</details>

---

### Simulation: Messvorgang

> <a href="/apps/elektrik_simulator/circuitjs.html?startCircuit=002_kondensator_aufentladung.txt" target="_blank">Simulation in neuem Fenster öffnen</a>


<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=002_kondensator_aufentladung.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf den Schalter im Stromkreis, so dass der Kondensator aufgeladen wird. **Lege** nach der Aufladung des Kondensators den Schalter wieder um, damit der Kondensator entladen wird. **Beobachte** die Änderung von Stromstärke und Spannung im unteren Schaubild. Du kannst die Maus auf einen Graphen bewegen, um die Werte angezeigt zu bekommen.

2. **Doppelklicke** auf den Widerstand und ändere den Widerstandswert auf $1 \, \Omega$. **Lade** und **Entlade** den Kondensator und vergleiche die zeitliche Entwicklung von Stromstärke und Spannung mit dem Widerstand $100 \, \Omega$.

3. **Variiere** die Kapazität des Kondensators (Doppelklick auf den Kondensator) und den Widerstandswert und beobachte die Auswirkung auf die zeitliche Entwicklung von Stromstärke und Spannung.

</details>

<details>

  <summary>Beobachtungen und Folgerungen</summary>
  
**Zu 1.**: Bei der Aufladung sieht die Kurve der Stromstärke wie das Schaubild einer abnehmenden Exponentialfunktion aus. Die Kurve der Spannung sieht wie das Schaubild einer Funktion zum begrenzten Wachstum aus. 

![](entladung03.png)

Bei der Entladung des Kondensators sehen beide Kurven wie das Schaubild einer abnehmenden Exponentialfunktion aus, wobei das Schaubild der Stromstärke an der x-Achse gespiegelt ist (entgegengesetzte Stromrichtung, deswegen Vorzeichenwechsel).

![](entladung04.png)

**Zu 2.**: Wenn der Widerstand auf $1 \, \Omega$ verkleinert wird, ist die Kondensator fast augenblicklich aufgeladen.

![](entladung05.png)

Auch der Entladevorgang geschieht bei $1 \, \Omega$ fast augenblicklich.

![](entladung06.png)

**Zu 3.**: Mit einer geeigneten Kombination von Kondensatorkapazität und Widerstandswert kann der Auf- und Entladevorgang zeitlich gedehnt werden.

![](entladung07.png)

Die zeitliche Änderung der Größen **Stromstärke** $I$, **Ladung** $Q$ und **Spannung** $U$ kann mit Hilfe einer Exponentialfunktion mathematisch modelliert werden.

</details>

---

## Modellierung der Entladung eines Plattenkondensators

Der Aufladestromkreis wird geschlossen und der Kondensator wird aufgeladen. Sobald der Kondensator voll aufgeladen ist, wird der Entladestromkreis geschlossen und der Entladevorgang beginnt. 

### Quantitative Überlegungen

- Sobald einige Elektronen die Platte verlassen haben, wird die gegenseitige Abstoßungskraft zwischen den Elektronen geringer. Die Stromstärke im Entladestromkreis wird kleiner.

- Die Abstoßungskraft zwischen den Elektronen ist abhängig von der Anzahl der Elektronen auf der negativ geladenen Platte.

- Folglich ist die **Änderung des Bestand an Elektronen** (= Stromstärke $I$) proportional zum **Bestand von Elektronen** (= Ladung $Q$) auf der negativ geladenen Platte. 

Eine geeignete Modellierung dafür ist die **Exponentialfunktion**: $f(x) = a \cdot b^x$

Damit kann man die Bestandveränderung der physikalischen Größen am Kondensator mit Hilfe von eine Exponentialfunktion geeignet modelliert werden:

##### Stromstärke $I$

$$ I(t) = I_0 \cdot b^t $$

##### Ladung $Q$

$$ Q(t) = Q_0 \cdot b^t $$

##### Spannung $U$

$$ U(t) = U_0 \cdot b^t $$

---

### Physikalisierung

Die Exponentialfunktion $f(x) = a \cdot b^x$ kann mit Hilfe der Eulerschen Zahl $e$ wie folgt geschrieben werden:

$$
  f(x) = a \cdot e^{ln(b) \cdot x}
$$

Der **Entladevorgang** eines Kondensators ist abhängig von der Kapazität $C$ des Kondensators und dem Gesamtwiderstand $R$ des Entladestromkreises. 

##### Stromstärke $I(t)$ im Stromkreis

$$ I(t) = - I_{0} \cdot e^{-\frac{1}{R \cdot C} \cdot t} $$

##### Ladung $Q(t)$ auf den Kondensatorplatten

$$ Q(t) = Q_0 \cdot e^{-\frac{1}{R \cdot C} \cdot t} $$

##### Spannung $U_C(t)$ am Kondensator

$$ U_C(t) = U_0 \cdot e^{-\frac{1}{R \cdot C}\cdot t} $$

<details>

  <summary>Studienorientierung: Herleitung der Formeln</summary>
  
Die konstante Spannung $U_0$ des Spannungsgeräts teilt sich auf in die Kondensatorspannung $U_C$ (die wegen der Ladungstrennung entsteht) und die über dem ohmschen Widerstand abfallende Spannung $U_R$ (Spannung = Energie pro Ladung. 

Solange ein Strom $I$ durch den ohmschen Widerstand fließt, wandelt dieser elektrische Energie in Wärmeenergie um, daher misst man während der Kondensatoraufladung und Kondensatorentladung einen Spannungsabfall über dem Widerstand):

$$
  U_C + U_R = U_0
$$

##### Spannung am Kondensator

Für die Kapazität eines Kondensators gilt: $C = \frac{Q}{U_C}$, also gilt für die Spannung $U_C$ am Kondensator: $U_C = \frac{Q}{C}$. Die Kapazität des Kondensators ist eine **Konstante**, beim Auflade- bzw. Entladevorgang **ändert** sich die Spannung und die Ladung in jedem Moment. Daher beschreibt man den zeitlichen Verlauf der Spannung $U_C(t)$ am Kondensator wie folgt:

$$
U_C(t) = \frac{Q(t)}{C}
$$

##### Spannungsabfall über dem Widerstand

Der Widerstand wandelt elektrische Energie in Wärmeenergie um, daher erfahren die Elektronen einen Energieverlust, der um so höher ist, je größer die Stromstärke am Widerstand ist. Für den Spannungsabfall am Widerstand gilt: $U_R = R \cdot I$. Der Widerstand im Versuch soll ein ohmscher Widerstand sein, dessen Widerstandswert bei verschiedenen Stromstärken **konstant** ist. Die Stromstärke $I$ **ändert** sich während des Auflade- bzw. Entladevorgangs in jedem Moment. Daher beschreibt man den zeitlichen Verlauf des Spannungsabfalls am Widerstand wie folgt:

$$
U_R(t) = R \cdot I(t)
$$

Die Stromstärke kann als zeitliche Änderung der Ladung am Kondensator beschrieben werden: $I(t) = \frac{dQ(t)}{dt}$, also gilt für den Spannungsabfall am Widerstand $U_R(t) = R \cdot \frac{dQ(t)}{dt} = R \cdot \dot{Q(t)}$. Dabei ist $\frac{dQ(t)}{dt}$ die zeitliche Ableitung der Funktion $Q(t)$.

##### Entladevorgang

Während des Entladevorgangs liegt keine Spannung von außen an, so dass $U_0 = 0$ und es gilt:

$$
 U_C(t) + U_R(t) = \frac{Q(t)}{C} + R \cdot \frac{dQ(t)}{dt} = 0
$$

Teilt man diese Gleichung durch $R$, entsteht folgende Differentialgleichung:

$$
 \frac{1}{R \cdot C} \cdot Q(t) + \frac{dQ(t)}{dt} = 0
$$

Eine mögliche Lösungsfunktion ist:

$$
Q(t) = Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t}
$$

Probe:

$$
\frac{dQ(t)}{dt} = Q'(t) =  Q_0 \cdot \left(- \frac{1}{R \cdot C} \right) \cdot  e^{- \frac{1}{R \cdot C} \cdot t} =  - \frac{Q_0}{R \cdot C} \cdot  e^{- \frac{1}{R \cdot C} \cdot t}
$$

Einsetzen:

$$
\begin{align}
 \frac{1}{R \cdot C} \cdot Q(t) + \frac{dQ(t)}{dt} &= 0 \\
 \frac{1}{R \cdot C} \cdot Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t} - \frac{Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} &= 0 \\
 \frac{Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} - \frac{Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} &= 0 \\
 0 &= 0 
\end{align}
$$

Damit ist $Q(t) = Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t}$ eine geeignete Funktion, um die zeitliche Veränderung der Ladung auf dem Kondensator während des Entladevorgangs zu beschreiben.

Die **Stromstärke $I(t)$** ist die zeitliche Änderung der Ladung $Q(t)$. Mit $U_0 = \frac{Q_0}{C}$ und $I_0 = \frac{U_0}{R}$ folgt:

$$
 I(t) = \frac{dQ(t)}{dt} = Q'(t) =  - \frac{Q_0}{R \cdot C} \cdot  e^{- \frac{1}{R \cdot C} \cdot t} = - \frac{U_0}{R} \cdot  e^{- \frac{1}{R \cdot C} \cdot t} = - I_0 \cdot  e^{- \frac{1}{R \cdot C} \cdot t}
$$

Für die **Spannung $U_C$** am Kondensator gilt: $U_C(t) = \frac{Q(t)}{C}$, also:

$$
 U_C(t) = \frac{Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t}}{C} = U_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t}
$$

> Damit sind die Formel erfolgreich hergeleitet worden.

</details>

---

### Halbwertszeit beim Entladungsvorgang

Die **Halbwertszeit $t_H$** ist das Zeitintervall, in welchem sich die Ladungsmenge auf dem Kondensator halbiert hat. Für die Halbwertszeit kann eine Formel hergeleitet werden. 

Für die Ladung $Q(t)$ auf dem Kondensator gilt während des Entladungsvorgangs:

$$
Q(t) = Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t}
$$

Nach der Halbwertszeit $t_H$ ist noch die Hälfte der Ladung auf den Kondensatorplatten vorhanden. Dabei gilt:

$$
 Q(t_H) = \tfrac{1}{2} \cdot Q_0
$$

Setzt man $\tfrac{1}{2} \cdot Q_0$ für die Ladung $Q(t_H)$ ein, folgt:

$$
\begin{align}
 Q(t) &= Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t} \\
 Q(t_H) &= Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t_H} \\
 \tfrac{1}{2} \cdot Q_0 &= Q_0 \cdot e^{- \frac{1}{R \cdot C} \cdot t_H} \; | \; : Q_0 \\
 \tfrac{1}{2} &= e^{- \frac{1}{R \cdot C} \cdot t_H} \; | \; \ln\\ 
 \ln \left( \tfrac{1}{2} \right) &= \ln \left(e^{- \frac{1}{R \cdot C} \cdot t_H} \right) \\
 \ln \left( 2^{-1} \right) &= - \frac{1}{R \cdot C} \cdot t_H \\ 
 t_H &= - R \cdot C \cdot \ln \left( 2^{-1} \right) \\
 t_H &= - R \cdot C \cdot (-1 \cdot \ln(2)) \\ 
 t_H &= R \cdot C \cdot \ln(2)
\end{align}
$$

> Für die Halbwertszeit der Ladung auf einem Kondensator gilt:
>
> $$  t_H = R \cdot C \cdot ln(2). $$

---

## Modellierung der Aufladung eines Plattenkondensators

Der **Aufladevorgang** eines Kondensators kann mit folgenden Formeln beschrieben werden:

##### Ladung $Q(t)$ auf den Kondensatorplatten

$$
 Q(t) = Q_0 \cdot \left(1 - e^{-\frac{1}{R \cdot C} \cdot t} \right)
$$

##### Stromstärke $I(t)$ im Stromkreis

$$
 I(t) = I_{0} \cdot e^{-\frac{1}{R \cdot C} \cdot t}
$$

##### Spannung $U_C(t)$ am Kondensator

$$
 U_C(t) = U_0 \cdot \left(1 - e^{-\frac{1}{R \cdot C}\cdot t} \right)
$$

<details>

  <summary>Studienorientierung: Herleitung der Formeln</summary>
  
Während des Aufladevorgangs wird die von der Spannungsquelle bereitgestellte Spannung auf den Kondensator und den Widerstand aufgeteilt: $U_C(t) + U_R(t) = U_0$. Weiter gilt:

$$
 U_C(t) + U_R(t) = \frac{Q(t)}{C} + R \cdot \frac{dQ(t)}{dt} = U_0
$$

Teilt man diese Gleichung durch $R$, folgt:

$$
 \frac{1}{R \cdot C} \cdot Q(t) + \frac{dQ(t)}{dt} = \frac{U_0}{R}
$$

Diese Gleichung ist eine Differentialgleichung, denn in der Gleichung steht $Q(t)$ und die Ableitung dieser Funktion $\frac{dQ(t)}{dt}$. Wir suchen eine Funktion für $Q(t)$, so dass die linke und rechte Seite der Differentialgleichung gleich ist, wenn man die Funktion einsetzt.

Eine geeignete Funktion kann man nicht direkt berechnen. Vielmehr muss man mit Hilfe mathematischer Erfahrung aus der Vielfalt der bekannten Funktionen eine heraussuchen, welche die vorliegende Gleichung erfüllen könnte. Ein geeigneter Kandidat ist die e-Funktion, da bei der e-Funktion die Funktion und ihre Ableitung bis auf Faktoren übereinstimmen. Wenn man mit dieser Einsicht einige Funktionen komponiert und in die Differentialgleichung einsetzt, findet man mit $Q_0$ als Ladung des Kondensators nach vollständiger Aufladung bei der von außen anliegenden Spannung $U_0$ folgende Lösungsfunktion:

$$
Q(t) = Q_0 \cdot \left( 1 - e^{- \frac{1}{R \cdot C} \cdot t} \right)
$$

Probe:

$$
\frac{dQ(t)}{dt} = Q'(t) =  Q_0 \cdot \left(0 - \left(- \frac{1}{R \cdot C} \right) \cdot  e^{- \frac{1}{R \cdot C} \cdot t} \right) =  \frac{Q_0}{R \cdot C} \cdot  e^{- \frac{1}{R \cdot C} \cdot t}
$$

Einsetzen:

$$
\begin{align}
 \frac{1}{R \cdot C} \cdot Q(t) + \frac{dQ(t)}{dt} &= \frac{U_0}{R} \\
 \frac{1}{R \cdot C} \cdot Q_0 \cdot \left( 1 - e^{- \frac{1}{R \cdot C} \cdot t} \right) + \frac{Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} &= \frac{U_0}{R} \\
 \frac{ Q_0}{R \cdot C} - \frac{ Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} + \frac{Q_0}{R \cdot C} \cdot e^{- \frac{1}{R \cdot C} \cdot t} &= \frac{U_0}{R} \\
 \frac{ Q_0}{R \cdot C} &= \frac{U_0}{R} \\
 \frac{U_0}{R} &= \frac{U_0}{R}
\end{align}
$$

Damit ist $Q(t) = Q_0 \cdot \left( 1 - e^{- \frac{1}{R \cdot C} \cdot t} \right)$ eine geeignete Funktion, um die zeitliche Veränderung der Ladung auf dem Kondensator während des Aufladevorgangs zu beschreiben.

Die **Stromstärke $I(t)$** ist die zeitliche Änderung der Ladung $Q(t)$. Mit $U_0 = \frac{Q_0}{C}$ und $I_0 = \frac{U_0}{R}$ folgt:

$$
 I(t) = \frac{dQ(t)}{dt} = Q'(t) =  \frac{Q_0}{R \cdot C} \cdot  e^{- \frac{1}{R \cdot C} \cdot t} = \frac{U_0}{R} \cdot  e^{- \frac{1}{R \cdot C} \cdot t} = I_0 \cdot  e^{- \frac{1}{R \cdot C} \cdot t}
$$

Für die **Spannung $U_C$** am Kondensator gilt: $U_C(t) = \frac{Q(t)}{C}$, also:

$$
 U_C(t) = \frac{Q_0 \cdot \left( 1 - e^{- \frac{1}{R \cdot C} \cdot t} \right)}{C} = U_0 \cdot \left( 1 - e^{- \frac{1}{R \cdot C} \cdot t} \right)
$$

> Damit sind die Formel erfolgreich hergeleitet worden.

</details>

---

## Messung: Entladevorgang

### Messtabelle

Ein Kondensator mit der Kapazität $C$ wird bei einer Anfangsspannung $U$ über einem Gesamtwiderstand $R$ entladen. Dabei werden die folgenden Messwerte aufgenommen:

| Zeit t in s        | 0    | 10   | 20   | 30   | 40   | 50   | 60   | 70   | 80   | 90  | 100 | 110 |
| :----------------- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :-- | :-- | :-- |
| Stromstärke I in µA | 90,9 | 72,0 | 55,3 | 42,6 | 33,4 | 25,8 | 20,0 | 15,1 | 11,9 | 9,4 | 7,3 | 5,7 |

Kapazität: $C = 1000 \, \text{µF}$     
Widerstand: $R = 33 \, \text{kΩ}$     
Anfangsspannung: $U = 3,0 \, \text{V}$     

---

### Schaubild

Die Messwerte werden in ein geeignetes Schaubild eingetragen.

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mICdKeACcqUcAFEUGBXvhgnAINwUJMIABpSQDKTBm2HC30ACQi0+KaVAPipogNbA2G4vGREEccmA+COEmANo2MleolZjld9C99HoAHoZxAALKTaRvYCgCDbKzinkoA6eOkKBnMtkc7n7Fa4VmH2KjFbGECBsSSaQQfDBpAqaKPVFxqjaWN5NEiSeBQ6TaOa7jRJkngAKwwdoADMgEIakgJgQIgGAqkCEIdogKATBqTpPBxp5N+QieJk4GAdQyTwfEgHGqk8TxP+gHxnGeGASkIGIdxwEQPBFA5PQOQiHOi7Lm+Ia7qg-w8CAKBPlIkCghYYCYCo0lINoKwmPY9jRDAniNDkHpkAAfA8sw+ko-qBsGoaOGpKZHEZJnllWBx-ACartLga71AOCgbNIIDXMO5RHNIh7skFg6dmFEXAFFnidKI6yOAGYKHJ4yxrBsRz+RM+C3OUroepOtBAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mICdKeACcqUcAFEUGBXvhgnAINwUJMIABpSQDKTBm2HC30ACQi0+KaVAPipogNbA2G4vGREEccmA+COEmANo2MleolZjld9C99HoAHoZxAALKTaRvYCgCDbKzinkoA6eOkKBnMtkc7n7Fa4VmH2KjFbGECBsSSaQQfDBpAqaKPVFxqjaWN5NEiSeBQ6TaOa7jRJkngAKwwdoADMgEIakgJgQIgGAqkCEIdogKATBqTpPBxp5N+QieJk4GAdQyTwfEgHGqk8TxP+gHxnGeGASkIGIdxwEQPBFA5PQOQiHOi7Lm+Ia7qg-w8CAKBPlIkCghYYCYCo0lINoKwmPY9jRDAniNDkHpkAAfA8sw+ko-qBsGoaOGpKZHEZJnllWBx-ACartLga71AOCgbNIIDXMO5RHNIh7skFg6dmFEXAFFnidKI6yOAGYKHJ4yxrBsRz+RM+C3OUroepOtBAA" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

---

### Auswahl der Regression

##### Analyse des Schaubilds

**Regressionshypothese:** in gleichen Zeitintervallen nimmt der Bestand um den gleichen Anteil ab.

##### Rechnerische Überprüfung

| Messpaare (nach je 10 s) | Rechnung | Restbestand als Anteil |
|------------------------------|---------------------|------------|
| [0; 90,9], [10; 72,0]        | 72,0 / 90,9         | 0,792      |
| [10; 72,0], [20; 55,3]       | 55,3 / 72,0         | 0,768      |
| [20; 55,3], [30; 42,6]       | 42,6 / 55,3         | 0,770      |
| [30; 42,6], [40; 33,4]       | 33,4 / 42,6         | 0,784      |
| [40; 33,4], [50; 25,8]       | 25,8 / 33,4         | 0,773      |
| [50; 25,8], [60; 20,0]       | 20,0 / 25,8         | 0,775      |
| [60; 20,0], [70; 15,1]       | 15,1 / 20,0         | 0,755      |
| [70; 15,1], [80; 11,9]       | 11,9 / 15,1         | 0,788      |
| [80; 11,9], [90; 9,4]        | 9,4 / 11,9          | 0,789      |
| [90; 9,4], [100; 7,3]        | 7,3 / 9,4           | 0,777      |
| [100; 7,3], [110; 5,7]       | 5,7 / 7,3           | 0,781      |

Mittelwert aller Restbestände: 

$$
\begin{align*}
\text{Mittelwert} &= \frac{
    0{,}792 + 0{,}768 + 0{,}770 + 0{,}784 + 0{,}773 + 0{,}775 + 0{,}755 + 0{,}788 + 0{,}789 + 0{,}777 + 0{,}781
}{11} \\
&= \frac{8{,}552}{11} = 0{,}778
\end{align*}
$$

Der Bestand nimmt alle 10 s um etwa 22% ab. Es liegt eine exponentielle Abnahme vor.

##### Entscheidung für eine Regression

Geeignete Modellierung: Exponentielle Regression

---

### Regression durchführen

Mit den gegebenen Messwerte wird zur Modellierung eines geeigneten funktionalen Zusammenhangs eine **exponentielle Regression** durchgeführt:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mICdKeACcqUcAFEUGBXvhgnAINwUJMIABpSQDKTBm2HC30ACQi0+KaVAPipogNbA2G4vGREEccmA+COEmANo2MleolZjld9C99HoAHoZxAALKTaRvYCgCDbKzinkoA6eOkKBnMtkc7n7Fa4VmH2KjFbGECBsSSaQQfDBpAqaKPVFxqjaWN5NEiSeBQ6TaOa7jRJkngAKwwdoADMgEIakgJgQIgGAqkCEIdogKATBqTpPBxp5N+QieJk4GAdQyTwfEgHGqk8TxP+gHxnGeGASkIGIdxwEQPBFA5PQOQiHOi7Lm+Ia7qg-w8CAKBPlIkCghYYCYCo0lINoKwmPY9jRDAniNDkHpkAAfA8sw+ko-qBsGoaOGpKZHEZJnllWBx-ACartLga71AOCgbNIIDXMO5RHNIh7skFg6dmFEXAFFnidKI6yOAGYKHJ4yxrBsRz+RM+C3OUroepO4nzomMCgjmKa4Nc64AEogHAgaYOCkgBA+IDYg1ykvp1wz8BAgYdcu2raCAdWSIpWpdPY2meIsxiBqIRTalEAiegwEgqZaKgjSMM0AI6BMG2qomJQ2QKIx2TKN52XVqkhAbdB0vjIKgLsGZizcY9iiFOX2QAo6SPZgz0Q9VEBtZNXXapgrKBAoaAcvJA2KXd43tZ13UoAgaMYyotl+gGQYhk47TBKIb0oB1JhEG5jy01iDP2DA5mLIGYBo7JEAAFSLv9M11cDwsQNztCup5iwxeIcXiMFGxvmyk2NNF9LsnghBEFEMZUgVna1fVC1NWuHIIwT2rjm6U70OT9lU054aRtE0aeExUr+Oz9PavYPN4-zCi7o4AAkjQqOOADUlraI6ABiuAlfYAjmfH44ADrZ6I+DiJAccBIn4gp2nGcQFnAB6MAR44suEvLTaKj5KqNv2CWOElwCRSARyBD0f3EKoBRlRyDsiM7lOOWGs0e17lCpJW-uc8HfMC52Ucx1XCfJ6nID4OnmedhAuf54XWbV14xeiKX5eH8fu853nBeQDAhL1435bVq3yppB3FWXce59wHkPf6o95jijuBVWgQA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mICdKeACcqUcAFEUGBXvhgnAINwUJMIABpSQDKTBm2HC30ACQi0+KaVAPipogNbA2G4vGREEccmA+COEmANo2MleolZjld9C99HoAHoZxAALKTaRvYCgCDbKzinkoA6eOkKBnMtkc7n7Fa4VmH2KjFbGECBsSSaQQfDBpAqaKPVFxqjaWN5NEiSeBQ6TaOa7jRJkngAKwwdoADMgEIakgJgQIgGAqkCEIdogKATBqTpPBxp5N+QieJk4GAdQyTwfEgHGqk8TxP+gHxnGeGASkIGIdxwEQPBFA5PQOQiHOi7Lm+Ia7qg-w8CAKBPlIkCghYYCYCo0lINoKwmPY9jRDAniNDkHpkAAfA8sw+ko-qBsGoaOGpKZHEZJnllWBx-ACartLga71AOCgbNIIDXMO5RHNIh7skFg6dmFEXAFFnidKI6yOAGYKHJ4yxrBsRz+RM+C3OUroepO4nzomMCgjmKa4Nc64AEogHAgaYOCkgBA+IDYg1ykvp1wz8BAgYdcu2raCAdWSIpWpdPY2meIsxiBqIRTalEAiegwEgqZaKgjSMM0AI6BMG2qomJQ2QKIx2TKN52XVqkhAbdB0vjIKgLsGZizcY9iiFOX2QAo6SPZgz0Q9VEBtZNXXapgrKBAoaAcvJA2KXd43tZ13UoAgaMYyotl+gGQYhk47TBKIb0oB1JhEG5jy01iDP2DA5mLIGYBo7JEAAFSLv9M11cDwsQNztCup5iwxeIcXiMFGxvmyk2NNF9LsnghBEFEMZUgVna1fVC1NWuHIIwT2rjm6U70OT9lU054aRtE0aeExUr+Oz9PavYPN4-zCi7o4AAkjQqOOADUlraI6ABiuAlfYAjmfH44ADrZ6I+DiJAccBIn4gp2nGcQFnAB6MAR44suEvLTaKj5KqNv2CWOElwCRSARyBD0f3EKoBRlRyDsiM7lOOWGs0e17lCpJW-uc8HfMC52Ucx1XCfJ6nID4OnmedhAuf54XWbV14xeiKX5eH8fu853nBeQDAhL1435bVq3yppB3FWXce59wHkPf6o95jijuBVWgQA" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

Eine geeignete mathematische Funktion ist:

$$
  y = 91,666887 \cdot 0,974933^x
$$

oder umgeschrieben als Exponentialfunktion zur Basis $e$:

$$
\begin{align*}
  y &= 91,666887 \cdot 0,974933^x \\
    &= 91,666887 \cdot e^{ln(0,974933) \cdot x} \\
    &= 91,666887 \cdot e^{-0,025387 \cdot x} \\
\end{align*}
$$

---

### Physikalisierung

y-Wert: elektrische Stromstärke $I$ in $10^{-6} \text{A}$

x-Wert: Zeit $t$ in $\text{s}$

Beide Seiten der Gleichung müssen die Einheit $A$ liefern. Der Ausdruck $e^{-0,025387 \cdot t}$ gibt einen Anteil an und darf deswegen keine Einheit haben. Um das zu erreichen wird mit $\tfrac{1}{s}$ multipliziert:

$$
  I(t) = 91,666887 \cdot 10^{-6} \, \text{A} \cdot e^{-0,025387 \cdot t \cdot \tfrac{1}{s}}
$$

Der ungenaueste gegebene Wert wird mit einer Stelle hinter dem Komma angegeben.

Die physikalischen Werte in der Modellierung werden mit zwei Stellen hinter dem Komma angegeben. Die exponentielle Zerfallskonstante wird unverändert angegeben:

$$
  I(t) = 9,17 \cdot 10^{-5} \, \text{A} \cdot e^{-0,025387 \cdot t \cdot \tfrac{1}{s}}
$$

---

### Vergleich mit dem theoretischen Wert

Folgende Werte sind gegeben:

Kapazität: $C = 1000 \, \text{µF}$     
Widerstand: $R = 33 \, \text{kΩ}$     
Anfangsspannung: $U = 3,0 \, \text{V}$   

Die theoretische Modellierung für die Entladung eines Kondensators lautet:

$$ I(t) = - I_{0} \cdot e^{-\frac{1}{R \cdot C} \cdot t} $$

Das negative Vorzeichen gibt die Richtung des Entladestroms (negativ) relativ zum Aufladestrom (positiv) an.

Einsetzen der Werte liefert:

$$ 
\begin{align*}
  I(t) &= - I_{0} \cdot e^{-\frac{1}{R \cdot C} \cdot t} \\
       &= - 9,17 \cdot 10^{-5} \, \text{A} \cdot e^{-\frac{1}{33 \cdot 10^{3} \, \text{Ω} \cdot 1000 \cdot 10^{-6} \, \text{F}} \cdot t} \\
       &= - 9,17 \cdot 10^{-5} \, \text{A} \cdot e^{-0.03030 \cdot t} 
\end{align*}
$$

In guter Näherung passt die theoretische Modellierung zur Modellierung, die per Regression ermittelt wurde.

---

### Ladungsmenge Q

Die elektrische Stromstärke $I$ gibt an, welche elektrische Ladungsmenge $Q$ in einer Sekunde eine bestimmte Stelle im Stromkreis passiert. 

Bei der Entladung des Kondensators ändert sich die elektrische Stromstärke $I(t)$ ständig. Wenn man die gesamte geflossene elektrische Ladungsmenge $Q_\text{ges}$ ermitteln möchte, dann muss man für jedes beliebig kleine Zeitintervall $dt$ das Produkt $I(t) \cdot dt$ aus der aktuellen Stromstärke $I(t)$ und dem beliebig kleinen Zeitintervall $dt$ berechnen und für alle Zeitintervalle aufsummieren:

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mJCTwATlSjgAoigwK98ME4BBuChJhAANKSAZSYM2w4Wx6LT7JpUA+KmiCVsDYbi8ZEQRxyYD4I4SYA2jYyV6iVmOV30L30egAeknEAAspNpG9gKAINsrOKeSgDp46QoGcy2RzufsVrhWXvYqMVsYQIGxJJpBB8MGkCpoo9UbGqNoY3loolPAodJtHNdxokyTwAFZIO0ABmP9YNSQFgIEP9AVSWDYO0QE-0g1J0hg408g-aMIEyEC-2oZIYPiP9jVSeJ4h-P841jbC-xSQC4I4gCIBgigcnoHIRGnOcF2fEMt1Qf4eBAFB7ykSBQQsMBMBUCSkG0FYTHsexohgTxGhyD0yAAPgeWYfSUf1A2DUNHGU5Mjn0wyy1mRZwWVCA1XaXBl3qXsFA2aQQGuAdyiOaQ93ZAK+zbEKwuACLPE6UR1kcAMwUOTxljWDYjl8iZ8FucpXQ9McRJnBMYFBbNk1wa4VwAJRAOBA0wcFJACW8QGxOqFMfdrhn4CBAzahdtW0EAaskOStS6ewNM8RZjEDUQim1KIBE9BgJEUy0VCGkYpoAR0CYNtVRYSBsgURDsmYbTvOrVJH-a69sfGQVFnYMzGm4x7FEccPsgBR0nuzBHrByqIBa8aOu1TBWUCBQ0A5GS+rkm7Rta9rOpQBAUbRlQrL9AMgxDJx2mCUQXpQNqTCIZzHmprE6fsGATMWQMwBRqSIAAKjnX6ppqwHBYgTnaFdNz-A8+kYvEQKNmfNlxsaSKFZAPBCCIKJ0hy6kNmq2q5oa5cOThvHtRHN1xynGdOWTXGum6taiDqiBgmUaTmyx0SADEAB+FHrDmTPIV8hZAAA9QGBc5nlH1CDk6VWFZWdZOmIAD8OVHsJBJyBiXY-jzn6FZ2ntQgUQulEYY7KdkMGeADn4k8GB0i5x5A45ruIFiHO25MmpxCuXAh8T8gC6Lkzo7j0QE-K2Yeb5iAZ+LoX7B+4hRYBu6hc7kzB53v6xYPyX4g9cc3QdiA9GAAhb3rEOnwarlnYZunMHGlB-nkkGl8H5P1DuQUmNkKb2UwI-AYChnLRDVLESCFpogCEQcgzwn4IAMUyDkWWfhFi5RpGAQAgQSRWWMYHWxAVSVC1rFIKbZAxdhSn5YA9DoQgC7GVXaD5ICd2AbAkmdgya2Upo4aBID4GIKIpgtBnhYgyJiKkPCyRcH4O8FSPKbYwCACCCchJgqF6zSLQ6KIB2GMM4QVVh5jHBMNtvbQOwAmTYg5MEEModBG5iJhyNARRzqP3BD1ABvDNzNyMMAIRvoIF2ScCpF2wBmazGiJXdmXMca8wUFuGA8QBG3m0AANS6OUewXpXQpRpqkjRq9MmS3SLkhQBSimhlKYSdRY1raSEJqjEAZYACQFZrFKzio4RojVahWOXAAeWMEgdaYAKTYLgiY8QitlZthtKgOAIBNamMMfrUcDiZxWwmg+TO2d4j0HAeTGJjhwyRlQakeiUp-ApO1CUqp4A16OAACSNBUCOAA1JabQjoA64CKvYAQJkgUjgADqwtEPgcQkBAUBBBeIMFEKoUQBhTHGA3zHDS1ac8uW9ZFR-BrHWHswyErAHCtszwgQein1UAUEqHI7YMFEschGpzghZ2rukS5wjoliLuc5UiVELIvIqW8tJ1Stw-L+eQVFmlQXgs4ZC6FbYIDwsRcizMMcvCotEOizFmrsUwt1QipFfDCQEqJX0is5KvK1k8NShh4iQyJWSl7Zlv1WXzHFHcA5MMm7xJqLeMA+RujiBzk4lxEBfgnEwC4rcnjvFexCE+Z+MBLzYh6JaP+ft5JXNEfZcVsjUikRZrKyQ7zFjSj8IA7JKhsn1MaUlZpDAZQ1xCZ3NtdSYF5MKV2kpPaZSALiS3UdpVyC12APXV4IZw0tzbh3LuE7ngKrbN8+FdyvABwTUQEAhIVDwpUgAfWNTiy+ZqNX4HsFQbVzojWos7veiFz7b1Nv8L03pzow6J3wDAf5t7p3hNnSAT9mr+4woddKvwxLEMaIbNWFUAh3VDM9eNOSRwmUgBZWy4NpVOUTlEpoSYqwUxIDTPTItMktlbnsKu8JEA0BdSoAEIoWa5L4EfticqgdX53QADzYKiIAaiJAABBDHQAeESWgAO2l1EMB0D5BYiF1ENjR0YAugICIIoLZKhNNF29CK65Yrpr3NIiolDrz61pN-Tun5ABFa9WzMBnvIBe5Ml6qBGt8+0eZZ7OT2DACZQgYGgW6f04ZhQWyYOPrgzq-d1nFj8kU15hDjxkPljJVWClGGsNrMcLhlA+H-XEEDey0N9AgA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCAdgAYqBuAKFElkVQ0wAkRc4jJyAbDQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaAEYqT0SkiHiAJlSE9IBdTyQYXEwosAVAkE9MInEAdwRxYwBPBR4+KIAzJGBMCt9-fBBOwOAwAEEYEGLvPv9-GCivCBQkAFsQKMcALW5ISAsITA8IGqsiABkkGRBgErKKiBnZp4hgS+uF9skwPVwAL3W0gAWTzGcSYKy4SQbBRgI7idrtHpgKLRLLpXL5FCiaoKdTQ1qwgC+hPcj1mjQWS1WAMcelK4hW0gAJwoANYgCAASQg+0APcCjI4nYgXK43CClcqeMnPPyvUUfL4-f5ReLAiCg8FgSEoaGwzzwxHgFEADk8VDyEFQ2PECgAmhswA1HMSIIT6ISAJQMOSKfDaUQKEBIMAgJwhmB6mJCTwATlSjgAoigwK98ME4BBuChJhAANKSAZSYM2w4Wx6LT7JpUA+KmiCVsDYbi8ZEQRxyYD4I4SYA2jYyV6iVmOV30L30egAeknEAAspNpG9gKAINsrOKeSgDp46QoGcy2RzufsVrhWXvYqMVsYQIGxJJpBB8MGkCpoo9UbGqNoY3loolPAodJtHNdxokyTwAFZIO0ABmP9YNSQFgIEP9AVSWDYO0QE-0g1J0hg408g-aMIEyEC-2oZIYPiP9jVSeJ4h-P841jbC-xSQC4I4gCIBgigcnoHIRGnOcF2fEMt1Qf4eBAFB7ykSBQQsMBMBUCSkG0FYTHsexohgTxGhyD0yAAPgeWYfSUf1A2DUNHGU5Mjn0wyy1mRZwWVCA1XaXBl3qXsFA2aQQGuAdyiOaQ93ZAK+zbEKwuACLPE6UR1kcAMwUOTxljWDYjl8iZ8FucpXQ9McRJnBMYFBbNk1wa4VwAJRAOBA0wcFJACW8QGxOqFMfdrhn4CBAzahdtW0EAaskOStS6ewNM8RZjEDUQim1KIBE9BgJEUy0VCGkYpoAR0CYNtVRYSBsgURDsmYbTvOrVJH-a69sfGQVFnYMzGm4x7FEccPsgBR0nuzBHrByqIBa8aOu1TBWUCBQ0A5GS+rkm7Rta9rOpQBAUbRlQrL9AMgxDJx2mCUQXpQNqTCIZzHmprE6fsGATMWQMwBRqSIAAKjnX6ppqwHBYgTnaFdNz-A8+kYvEQKNmfNlxsaSKFZAPBCCIKJ0hy6kNmq2q5oa5cOThvHtRHN1xynGdOWTXGum6taiDqiBgmUaTmyx0SADEAB+FHrDmTPIV8hZAAA9QGBc5nlH1CDk6VWFZWdZOmIAD8OVHsJBJyBiXY-jzn6FZ2ntQgUQulEYY7KdkMGeADn4k8GB0i5x5A45ruIFiHO25MmpxCuXAh8T8gC6Lkzo7j0QE-K2Yeb5iAZ+LoX7B+4hRYBu6hc7kzB53v6xYPyX4g9cc3QdiA9GAAhb3rEOnwarlnYZunMHGlB-nkkGl8H5P1DuQUmNkKb2UwI-AYChnLRDVLESCFpogCEQcgzwn4IAMUyDkWWfhFi5RpGAQAgQSRWWMYHWxAVSVC1rFIKbZAxdhSn5YA9DoQgC7GVXaD5ICd2AbAkmdgya2Upo4aBID4GIKIpgtBnhYgyJiKkPCyRcH4O8FSPKbYwCACCCchJgqF6zSLQ6KIB2GMM4QVVh5jHBMNtvbQOwAmTYg5MEEModBG5iJhyNARRzqP3BD1ABvDNzNyMMAIRvoIF2ScCpF2wBmazGiJXdmXMca8wUFuGA8QBG3m0AANS6OUewXpXQpRpqkjRq9MmS3SLkhQBSimhlKYSdRY1raSEJqjEAZYACQFZrFKzio4RojVahWOXAAeWMEgdaYAKTYLgiY8QitlZthtKgOAIBNamMMfrUcDiZxWwmg+TO2d4j0HAeTGJjhwyRlQakeiUp-ApO1CUqp4A16OAACSNBUCOAA1JabQjoA64CKvYAQJkgUjgADqwtEPgcQkBAUBBBeIMFEKoUQBhTHGA3zHDS1ac8uW9ZFR-BrHWHswyErAHCtszwgQein1UAUEqHI7YMFEschGpzghZ2rukS5wjoliLuc5UiVELIvIqW8tJ1Stw-L+eQVFmlQXgs4ZC6FbYIDwsRcizMMcvCotEOizFmrsUwt1QipFfDCQEqJX0is5KvK1k8NShh4iQyJWSl7Zlv1WXzHFHcA5MMm7xJqLeMA+RujiBzk4lxEBfgnEwC4rcnjvFexCE+Z+MBLzYh6JaP+ft5JXNEfZcVsjUikRZrKyQ7zFjSj8IA7JKhsn1MaUlZpDAZQ1xCZ3NtdSYF5MKV2kpPaZSALiS3UdpVyC12APXV4IZw0tzbh3LuE7ngKrbN8+FdyvABwTUQEAhIVDwpUgAfWNTiy+ZqNX4HsFQbVzojWos7veiFz7b1Nv8L03pzow6J3wDAf5t7p3hNnSAT9mr+4woddKvwxLEMaIbNWFUAh3VDM9eNOSRwmUgBZWy4NpVOUTlEpoSYqwUxIDTPTItMktlbnsKu8JEA0BdSoAEIoWa5L4EfticqgdX53QADzYKiIAaiJAABBDHQAeESWgAO2l1EMB0D5BYiF1ENjR0YAugICIIoLZKhNNF29CK65Yrpr3NIiolDrz61pN-Tun5ABFa9WzMBnvIBe5Ml6qBGt8+0eZZ7OT2DACZQgYGgW6f04ZhQWyYOPrgzq-d1nFj8kU15hDjxkPljJVWClGGsNrMcLhlA+H-XEEDey0N9AgA" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

> [!NOTE]
>Insgesamt ist folgende elektrische Ladungsmenge $Q_\text{ges}$ beim Entladevorgang aus dem Kondensator abgeflossen: $$ Q_\text{ges} = \int_0^{\infty} I(t) dt = 3610,78 \, \mu \text{C} $$

---