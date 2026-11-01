## Elektrische Feldstärke

### A1: Messung

- **Beschreibe** an einem geeigneten Beispiel, wie man die elektrische Feldstärke in einem Plattenkondensator messen kann.

<details>

  <summary>Lösungsvorschlag</summary>
  
In einem Plattenkondensator hängt an einem Seil der Länge $L$ eine positiv geladene Kugel mit sehr geringen Gewicht (z.B. Tischtennisball). Wird der Plattenkondensator aufgeladen, wirkt im Inneren des Plattenkondensators auf die geladene Kugel eine elektrische Kraft $F_{el}$, die den Tischtennisball auslenkt. Da der Tischtennisball eine Masse $m$ hat, wirkt auf ihn die Gewichtskraft $F_G$. Diese bewirkt eine Rückstellkraft $F_R$, die vom Betrag gleich der elektrischen Kraft $F_{el}$ ist, aber relativ zu dieser entgegengesetzt gerichtet ist.

</details>

---

### A2: Formel

- **Leite** begründet eine Formel **her**, um die elektrische Feldstärke $E$ zu berechnen. 

<details>

  <summary>Lösungsvorschlag</summary>
  

![](efeld_efeldstaerke_01.svg)

In dieser **Gleichgewichtslage** gilt:

1) Im **oberen Dreieck** ist die Seillänge $L$ die **Hypothenuse** und die Länge des Lots von der ausgelenkten Kugel auf die Schnur in der Ruhelage $s$ die **Gegenkathete** zum **Winkel $\alpha$**. Damit gilt

$$
sin(\alpha) = \frac{\text{Gegenkathete}}{\text{Hypothenuse}} = \frac{s}{L}
$$

und

$$
\alpha = arcsin \left( \frac{s}{L} \right)
$$

2) Im **unteren Dreieck** ist $F_G$ die **Ankathete** und $F_{el}$ die **Gegenkathete** zum Winkel **$\alpha$**. Damit gilt

$$
tan(\alpha) = \frac{\text{Gegenkathete}}{\text{Ankathete}} = \frac{F_{el}}{F_G}
$$

Für die Gewichtskraft $F_G$ gilt $F_G = m \cdot g$, wobei $g$ der Ortsfaktor ist. Damit gilt für die elektrische Kraft $F_{el}$ 

$$
\begin{align}
F_{el} &= F_G \cdot tan \left( \alpha \right) \\
F_{el} &= F_G \cdot tan \left( arcsin \left( \frac{s}{L} \right) \right) \\
F_{el} &= m \cdot g \cdot tan \left( arcsin \left( \frac{s}{L} \right) \right)
\end{align}
$$

Die elektrische Feldstärke ist per Definition die elektrische Kraft pro Ladung, also 

$$
E = \frac{F_{el}}{Q}
$$

Für die elektrische Feldstärke $E$ gilt folglich:

$$
E = \frac{F_{el}}{Q} = \frac{m \cdot g}{Q} \cdot tan \left( arcsin \left( \frac{s}{L} \right) \right)
$$

**Damit ist eine geeignete Formel für die elektrische Feldstärke $E$ hergeleitet worden:**

$$
E = \frac{m \cdot g}{Q} \cdot tan \left( arcsin \left( \frac{s}{L} \right) \right)
$$

---

**Näherung**

Für sehr kleine Auslenkungen ($\alpha < 5°$) der Kugel aus der Ruhelage gilt in guter **Näherung**: 

$$
tan(\alpha) \approx sin(\alpha)
$$

Beispiel: $sin(3°) = 0,05234$ und $tan(3°) = 0,05240$.

Damit kann man wie folgt annähern: 

$$
tan \left( arcsin \left( \frac{s}{L} \right) \right) \approx \frac{s}{L}
$$

Mit dieser Näherung kann die Formel für die elektrische Feldstärke $E$ wie folgt vereinfacht werden: 

$$
E = \frac{m \cdot g \cdot s}{Q \cdot L}
$$

</details>

---

### A3: Größen messen

- **Erläutere**, wie die in der hergeleiteten Formel vorkommenden physikalischen Größen gemessen werden können.

<details>

  <summary>Lösungsvorschlag</summary>
  
Die in der hergeleiteten Formel vorkommenden Messgrößen können wie folgt gemessen werden:

Die **Masse $m$** kann mit einer geeigneten **Waage** gemessen werden.

Der **Ortsfaktor $g$** kann der **Formelsammlung** entnommen werden: $g = 9,81 \frac{N}{kg}$.

Die **Länge $s$** kann mit einer **optischen Projektionsmethode** bestimmt werden:

![](efeld_efeldstaerke_02.svg)

Zuerst misst man in der Ruhelage bei ungeladenem Kondensator die Entfernung $a$ zwischen Lampe und Kugel im Kondensator. Dann die Entfernung $a'$ zwischen Lampe und Schirm auf den projiziert wird. Dann markiert man auf dem Schirm die Projektion der Position der Kugel in Ruhelage. Schließlich lädt man den Kondensator auf und misst auf dem Schirm die Länge $s'$, also die Projektion der Strecke $s$ auf den Schirm bei ausgelenkter Kugel. Nach dem **Strahlensatz** folgt:

$$
\frac{a}{a'} = \frac{s}{s'}
$$

Damit kann man $s$ mit folgender Formel berechnen:

$$
s = \frac{a}{a'} \cdot s'
$$

Die **Schnurlänge $L$** kann mit einem geeigneten **Metermaß** gemessen werden.

Die **Ladung $Q$** kann mit der **"Pendelmethode"** gemessen werden. Pro Anschlag wird die Ladung $Q_K$ von einer Platte zur anderen transportiert. Bei der Hin- und Herbewegung der Kugel fließt ein pulsierender Gleichstrom, der das Vorzeichen der Ladung bei jeder Plattenberührung ändert. Ein geeignetes Messgerät kann jeweils den Betrag des pulsierenden Gleichstroms bestimmen und die mittlere Stromstärke anzeigen. Ist $t_1$ die Zeit, die die Kugel von einer Platte zur anderen benötigt, gilt damit:

$$
\overline{I} = \frac{Q_K}{t_1}
$$

Während einer Messung zählt man jetzt z.B. 100 Pendelbewegungen von einer Platte zur anderen und misst dabei mit einer Stoppuhr die Zeit $t_{100}$ für alle 100 Pendelbewegungen. Für die Zeit für eine Pendelbewegung gilt dann:

$$
t_1 = \frac{t_{100}}{100}
$$

Ließt man vom Messgerät die mittlere Stromstärke $\overline{I}$ während der 100 Pendelbewegungen ab, kann man damit die Ladung der Kugel angenähert berechnen:

$$
Q_K = \overline{I} \cdot t_1
$$

**So kann man alle benötigten Größen zur Berechnung der elektrischen Feldstärke $E$ messen.**

</details>

---

## Elektronenstrahl

### B1: Erzeugung

Um in einer Elektronenstrahlröhre Experimente durchführen zu können, benötigt man einen gebündelten Elektronenstrahl.

- **Erkläre** mit Hilfe **geeigneter Skizzen**, wie man einen **gebündelten Elektronenstrahl** erzeugen kann.

<details>

  <summary>Lösungsvorschlag</summary>
  
An einen dünnen Draht wird eine **Heizspannung $U_H$** von einigen Volt (z.B. $6 \: V$) angelegt, so dass dieser von einem Elektronenstrom der Stärke $I_H$ durchströmt wird. 

![](efeld_estrahl_01.svg)

Die strömenden Elektronen geben durch Wechselwirkung Energie an die Drahtatome ab, die deswegen mit immer höherer Geschwindigkeit um ihre Ruhelage schwingen. Der Draht ist aus einem speziellen Material gebaut (z.B. Wolfram), so dass er in der evakuierten Elektronenstrahlröhre bei sehr hohen Temperaturen ($> 2000 °C$) zu glühen beginnt, ohne dabei zerstört zu werden. 

In dem glühenden Draht wechselwirken einige der strömenden Elektronen zufällig so mit den Atomen, dass ihre kinetische Energie immer weiter zunimmt. Irgendwann haben diese Elektronen dann zufällig genügend Energie, um die Bindungskräfte des Metalls zu überwinden und den Draht zu verlassen. Da um den Glühdraht herum Vakuum herrscht, können sich die freien Elektronen bewegen, ohne mit Luftatomen zu wechselwirken. 

Die freien Elektronen sollen mit Hilfe einer **Beschleunigungsspannung $U_B$** nach rechts beschleunigt werden. Dazu legt man an den Glühdraht den negativen Pol der Beschleunigungsspannung und an eine weiter rechts angebrachte Metallscheibe den positiven Pol der Beschleunigungsspannung an. In der Metallscheibe ist mittig ein Loch, damit der Elektronenstrahl weiter nach rechts fliegen kann. Die mit einem Loch versehene positiv geladene Metallscheibe nennt man **Lochanode**.

![](efeld_estrahl_02.svg)

Der negativ geladene **Metallzylinder** (Wehneltzylinder) begrenzt die Elektronen räumlich. Durch die schmale Öffnung der Lochanode entsteht ein **gebündelter Elektronenstrahl**.

</details>

---

### B2: Beschleunigung

- **Leite** begründet eine Formel her, mit deren Hilfe die Beschleunigungsspannung $U_B$ ermittelt werden kann, die notwendig ist, um die Elektronen im gebündelten Elektronenstrahl auf die Geschwindigkeit $v$ zu beschleunigen.

<details>

  <summary>Lösungsvorschlag</summary>
  
Beim Durchlaufen des elektrischen Felds, das durch die Beschleunigungsspannung $U_B$ erzeugt wird, gewinnt das Elektron die kinetische Energie $E_{kin}$. Diese Energie wird aus der Energie des elektrischen Felds $E_{el}$ umgewandelt.

Es gilt also 

$$
E_{el} = E_{kin}
$$

mit $E_{el} = U_B \cdot q$ und $E_{kin} = \frac{1}{2} \cdot m_e \cdot v^2$.

Einsetzen liefert:

$$
U_B \cdot q = \frac{1}{2} \cdot m_e \cdot v^2
$$

also

$$
U_B = \frac{m_e \cdot v^2}{2 \cdot q}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### B3: Geschwindigkeit

Für Elektronen, die mit einer Beschleunigungsspannung $U_B$ beschleunigt wurden, gilt für deren Geschwindigkeit $v$:

$$
 v = \sqrt { \frac{2 \cdot U_B \cdot q}{m_e} }
$$

> $q$ = Ladung eines Elektrons,   
> $m_e$ = Masse eines Elektrons

- **Leite** die Gleichung für die Geschwindigkeit $v$ **begründet her**.

<details>

  <summary>Lösungsvorschlag</summary>
  
Beim Durchlaufen des elektrischen Felds, das durch die Beschleunigungsspannung $U_B$ erzeugt wird, gewinnt das Elektron die kinetische Energie $E_{kin}$. Diese Energie wird aus der Energie des elektrischen Felds $E_{el}$ umgewandelt.

Es gilt also 

$$
E_{kin} = E_{el}
$$

mit $E_{kin} = \frac{1}{2} \cdot m_e \cdot v^2$ und $E_{el} = U_B \cdot q$.

Einsetzen liefert:

$$
\frac{1}{2} \cdot m_e \cdot v^2 = U_B \cdot q 
$$

also

$$
\begin{align}
\frac{1}{2} \cdot m_e \cdot v^2 &= U_B \cdot q \\
v^2 &= \frac{2 \cdot U_B \cdot q}{m_e} \\
v &= \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Elektronenstrahlröhre

### C1: Flugbahn

Die Flugbahn eines Elektronenstrahls in einem Ablenkkondensator (siehe Abbildung 2) kann beschrieben werden durch die Formel

$$
 y(x) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2
$$

- $y(x)$ = $y$-Koordinate des Elektronenstrahls an der Stelle $x$ im Ablenkkondensator
- $d$ = Abstand der Kondensatorplatten
- $U_y$ = Spannung zwischen den Platten des Ablenkkondensators
- $U_B$ = Beschleunigungsspannung zwischen Glühdraht und Lochanode in $x$-Richtung
- $x$ = $x$-Koordinate des Elektronenstrahls im Ablenkkondensator

- **Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
![](efeld_estrahlroehre_01.svg)

**Bewegung des Elektrons in x-Richtung:**

Der Elektronenstrahl erreicht den Ablenkkondensator mit der Geschwindigkeit 

$$
v_x = \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}}
$$

im Punkt $O(0/0)$ (Herleitung siehe **Elektronenstrahlerzeugung**). In $x$-Richtung wirkt auf das Elektron keine Kraft. Daher bewegt sich das Elektron in **$x$-Richtung** mit der **konstanten Geschwindigkeit** 

$$
v_x = \frac{x}{t}
$$

Zum Zeitpunkt $t$ befindet sich das Elektron dann am Ort $x = v_x \cdot t$.

**Kraftwirkung auf das Elektron im Ablenkkondensator:**

Innerhalb des Ablenkkondensators wird ein Elektron von der negativ geladenen Platte abgestoßen und von der positiv geladenen Platte angezogen. In $y$-Richtung wirkt also die Kraft $F_{el}$. Für die elektrische Feldstärke $E$ gilt: 

$$
E = \frac{F_{el}}{q}
$$

mit $q$ = Ladung eines Elektrons und damit 

$$
F_{el} = q \cdot E
$$

Die elektrische Feldstärke $E$ kann mit Hilfe der Spannung $U_y$ beschrieben werden: 

$$
E = \frac{U_y}{d}
$$

Also gilt insgesamt für die auf das Elektron wirkende **elektrische Kraft $F_{el}$** im Ablenkkondensator: 

$$
F_{el} = q \cdot E = q \cdot \frac{U_y}{d}
$$

oder

$$
F_{el} = \frac{U_y \cdot q}{d}
$$

**Bewegung in y-Richtung:**

Aufgrund der in $y$-Richtung wirkenden Kraft $F_{el}$ wird das Elektron in $y$-Richtung beschleunigt. Da sich die beschleunigende Kraft $F_{el}$ innerhalb des Plattenkondensators nicht ändert, ist die **Beschleunigung** $a_y$ des Elektrons in **$y$-Richtung konstant** und es gilt das Newtonsche Grundgesetz:

$$
F = m \cdot a
$$

und hier speziell 

$$
F_{el} = m_e \cdot a_y
$$

Für die Beschleunigung $a_y$ gilt also mit $F_{el} = \frac{U_y \cdot q}{d}$:

$$
a_y = \frac{F_{el}}{m_e} = \frac{U_y \cdot q}{m_e \cdot d}
$$

Bei einer beschleunigten Bewegung in $y$-Richtung gilt für den Ort $y$ (siehe Formelsammlung):

$$
y = \frac{1}{2} \cdot a_y \cdot t^2
$$

Ersetzt man $a_y$ mit $a_y = \frac{U_y \cdot q}{m_e \cdot d}$, folgt:

$$
y = \frac{1}{2} \cdot \frac{U_y \cdot q}{m_e \cdot d} \cdot t^2
$$

**$y$-Ablenkung in Abhängigkeit vom Ort $x$:**

Aus $v_x = \frac{x}{t}$ folgt 

$$
t = \frac{x}{v_x}
$$

Damit ersetzt man $t$ in der Formel für die Auslenkung $y$:

$$
y = \frac{1}{2} \cdot \frac{U_y \cdot q}{m_e \cdot d} \cdot t^2 = \frac{1}{2} \cdot \frac{U_y \cdot q}{m_e \cdot d} \cdot \left( \frac{x}{v_x} \right) ^2 = \frac{U_y \cdot q}{2 \cdot m_e \cdot d \cdot v_x^2} \cdot x^2
$$

Für die Geschwindigkeit $v_x$ wissen wir, dass gilt: 

$$
v_x = \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}}
$$

Damit wird das $v_x$ in der Formel für die Auslenkung $y$ ersetzt:

$$
\begin{align}
\require{cancel}
y &= \frac{U_y \cdot q}{2 \cdot m_e \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}} \right) ^2} \cdot x^2 \\
y &= \frac{U_y \cdot q}{2 \cdot m_e \cdot d \cdot \frac{2 \cdot U_B \cdot q}{m_e} } \cdot x^2 \\
y &= \frac{U_y \cdot \cancel{q} \cdot \cancel{m_e}}{4 \cdot \cancel{m_e} \cdot d \cdot U_B \cdot \cancel{q}} \cdot x^2 \\
\end{align}
$$

und schließlich:

$$
y(x) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### C2: Beschleunigung

Es sei $U_y$ als Spannung zwischen den Kondensatorplatten fest eingestellt. Bei einer hinreichend geringen Geschwindigkeit $v_x$ in x-Richtung treffen die Elektronen auf eine der Kondensatorplatten, bevor sie den Kondensator verlassen können. Dabei ist $x$ die x-Koordinate des Auftreffpunktes auf die Platte. Die Geschwindigkeit $v_x$ ist abhängig von der Beschleunigungsspannung $U_B$ zwischen der Glühkathode und der Lochanode. Für den Zusammenhang zwischen $U_B$ und $x$ gilt: 

$$
  U_B = \frac{U_y}{2 \cdot d^2} \cdot x^2
$$

- **Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
Im **ersten Schritt** muss folgende Formel hergeleitet werden (siehe oben).

$$
 y(x) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2
$$

Im **zweiten Schritt** setzt man für $y$ den Wert $y = \frac{d}{2}$ ein, da ein Elektron von der Mitte des Kondensators aus in y-Richtung die Strecke $\frac{d}{2}$ fliegen muss, bevor es auf die Kondensatorplatte trifft.

Also gilt:

$$
\begin{align}
\require{cancel}
y(x) &= \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2 \\
\frac{d}{2} &= \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2 \\
U_B &= \frac{U_y \cdot 2}{4 \cdot d^2} \cdot x^2 \\
U_B &= \frac{U_y}{2 \cdot d^2} \cdot x^2 \\
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### C3 Austrittspunkt

In einer Elektronenstrahlröhre liegt zwischen zwei Kondensatorplatten die Spannung $U_y$ an. Der Elektronenstrahl wird zwischen den Kondensatorplatten so abgelenkt, dass er im Abstand $s$ zur Kondensatormitte den Kondensator verlässt. Für die Ablenkung der Elektronen im elektrischen Feld des Plattenkondensators gilt dann:

$$
  s = 0,5 \cdot \frac{e \cdot U_y \cdot l^2}{m_e \cdot d \cdot {v_x}^2} 
$$

mit  
- $s$: Abstand des Austrittspunkts von der Mittelachse  
- $e$: Elementarladung  
- $m_e$: Elektronenmasse  
- $U_y$: Spannung zwischen den Kondensatorplatten  
- $l$: Länge der Kondensatorplatten  
- $d$: Abstand der Kondensatorplatten  
- $v_x$: Eintrittsgeschwindigkeit der Elektronen   

**Leite diese Formel begründet her**. 

<details>

  <summary>Lösungsvorschlag</summary>
  
![](efeld_estrahlroehre_01.svg)

**Bewegung des Elektrons in x-Richtung:**

In $x$-Richtung wirkt auf das Elektron keine Kraft. Daher bewegt sich das Elektron in **$x$-Richtung** mit der **konstanten Geschwindigkeit** 

$$
v_x = \frac{x}{t}
$$

Zum Durchfliegen des Plattenkondensators der Länge $l$ benötigt das Elektron die Zeit $t = \frac{l}{v_x}$.

**Kraftwirkung auf das Elektron im Ablenkkondensator:**

Innerhalb des Ablenkkondensators wird ein Elektron von der negativ geladenen Platte abgestoßen und von der positiv geladenen Platte angezogen. In $y$-Richtung wirkt also die Kraft $F_{el}$. Für die elektrische Feldstärke $E$ gilt: 

$$
E = \frac{F_{el}}{e}
$$

mit $e$ = Ladung eines Elektrons und damit 

$$
F_{el} = e \cdot E
$$

Die elektrische Feldstärke $E$ zwischen den Kondensatorplatten kann mit Hilfe der am Kondensator anliegenden Spannung $U_y$ beschrieben werden: 

$$
E = \frac{U_y}{d}
$$

Also gilt insgesamt für die auf das Elektron wirkende **elektrische Kraft $F_{el}$** im Ablenkkondensator: 

$$
F_{el} = e \cdot E = e \cdot \frac{U_y}{d}
$$

oder

$$
F_{el} = \frac{U_y \cdot e}{d}
$$

**Bewegung in y-Richtung:**

Aufgrund der in $y$-Richtung wirkenden Kraft $F_{el}$ wird das Elektron in $y$-Richtung beschleunigt. Da sich die beschleunigende Kraft $F_{el}$ innerhalb des Plattenkondensators nicht ändert, ist die **Beschleunigung** $a_y$ des Elektrons in **$y$-Richtung konstant** und es gilt das Newtonsche Grundgesetz:

$$
F = m \cdot a
$$

und hier speziell 

$$
F_{el} = m_e \cdot a_y
$$

Für die Beschleunigung $a_y$ gilt also mit $F_{el} = \frac{U_y \cdot e}{d}$:

$$
a_y = \frac{F_{el}}{m_e} = \frac{U_y \cdot e}{m_e \cdot d}
$$

Bei einer beschleunigten Bewegung in $y$-Richtung gilt für den Ort $y$ (siehe Formelsammlung):

$$
y = \frac{1}{2} \cdot a_y \cdot t^2
$$

Ersetzt man $a_y$ mit $a_y = \frac{U_y \cdot e}{m_e \cdot d}$, folgt:

$$
y = \frac{1}{2} \cdot \frac{U_y \cdot e}{m_e \cdot d} \cdot t^2
$$

In der Zeit $t = \frac{l}{v_x}$ legt das Elektron in y-Richtung den Weg $s$ zurück, also:

$$
\begin{align}
s &= \frac{1}{2} \cdot \frac{U_y \cdot e}{m_e \cdot d} \cdot \left(\frac{l}{v_x} \right)^2 \\
s &= 0,5 \cdot \frac{U_y \cdot e \cdot l^2}{m_e \cdot d \cdot {v_x}^2}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### C4: Auftreffpunkt

Ein Elektronenstrahl durchfliegt einen Ablenkkondensator der Länge $l$ mit dem Plattenabstand $d$. Nachdem ein Elektron den Kondensator verlassen hat, fliegt es kräftefrei weiter, bis es auf einen Schirm im Punkt $Q(x_Q/y_Q)$ auftrifft. Für die $x$-Koordinate des Auftreffpunkts $Q$ gilt offensichtlich $x_Q = l + s$. Für die $y$-Koordinate von $Q$ gilt: 

$$
 y_Q = \frac{U_y}{4 \cdot d \cdot U_B} \cdot (l^2 + 2 \cdot l \cdot s)
$$
- $U_y$ = Spannung zwischen den Platten des Ablenkkondensators
- $U_B$ = Beschleunigungsspannung zwischen Glühdraht und Lochanode in $x$-Richtung
- $s$ = Abstand des Schirms vom Ablenkkondensator

- **Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
![](efeld_estrahlroehre_01.svg)

Das Elektron erreicht den Ablenkkondensator im Punkt $O(0/0)$. Nachdem es den Ablenkkondensator im Punkt $R$ verlassen hat, fliegt es geradlinig mit konstanter Geschwindigkeit weiter, denn es wirkt auf das Elektron keine Kraft mehr (idealisiert). 

Es trifft im Punkt $Q(x_Q/y_Q)$ auf den Schirm. Dabei ist $x_Q = l + s$.

Auf dem Weg vom Ablenkkondensator zum Schirm (**vom Kondensator zum Schirm = KS**) legt das Elektron den Weg $y_{\text{KS}}$ zurück. Insgesamt hat es also folgenden Weg in y-Richtung zurückgelegt:

$$
y_Q = y(l) + y_{\text{KS}}
$$

**Bestimmung von $y_{KS}$:**

Zwischen Ablenkkondensator und Schirm bewegt sich das Elektron mit der Geschwindigkeit $v_x$ fort, da es zu keinem Zeitpunkt nach Verlassen der Lochanode in $x$-Richtung beschleunigt wurde. Bis zum Auftreffen auf den Schirm vergeht also die Zeit

$$
t_{\text{KS}} = \frac{s}{v_x}
$$

Im Ablenkkondensator (**Kondensator = K**) wird das Elektron für die Zeit  

$$
t_{\text{K}} = \frac{l}{v_x}
$$

mit der Beschleunigung $a_y$ beschleunigt (siehe obige Herleitung):

$$
a_y = \frac{U_y \cdot q}{m_e \cdot d}
$$

Beim Verlassen des Ablenkkondensators hat das Elektron also in $y$-Richtung die Geschwindigkeit $v_y$:

$$
v_y = a_y \cdot t_{\text{K}} = \frac{U_y \cdot q}{m_e \cdot d} \cdot \frac{l}{v_x}
$$

Auf dem Weg vom Ablenkkondensator zum Schirm legt das Elektron in $y$-Richtung also folgenden Weg zurück:

$$
y_{\text{KS}} = v_y \cdot t_{\text{KS}} = \frac{U_y \cdot q}{m_e \cdot d} \cdot \frac{l}{v_x} \cdot \frac{s}{v_x}
$$

Setzt man jetzt für die Geschwindigkeit $v_x = \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}}$ ein (siehe Herleitung zur Elektronenstrahlerzeugung), dann folgt:

$$
\begin{align}
\require{cancel}
y_{\text{KS}} &= \frac{U_y \cdot q}{m_e \cdot d} \cdot \frac{l}{v_x} \cdot \frac{s}{v_x} \\
 &= \frac{U_y \cdot q}{m_e \cdot d \cdot v_x^2} \cdot l \cdot s \\
 &= \frac{U_y \cdot q}{m_e \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_B \cdot q}{m_e}} \right)^2} \cdot l \cdot s \\
 &= \frac{U_y \cdot \cancel{q}}{\cancel{m_e} \cdot d \cdot \left( \frac{2 \cdot U_B \cdot \cancel{q}}{\cancel{m_e}} \right) } \cdot l \cdot s
\end{align}
$$

Also legt das Elektron auf dem Weg vom Ablenkkondensator zum Schirm in $y$-Richtung folgenden Weg zurück: 

$$
y_{\text{KS}} = \frac{U_y}{2 \cdot d \cdot U_B} \cdot l \cdot s
$$

**Bestimmung von $y(l)$:**

Innerhalb des Ablenkkondensators bewegt sich das Elektron beschleunigt in $y$-Richtung. Dabei gilt für die $y$-Koordinate in Abhängigkeit vom Ort $x$ (Herleitung siehe oben):

$$
y(x) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot x^2
$$

Wenn die Ablenkspannung $U_y$ so eingestellt wird, dass ein Elektron den Ablenkkondensator verlassen kann ohne auf einer der Kondensatorplatten aufzutreffen, gilt für die $y$-Koordinate an der Stelle $x = l$:

$$
y(l) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot l^2
$$

   - $d$ = Abstand der Kondensatorplatten
   - $U_y$ = Spannung zwischen den Platten des Ablenkkondensators
   - $U_B$ = Beschleunigungsspannung zwischen Glühdraht und Lochanode in $x$-Richtung
   - $l$ = Länge des Ablenkkondensators

**Bestimmung des insgesamt zurückgelegten Wegs $y_Q$ in $y$-Richtung:**

Der insgesamt in $y$-Richtung zurückgelegte Weg $y_Q$ ist die Summe aus $y(l)$ und $y_{\text{KS}}$:

$$
y_Q = y(l) + y_{\text{KS}}
$$

mit 

$$
y(l) = \frac{U_y}{4 \cdot d \cdot U_B} \cdot l^2
$$ 

und 

$$
y_{\text{KS}} = \frac{U_y}{2 \cdot d \cdot U_B} \cdot l \cdot s
$$

Setzt man diese Ausdrücke in die Summe $y_Q = y(l) + y_{\text{KS}}$ ein, folgt:

$$
\begin{align}
y_Q &= \frac{U_y}{4 \cdot d \cdot U_B} \cdot l^2 + \frac{U_y}{2 \cdot d \cdot U_B} \cdot l \cdot s \\
 &= \frac{U_y}{4 \cdot d \cdot U_B} \cdot \left(l^2 + 2 \cdot l \cdot s \right)
\end{align}
$$

Also

$$
y_Q = \frac{U_y}{4 \cdot d \cdot U_B} \cdot \left(l^2 + 2 \cdot l \cdot s \right)
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Kondensatorentladung

### D1: Modellierung

Der **Entladevorgang** eines Kondensators kann mit folgenden Formeln beschrieben werden:

**Ladung $Q(t)$** auf den Kondensatorplatten:
$$
 Q(t) = Q_0 \cdot e^{-\frac{1}{R \cdot C} \cdot t}
$$

**Stromstärke $I(t)$** im Stromkreis:
$$
 I(t) = - I_{0} \cdot e^{-\frac{1}{R \cdot C} \cdot t}
$$

**Spannung $U_C(t)$** am Kondensator:
$$
 U_C(t) = U_0 \cdot e^{-\frac{1}{R \cdot C}\cdot t}
$$

- **Leite** diese Formeln begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
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

**Damit sind alle Formeln erfolgreich hergeleitet worden.**

</details>

---

### D2: Halbwertszeit

Für die **Halbwertszeit $t_H$** beim Entladungsvorgang eines Kondensators gilt die Gleichung: $t_H = R \cdot C \cdot ln(2)$.

**Leite** diese Gleichung begründet her. 

<details>

  <summary>Lösungsvorschlag</summary>
  
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

**Damit ist die Formel erfolgreich hergeleitet worden.**

</details>

---

## Kapazität

### E1: Dielektrikum

In einem Kondensator ist die eine Hälfte mit einem Material der Materialkonstante $\epsilon_1$ und die andere Hälfte mit einem Material der Materialkonstante $\epsilon_2$ gefüllt ist. Für die beiden Materialkonstanten gilt bei dieser Versuchsanordnung folgender Zusammenhang:

$$
 \epsilon_1 = \frac{2 \cdot C \cdot d}{A \cdot \epsilon_0} - \epsilon_2
$$

- **Leite** diese Gleichung begründet her. Du kannst dabei verwenden, dass für die Parallelschaltung zweier Kondensatoren gilt: $C = C_1 + C_2$. 

<details>

  <summary>Lösungsvorschlag</summary>

![](kondensatorfuellung01.png ':size=300')

Der jeweils zur Hälfte mit einem anderen Material gefüllte Kondensator kann als Parallelschaltung zweier Kondensatoren aufgefasst werde. Für die Gesamtkapazität zweier parallelgeschalteter Kondensatoren gilt: $C = C_1 + C_2$.

Für die Kapazität eines Kondensators der Fläche $A$ mit dem Plattenabstand $d$ gilt:

$$
 C = \epsilon_0 \cdot \epsilon_r \cdot \frac{A}{d}
$$

Die beiden Teilkondensatoren haben jeweils den Flächeninhalt $\tfrac{A}{2}$, so dass für die Gesamtkapazität $C$ gilt:

$$
\begin{align}
 C &= C_1 + C_2 = \epsilon_0 \cdot \epsilon_1 \cdot \frac{\tfrac{A}{2}}{d} + \epsilon_0 \cdot \epsilon_2 \cdot \frac{\tfrac{A}{2}}{d} \\
 C &= \frac{\epsilon_0 \cdot \epsilon_1 \cdot A}{2 \cdot d} + \frac{\epsilon_0 \cdot \epsilon_2 \cdot A}{2 \cdot d} \\
 C &= \frac{\epsilon_0 \cdot A}{2 \cdot d} \cdot (\epsilon_1 + \epsilon_2) \\
 \epsilon_1 &= \frac{2 \cdot C \cdot d}{A \cdot \epsilon_0} - \epsilon_2
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

