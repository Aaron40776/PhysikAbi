## Lorentzkraft

### Aufgabe A1

**Zeige**, dass die Formeln $F_L = e \cdot v \cdot B$ für die Lorentzkraft auf ein bewegtes Elektron im Magnetfeld und die Formel $F_L = B \cdot I \cdot s$ für die Lorentzkraft auf einen stromdurchflossenen Leiter im Magnetfeld äquivalent sind.

<details>

  <summary>Lösungsvorschlag</summary>
  
Wir gehen von der Formel $F_L = B \cdot I \cdot s$ aus.

Für den Elektronenstrom in einem Leiter kann man vereinfacht annehmen, dass sich die $N$ Elektronen (jeweils mit der Ladung $e$) mit der Geschwindigkeit $v$ durch den Leiter bewegen. Es gilt:

$$
 I = \frac{Q}{t} = \frac{N \cdot e}{t}
$$

In der Zeit $t$ legt ein Elektron der Ladung $e$ mit der Geschwindigkeit $v$ die Strecke $s$ zurück. Es gilt:

$$
 s = v \cdot t \text{, also } \, t = \frac{s}{v}
$$

Daraus folgt:

$$
 I = \frac{Q}{t} = \frac{N \cdot e \cdot v}{s}
$$

Aus der Formel für die Lorentzkraft eines stromdurchflossenen Leiters gilt:

$$
F_L = B \cdot I \cdot s = B \cdot \frac{N \cdot e \cdot v}{s} \cdot s = B \cdot N \cdot e \cdot v
$$

Für ein einzelnes Elektron gilt dann:

$$
 F_L = B \cdot e \cdot v
$$

Damit ist die Äquivalenz der Formeln gezeigt worden.

</details>

---

## Wienfilter

### Aufgabe B1

Mit einem **Wien-Filter** kann man aus einem Strahl geladener Objekte diejenigen mit einer bestimmten Geschwindigkeit $v$ herausfiltern.
 
**Erkläre** die Funktionsweise eines Wienfilters und **leite begründet eine Formel her**, die den Zusammenhang zwischen den Feldgrößen und der Geschwindigkeit angibt.

<details>

  <summary>Lösungsvorschlag</summary>
  
Der Strahl mit den geladenen Objekten soll im Folgenden ein **Elektronenstrahl** sein. Im gewählten Beispiel soll das **Magnetfeld B** in die Ebene zeigen und das **elektrische Feld E** aus Sicht der Kraftwirkung auf ein Elektron als negativer Probeladung von unten nach oben gerichtet sein.

![](bfeld_wienfilter01.png)

Sobald der Elektronenstrahl den Bereich des geladenen Kondensators erreicht, erfährt ein Elektron eine elektrische Kraft $F_{el}$ nach oben, da es vom Minuspol abgestoßen und vom Pluspol angezogen wird. Durch das gleichzeitig im Kondensator vorhandene Magnetfeld erfährt das Elektron nach der Linke-Hand-Regel eine Lorentzkraft $F_L$ nach unten. 

![](bfeld_wienfilter02.png)

Alle Elektronen, welche mit der betragsgleichen Kraft nach oben und unten abgelenkt werden, können den Wien-Filter **geradlinig** durchfliegen (grauer Strahl). Überwiegt die elektrische Kraft $F_{el}$, werden die Elektronen nach **oben abgelenkt** (roter Strahl). Ist der Betrag der Lorentzkraft $F_L$ größer, werden die Elektronen nach **unten abgelenkt** (grüner Strahl).

![](bfeld_wienfilter03.png)

Im folgenden soll **hergeleitet** werden, welche Geschwindigkeit ein Elektron haben muss, um den Wien-Filter geradlinig zu durchfliegen. Für die **elektrische Kraft $F_{el}$**, welche im Kondensator auf ein Elektron wirkt, gilt: 

$$
F_{el} = q \cdot E
$$

mit $q$ = Ladung eines Elektrons, $E$ = elektrische Feldstärke

Für die **Lorentzkraft $F_L$**, welche im Bereich des Magnetfelds auf ein Elektron wirkt, gilt:

$$
F_L = q \cdot v \cdot B
$$

mit $q$ = Ladung eines Elektrons, $v$ = Geschwindigkeit eines Elektrons, $B$ = magnetische Flussdichte

Für die Elektronen, welche den Wien-Filter geradlinig durchfliegen, gilt:

$$
F_L = F_{el}
$$

Setzt man die Formeln ein, folgt:

$$ 
\begin{align}
F_L &= F_{el} \\
q \cdot v \cdot B &= q \cdot E \\
v \cdot B &= E \\
v &= \frac{E}{B}
\end{align}
$$

**Damit hat man gezeigt:** Alle Elektronen mit der Geschwindigkeit $v = \frac{E}{B}$ können den Wien-Filter geradlinig durchfliegen. Da bei der Herleitung die Ladung $q$ weggefallen ist, gilt diese Formel für alle geladenen Objekte, also auch z.B. Protonen und Ionen.

</details>

---

### Aufgabe B2

**Begründe**, dass die Geschwindigkeit von α-Teilchen, die geradlinig durch ein elektrisches Feld der Stärke $E$ und ein dazu senkrecht gerichtetes Magnetfeld der Stärke $B$ fliegen, durch die Gleichung  

$$
 v = \frac{U_K}{B \cdot d}
$$

berechnet werden kann. 

Dabei gilt: $v$ = Geschwindigkeit der α-Teilchen, $U_K$ = Spannung zwischen den felderzeugenden Kondensatorplatten, $d$ = Abstand der Kondensatorplatten

<details>

  <summary>Lösungsvorschlag</summary>
  
Auf ein positiv geladenes α-Teilchen der Ladung $q$ wirkt im Bereich des Plattenkondensators mit dem Plattenabstand $d$, an dem die Spannung $U_K$ anliegt, die **elektrische Kraft $F_{el}$**:

$$
 F_{el} = q \cdot E = q \cdot \frac{U_K}{d}
$$

Für die **Lorentzkraft $F_L$**, welche im Bereich des Magnetfelds auf ein α-Teilchen wirkt, gilt:

$$
 F_L = q \cdot v \cdot B
$$

mit $q$ = Ladung eines α-Teilchens, $v$ = Geschwindigkeit eines α-Teilchens, $B$ = magnetische Flussdichte

Für die α-Teilchen, welche den Wien-Filter geradlinig durchfliegen, gilt:

$$
 F_L = F_{el}
$$

Setzt man die Formeln ein, folgt:

$$ 
\begin{align}
 F_L &= F_{el} \\
q \cdot v \cdot B &= q \cdot E \\
v \cdot B &= \frac{U_K}{d} \\
v &= \frac{U_K}{B \cdot d}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Ladungen im Magnetfeld

### Aufgabe C1

Elektronen bewegen sich in einem Magnetfeld auf einem Kreisbogen. **Leite** folgende Gleichung für dessen Radius $r$ her:

$$
 r = \frac{m_e \cdot v}{e \cdot B}
$$

mit $m_e$ = Masse eines Elektrons, $v$ = Geschwindigkeit eines Elektrons, $e$ = Ladung eines Elektrons, $B$ = Stärke des Magnetfelds.

<details>

  <summary>Lösungsvorschlag</summary>
  
Damit sich die Elektronen auf einer Kreisbahn bewegen, muss auf diese eine Zentripetalkraft $F_{ZP}$ wirken, die stets senkrecht zur Bewegungsrichtung der Elektronen orientiert ist.

Bewegen sich die Elektronen in einem Magnetfeld, das senkrecht zur Bewegungsrichtung der Elektronen ausgerichtet ist, wirkt auf die Elektronen die Lorentzkraft $F_L$, welche nach der Drei-Finger-Regel die Funktion einer Zentripetalkraft übernimmt.

Es gilt für die Lorentzkraft $F_L = e \cdot v \cdot B$ und für die Zentripetalkraft $F_{ZP} = \frac{m_e \cdot v^2}{r}$. Da die Lorentzkraft die Rolle der Zentripetalkraft übernimmt, gilt:

$$
\begin{align}
 F_{ZP} &= F_L \\
 \frac{m_e \cdot v^2}{r} &= e \cdot v \cdot B \\
 r &= \frac{m_e \cdot v}{e \cdot B}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe C2

Bei der Bewegung von Elektronen der Ladung $e$, die mit der Spannung $U_B$ beschleunigt wurden und dann mit konstanter Geschwindigkeit $v$ in ein Magnetfeld fliegen, das senkrecht zur Bewegungsrichtung der Elektronen orientiert ist, lässt sich aus den Daten für die magnetische Flussdichte $B$, dem Bahnradius $r$ und der Beschleunigungsspannung $U_B$ die Geschwindigkeit $v$ der Teilchen mit Hilfe folgender Gleichung bestimmen:

$$
 v = \frac{2 \cdot U_B}{r \cdot B}
$$

**Leite** die hier angegebene Gleichung begründet her. 

<details>

  <summary>Lösungsvorschlag</summary>
  
Die Elektronen gewinnen beim Durchfliegen eines elektrischen Felds mit der Beschleunigungsspannung $U_B$ die elektrische Energie $E_{el} = e \cdot U_B$. Diese elektrische Energie nehmen die Elektronen als Bewegungsenergie $E_{kin} = \tfrac{1}{2} \cdot m_e \cdot v^2$ auf.

Es gilt damit:

$$
\begin{align}
 E_{el} &= E_{kin} \\
 e \cdot U_B &= \tfrac{1}{2} \cdot m_e \cdot v^2 \\
 v^2 &= \frac{2 \cdot e \cdot U_B}{m_e}
\end{align}
$$

Damit sich die Elektronen auf einer Kreisbahn bewegen, muss auf diese eine Zentripetalkraft $F_{ZP}$ wirken, die stets senkrecht zur Bewegungsrichtung der Elektronen orientiert ist. Bewegen sich die Elektronen in einem Magnetfeld, das senkrecht zur Bewegungsrichtung der Elektronen ausgerichtet ist, wirkt auf die Elektronen die Lorentzkraft $F_L$, welche nach der Drei-Finger-Regel die Funktion einer Zentripetalkraft übernimmt.

Es gilt für die Lorentzkraft $F_L = e \cdot v \cdot B$ und für die Zentripetalkraft $F_{ZP} = \frac{m_e \cdot v^2}{r}$. Da die Lorentzkraft die Rolle der Zentripetalkraft übernimmt, gilt:

$$
\begin{align}
 F_{ZP} &= F_L \\
 \frac{m_e \cdot v^2}{r} &= e \cdot v \cdot B \\
 \frac{m_e \cdot \frac{2 \cdot e \cdot U_B}{m_e}}{r} &= e \cdot v \cdot B \\
 \frac{m_e \cdot 2 \cdot e \cdot U_B}{m_e \cdot r} &= e \cdot v \cdot B \\
 v &= \frac{2 \cdot U_B}{r \cdot B}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe C3

Für geladene Teilchen (Energie $E$, Ladung $q$ und Masse $m$), die sich senkrecht zur Richtung eines Magnetfeldes mit der Flussdichte $B$ bewegen, wird der Bahnradius $r$ mit folgender Gleichung berechnet:

$$
 r = \frac{\sqrt{2 \cdot E \cdot m}}{B \cdot q}
$$

**Leite** diese Gleichung begründet her. 

<details>

  <summary>Lösungsvorschlag</summary>
  
Ein geladenes Teilchen der Ladung $q$ gewinnt beim Durchfliegen eines elektrischen Felds mit der Beschleunigungsspannung $U_B$ die elektrische Energie $E_{el} = q \cdot U_B$. Diese elektrische Energie nimmt das geladene Teilchen als Bewegungsenergie $E_{kin} = \tfrac{1}{2} \cdot m \cdot v^2$ auf.

Es gilt damit:

$$
\begin{align}
 E_{el} &= E_{kin} = E\\
 E &= \tfrac{1}{2} \cdot m \cdot v^2 \\
 v &= \sqrt{ \frac{2 \cdot E}{m}}
\end{align}
$$

Damit sich geladene Teilchen auf einer Kreisbahn bewegen, muss auf diese eine Zentripetalkraft $F_{ZP}$ wirken, die stets senkrecht zur Bewegungsrichtung der geladene Teilchen orientiert ist. Bewegen sich die geladene Teilchen in einem Magnetfeld, das senkrecht zur Bewegungsrichtung der geladene Teilchen ausgerichtet ist, wirkt auf die geladene Teilchen die Lorentzkraft $F_L$, welche nach der Drei-Finger-Regel die Funktion einer Zentripetalkraft übernimmt.

Es gilt für die Lorentzkraft $F_L = q \cdot v \cdot B$ und für die Zentripetalkraft $F_{ZP} = \frac{m \cdot v^2}{r}$. Da die Lorentzkraft die Rolle der Zentripetalkraft übernimmt, gilt:

$$
\begin{align}
 F_{ZP} &= F_L \\
 \frac{m \cdot v^2}{r} &= q \cdot v \cdot B \\
 r &= \frac{m \cdot v}{q \cdot B} \\
 r &= \frac{m \cdot \sqrt{ \frac{2 \cdot E}{m}}}{q \cdot B} \\
 r &= \frac{\sqrt{m^2 \cdot \frac{2 \cdot E}{m}}}{q \cdot B} \\
 r &= \frac{\sqrt{2 \cdot E \cdot m}}{B \cdot q}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe C4

Wenn ein Elektron, das mit der Beschleunigungsspannung $U_B$ auf eine Geschwindigkeit $v$ beschleunigt wurde, in einem zur Bewegungsrichtung senkrecht orientierten Magnetfeld der Stärke $B$ eine Kreisbahn mit dem Radius $r$ durchfliegt, kann aus den Bahndaten das Verhältnis von Elektronenladung $e$ und Elektronenmasse $m_e$, also $\frac{e}{m_e}$, das spezifische Ladung genannt wird, bestimmt werden. Die Gleichung zur Bestimmung der spezifischen Ladung lautet: 

$$
 \frac{e}{m_e} = \frac{2 \cdot U_B}{B^2 \cdot r^2}
$$

**Leite** diese Gleichung begründet her. 

<details>

  <summary>Lösungsvorschlag</summary>
  
Die Elektronen gewinnen beim Durchfliegen eines elektrischen Felds mit der Beschleunigungsspannung $U_B$ die elektrische Energie $E_{el} = e \cdot U_B$. Diese elektrische Energie nehmen die Elektronen als Bewegungsenergie $E_{kin} = \tfrac{1}{2} \cdot m_e \cdot v^2$ auf.

Es gilt damit:

$$
\begin{align}
 E_{el} &= E_{kin} \\
 e \cdot U_B &= \tfrac{1}{2} \cdot m_e \cdot v^2 \\
 v^2 &= \frac{2 \cdot e \cdot U_B}{m_e} \\
 v &= \sqrt{ \frac{2 \cdot e \cdot U_B}{m_e} }\\
\end{align}
$$

Damit sich die Elektronen auf einer Kreisbahn bewegen, muss auf diese eine Zentripetalkraft $F_{ZP}$ wirken, die stets senkrecht zur Bewegungsrichtung der Elektronen orientiert ist. Bewegen sich die Elektronen in einem Magnetfeld, das senkrecht zur Bewegungsrichtung der Elektronen ausgerichtet ist, wirkt auf die Elektronen die Lorentzkraft $F_L$, welche nach der Drei-Finger-Regel die Funktion einer Zentripetalkraft übernimmt.

Es gilt für die Lorentzkraft $F_L = e \cdot v \cdot B$ und für die Zentripetalkraft $F_{ZP} = \frac{m_e \cdot v^2}{r}$. Da die Lorentzkraft die Rolle der Zentripetalkraft übernimmt, gilt:

$$
\begin{align}
 F_{ZP} &= F_L \\
 \frac{m_e \cdot v^2}{r} &= e \cdot v \cdot B \\
 \frac{m_e \cdot v}{r} &= e \cdot B \\
 \frac{e}{m_e} &= \frac{v}{B \cdot r} \\
 \frac{e}{m_e} &= \frac{\sqrt{ \frac{2 \cdot e \cdot U_B}{m_e} }}{B \cdot r} \\
 \frac{e^2}{m_e^2} &= \frac{\frac{2 \cdot e \cdot U_B}{m_e}}{B^2 \cdot r^2} \\
 \frac{e}{m_e^2} &= \frac{2 \cdot U_B}{m_e \cdot B^2 \cdot r^2} \\
 \frac{e}{m_e} &= \frac{2 \cdot U_B}{B^2 \cdot r^2} \\
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe C5

Elektronen der Ladung $e$ werden mit der Beschleunigungsspannung $U_B$ auf eine Geschwindigkeit $v$ beschleunigt. Im Magnetfeld der Stärke $B$ wird der Durchmesser $d$ der Elektronenbahn gemessen. 

**Leite** folgende Gleichung für die Elektronenmasse $m_e$ bei diesem Experiment her.

$$
  m_e = \frac{e \cdot d^2 \cdot B^2}{8 \cdot U_B}
$$

<details>

  <summary>Lösungsvorschlag</summary>
  
Wie in der letzten Herleitung gezeigt wurde, gilt für die spezifische Ladung $\frac{e}{m_e}$:

$$
 \frac{e}{m_e} = \frac{2 \cdot U_B}{B^2 \cdot r^2}
$$

Die Formel wird jetzt nach $m_e$ aufgelöst und für den Radius $r$ wird der halbe Durchmesser $\frac{d}{2}$ eingesetzt:

$$
\begin{align}
 \frac{e}{m_e} &= \frac{2 \cdot U_B}{B^2 \cdot r^2} \\
 m_e &= \frac{e \cdot B^2 \cdot r^2}{2 \cdot U_B} \\
 m_e &= \frac{e \cdot B^2 \cdot \left( \frac{d}{2} \right) ^2}{2 \cdot U_B} \\
 m_e &= \frac{e \cdot B^2 \cdot d^2}{2 \cdot U_B \cdot 2^2} \\
 m_e &= \frac{e \cdot d^2 \cdot B^2 }{8 \cdot U_B} \\
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe C6

Elektronen der Ladung $e$ und der Elektronenmasse $m_e$ werden mit der Beschleunigungsspannung $U_B$ auf eine Geschwindigkeit $v$ beschleunigt. Im Magnetfeld der Stärke $B$ bewegen sich die Elektronen auf einer Kreisbahn mit dem Radius $r$.

Es gilt:

$$
  r = \sqrt{\frac{2 \cdot m_e}{e \cdot B^2}} \cdot \sqrt{U_B}
$$

**Leite** diese Gleichung begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
Wie in der vorletzten Herleitung gezeigt wurde, gilt für die spezifische Ladung $\frac{e}{m_e}$:

$$
 \frac{e}{m_e} = \frac{2 \cdot U_B}{B^2 \cdot r^2}
$$

Löst man diese Gleichung nach $r$ auf, folgt:

$$
\begin{align}
 r^2 &= \frac{2 \cdot U_B \cdot m_e}{e \cdot B^2} \\
 r^2 &= \frac{2 \cdot m_e}{e \cdot B^2} \cdot U_B \\
 r &= \sqrt{ \frac{2 \cdot m_e}{e \cdot B^2} \cdot U_B } \\
 r &= \sqrt{ \frac{2 \cdot m_e}{e \cdot B^2} } \cdot \sqrt{ U_B } \\
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Hallsonde

### Aufgabe D1

Mit einer **Hall-Sonde** kann man die Stärke eines Magnetfelds messen. Für den Zusammenhang zwischen der Hallspannung $U_H$ und der magnetischen Flussdichte $B$ gilt:

$$
  U_H = R_H \cdot \frac{I_{H} \cdot B}{d}
$$

mit $R_H = \frac{1}{n \cdot e}$ = Hallkonstante des Materials, $n = \frac{N}{V}$ = Ladungsträgerdichte, $I_H$ = Stromstärke in der Hallsonde, $d$ = Tiefe der Hallsonde.

**Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
![Halleffekt](halleffekt.png)

Ein Elektron mit der Ladung $e$ bewegt sich mit der Geschwindigkeit $v$ senkrecht zum Magnetfeld der Stärke $B$ durch die Hallsonde. Dabei wirkt auf das Elektron die Lorentzkraft $F_L$ mit

$$
F_L = e \cdot v \cdot B
$$ 

Betrachtet man alle fließenden Elektronen, so bewirkt die Lorentzkraft eine Verschiebung der sich bewegenden Elektronen in der Hallsonde je nach Orientierung des Magnetfelds und der Fließrichtung nach oben bzw. unten. In der abgebildeten Skizze fließen aufgrund der Ladungsverschiebung unten mehr Elektronen pro Volumenelement durch die Hallsonde als oben und es entsteht ein elektrisches Feld. Die Verschiebung der Elektronen geschieht solange, bis die auf ein Elektron wirkende elektrische Feldkraft $F_{el}$ und die entgegengesetzt gerichtete Lorentzkraft $F_L$ vom Betrag gleich sind. In der Hallsonde bildet sich eine Hallspannung $U_H$ aus, die zwischen dem oberen und unteren Ende der Hallsonde gemessen werden kann. Da Lorentzkraft $F_L$ und elektrische Feldkraft $F_\text{el}$ im Gleichgewicht sind, ist das elektrische Feld in der Hallsonde homogen und es gilt für die elektrische Feldstärke $E$ des elektrischen Felds: $E = \frac{U_H}{b}$ und $E = \frac{F_{el}}{e}$.

$$
\begin{align}
F_L &= F_{el} \\
e \cdot v \cdot B &= e \cdot \frac{U_H}{b} \\
U_H &= b \cdot v \cdot B
\end{align}
$$

Die Geschwindigkeit $v$ der Elektronen ist keine Messgröße. Die Formel soll so weiter entwickelt werden, dass nur Messgrößen enthalten sind.

Es sei $N$ die Anzahl der in der Hallsonde vorhandenen Elektronen. Für die Durchquerung der Hallsonde benötigt ein Elektron die Zeit $t$. Während dieser unbekannten Zeit werden alle Elektronen in der Hallsonde einmal ausgetauscht, so dass sich während der Zeit $t$ genau $N$ Elektronen durch die Hallsonde bewegen. Für den Strom $I_{H}$ gilt dann:

$$
\begin{align}
  I_{H} &= \frac{N \cdot e}{t} \\
  t &= \frac{N \cdot e}{I_{H}}
\end{align}
$$

Für die Geschwindigkeit $v$ gilt mit $s$ als Länge der Hallsonde:

$$
v = \frac{\text{Weg}}{\text{Zeit}} = \frac{s}{t} = \frac{s}{\frac{N \cdot e}{I_H}} = \frac{s \cdot I_H}{N \cdot e}
$$

Setzt man diesen Ausdruck für die Geschwindigkeit $v$ in die Formel für die Hallspannung $U_H$ ein, so folgt:

$$
U_H = b \cdot \frac{s \cdot I_{H}}{N \cdot e} \cdot B
$$

Mit einem mathematischen Trick kann die Ladungsträgerdichte $n = \frac{N}{V}$ in die Formel gebracht werden. Das Volumen der Hallsonde ist $V = b \cdot s \cdot d$. Man erweitert den Bruch mit $\frac{d}{d}$ und ersetzt den Quotienten $\frac{N}{V}$ dann mit $n$. 

$$
\begin{align}
U_H &= b \cdot \frac{s \cdot I_{H}}{N \cdot e} \cdot B\\ 
&= \frac{b \cdot s \cdot d}{N \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= \frac{V}{N \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= \frac{1}{n \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= R_H \cdot \frac{I_{H} \cdot B}{d}
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe D2

**Zeige**, dass für die Stromstärke $I_H$ in einer Hallsonde mit der Querschnittsfläche $A = b \cdot d$ die folgende Beziehung gilt:  
 
$$
 I_H = e \cdot n \cdot v \cdot b \cdot d
$$
 
mit $n$ = Ladungsträgerdichte, $e$ = Elementarladung.

<details>

  <summary>Lösungsvorschlag</summary>
  
![Halleffekt](halleffekt.png)

Für die **Stromstärke** $I_H$ in der Hallsonde gilt: 

$$
  I_H = \frac{Q}{t} = \frac{N \cdot e}{t}
$$

mit $N$ = Anzahl Elektronen, die in der Zeit $t$ durch die Hallsonde fließen.

Für die **Driftgeschwindigkeit** $v$ der Elektronen in der Hallsonde gilt: $v = \frac{s}{t}$, wobei $s$ die Länge der Hallsonde ist. Für die Zeit $t$, die ein Elektron zum Durchfließen der Hallsonde benötigt, gilt $t = \frac{s}{v}$.

Das **Volumen** der Hallsonde ist $V = s \cdot d \cdot b$, mit $s$ = Länge, $d$ = Höhe und $b$ = Breite der Hallsonde.

Die **Ladungsträgerdichte** $n$ in der Hallsonde ist $n = \frac{N}{V}$.

Für die Stromstärke $I$ in der Hallsonde gilt dann insgesamt:

$$
\begin{align}
 I &= \frac{Q}{t} = \frac{N \cdot e}{t} = \frac{N \cdot e}{\frac{s}{v}}\\
 I &= \frac{N \cdot e \cdot v}{s} \\
 I &= \frac{n \cdot V \cdot e \cdot v}{s} = \frac{n \cdot s \cdot d \cdot b \cdot e \cdot v}{s} \\
 I &= n \cdot d \cdot b \cdot e \cdot v
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Induktion

### Aufgabe E1

In einem Leiterstück der Länge $d$, das sich senkrecht zu einem Magnetfeld der Stärke $B$ mit der Geschwindigkeit $v$ bewegt, wird eine Spannung $U_\text{ind}$ induziert und es gilt:

$$
  U_\text{ind} = B \cdot v \cdot d
$$

**Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
In einem geraden Stück Metall befinden sich frei bewegliche Elektronen. Bewegt man einen Leiter der Länge $d$ mit der Geschwindigkeit $v$ senkrecht zu einem Magnetfeld mit der magnetischen Flussdichte $B$, dann wirkt auf die Elektronen im Leiter die Lorentzkraft $F_L$, mit $F_L = e \cdot v \cdot B$. 

Die Elektronen werden aufgrund der wirkenden Lorentzkraft im Fall der folgenden Skizze nach links verschoben. Am linken Ende baut sich also ein Elektronenüberschuss auf, am rechten Ende des Leiters ein Elektronenmangel. Dadurch entsteht im Leiter ein elektrisches Feld $E$, in dem auf ein Elektron die elektrische Kraft $F_\text{el}$ wirkt. 

![Induktion im Leiter](induktion_leiter.png)

Die Ladungsverschiebung erfolgt im Leiter solange, bis die Lorentzkraft $F_L$ und die elektrische Kraft $F_\text{el}$ im Gleichgewicht sind. 

In dieser Gleichgewichtssituation kann man zwischen den Enden des Leiters eine Spannung messen, die als **Induktionsspannung** $U_\text{ind}$ bezeichnet wird. 

Das elektrische Feld im Inneren des Leiters ist homogen, da überall ein Gleichgewicht zwischen Lorentzkraft und elektrischer Kraft herrscht. Es gilt also:

$$
    E = \frac{U_\text{ind}}{d}
$$

Aufgrund des Kräftegleichgewichts folgt:

$$
\begin{align}
    F_\text{el} &= F_L \\
    e \cdot E &= e \cdot v \cdot B \\
    \frac{U_\text{ind}}{d} &= v \cdot B \\
    U_\text{ind} &= B \cdot v \cdot d
\end{align}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

### Aufgabe E2

Eine Leiterschleife der Länge $d$ bewegt sich mit konstanter Geschwindigkeit $v$ senkrecht durch ein Magnetfeld der Stärke $B$. **Leite** ausgehend vom Induktionsgesetz $ | U_{\text{ind}} | = N \cdot \frac{\Delta \Phi}{\Delta t}$ folgende Gleichung begründet her. Das Vorzeichen der Induktionsspannung soll dabei keine Rolle spielen.

$$
 | U_{\text{ind}} | = N \cdot B \cdot v \cdot d
$$

mit $\Phi$ = magnetischer Fluss, $t$ = Zeit, $v$ = Geschwindigkeit, $U_{\text{ind}}$ = induzierte Spannung, $N$ = Windungszahl, $B$ = magnetische Flussdichte, $d$ = Länge der Leiterschleife

<details>

  <summary>Lösungsvorschlag</summary>
  
![](induktion01.png)

Für den Betrag der Induktionspannung gilt, wenn $A$ die vom Magnetfeld durchsetzte Fläche der Induktionsschleife ist:

$$
| U_{ind} | = N \cdot \frac{\Delta \Phi}{\Delta t} = N \cdot \frac{\Delta (A \cdot B)}{\Delta t}
$$

Die vom Magnetfeld durchsetzte Fläche $A$ ändert sich, da die Leiterschleife mit der Geschwindigkeit $v$ durch das Magnetfeld bewegt wird. Die Stärke des Magnetfeldes $B$ ist konstant. Es folgt:

$$
| U_{ind} | = N \cdot \frac{\Delta A}{\Delta t} \cdot B
$$

Für die Geschwindigkeit der Leiterschleife gilt $v = \frac{\Delta s}{\Delta t}$ und damit:

$$
 \Delta s = v \cdot \Delta t
$$

Die Änderung der vom Magnetfeld durchsetzten Fläche der Leiterschleife kann damit wie folgt beschrieben werden:

$$
 \Delta A = d \cdot \Delta s = d \cdot v \cdot \Delta t
$$

Setzt man diese Formel in das Induktionsgesetz ein, folgt:

$$
| U_{ind} | = N \cdot \frac{\Delta A}{\Delta t} \cdot B =  N \cdot \frac{d \cdot v \cdot \Delta t}{\Delta t} \cdot B = N \cdot d \cdot v \cdot B = N \cdot B \cdot v \cdot d
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Energie in einer Spule

### Aufgabe F1

Diese Aufgabe dient zur **Studienorientierung** und spielt für das Abitur keine Rolle.

In einer Spule der Induktivität $L$ wird bei einer Stromstärke $I$ die magnetische Energie mit:

$$
  E_{mag} = {1 \over 2} \cdot L \cdot {I^2}
$$

gespeichert. 

**Leite** diese Formel begründet her.

<details>

  <summary>Lösungsvorschlag</summary>
  
Eine Glühbirne wird parallel zu einer Spule mit Eisenkern geschaltet. Wenn der Schalter geschlossen ist, fließen durch Spule und Glühbirne ein elektrischer Strom, der durch die angelegte Spannungsquelle bewirkt wird.

Öffnet man den Schalter, dann fließt im Teilstromkreis von Glühbirne und Spule weiterhin ein elektrischer Strom. Die Energie, welche nach Schalteröffnung das Lämpchen zum Leuchten bringt, muss aus dem Magnetfeld der Spule stammen.

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_spule_lampe.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

Quelle: [Iain Sharp](https://github.com/sharpie7/circuitjs1)

Aufgrund des elektrischen Stromflusses $I$ hat sich in der Spule ein Magnetfeld $B$ mit 

$$
  B = \mu_0 \cdot \mu_r \cdot \frac{N \cdot I}{l}
$$

aufgebaut. Sobald der Schalter betätigt wird, ist die Spannungsquelle vom Stromkreis abgetrennt und die Stromstärke beginnt zu sinken. Damit wird das Magnetfeld in der Spule schwächer. Aufgrund des abnehmenden Magnetfelds wird in der Spule eine **Selbstinduktionsspannung**, die im Laufe der Zeit kleiner wird, induziert:

$$
  U_\text{ind}(t) = - N \cdot \frac{d B}{d t} \cdot A = - \mu_0 \cdot \mu_r \cdot \frac{ N^2 \cdot A }{l} \cdot \frac{d I(t)}{d t} = - L \cdot \frac{d I(t)}{d t} 
$$

Solange eine Selbstinduktionsspannung induziert wird, erbringt die Spule die elektrische Leistung:

$$
P_{el} = U_{ind} \cdot I
$$

oder genauer, da sich alle Größen im Laufe der Zeit verändern:

$$
P_{el}\left( t \right)  = U_{ind}\left( t \right) \cdot I\left( t \right)
$$

Ersetzt man die induzierte Spannung $U_{ind}$ mit der Formel für die Selbstinduktion $U_{ind}\left( t \right)=-L \cdot \frac{{dI(t)}}{{dt}}$, folgt:

$$
P_{el}\left( t \right) = -L \cdot \frac{{dI(t)}}{{dt}} \cdot I\left( t \right)
$$

Die vor dem Abtrennen der Spannungsquelle in der Spule gespeicherte magnetische Energie sei $E_0$ und die Energie, welche nach außen abgegeben wird (Wärmeenergie und Lichtenergie) sei $E(t)$. Die in der Spule zum Zeitpunkt $t$ vorhandene magnetische Energie sei $E_{mag}\left( t \right)$.

Aufgrund des Energieerhaltungssatzes gilt dann: 

$$
 E_0 = E_{mag}\left( t \right) + E(t) \qquad \text{oder} \qquad E_{mag}\left( t \right) = E_0 - E(t)
$$

Bildet man die Ableitung dieser Gleichung, dann folgt, da die Ableitung des konstanten Werts $E_0$ Null ist:

$$
\frac{{d{E_{mag}}\left( t \right)}}{{dt}} = - \frac{{dE\left( t \right)}}{{dt}}
$$

Die **zeitliche Änderung der Energie** ist die Leistung, die ein elektrisches Gerät erbringt, denn die elektrische Leistung $P$ eines Elektrogeräts ist die Umwandlung der dem Gerät zugeführten elektrischen Energie pro Sekunde in eine andere Energieform (Licht, Wärme, Bewegung,...). Also gilt: 

$$
 \frac{{dE\left( t \right)}}{{dt}} = P_{el}\left( t \right)
$$

Damit folgt für die magnetische Energie in der Spule:

$$
 \frac{{d{E_{mag}}\left( t \right)}}{{dt}} = - P_{el}\left( t \right) = - \left( - L \cdot \frac{{dI\left( t \right)}}{{dt}} \cdot I\left( t \right) \right) = L \cdot \frac{{dI\left( t \right)}}{{dt}} \cdot I\left( t \right)
$$

und damit

$$
\frac{{d{E_{mag}}\left( t \right)}}{{dt}} = L \cdot I\left( t \right) \cdot \frac{{dI\left( t \right)}}{{dt}} 
$$

Diese Gleichung ist eine **Differenzialgleichung**. Gesucht ist eine Funktion ${E_{mag}}\left( t \right)$, deren Ableitung die Form der rechten Seite dieser Differenzialgleichung hat. Die Kettenregel hilft bei der Suche und die folgende Funktion erfüllt die Differenzialgleichung:

$$
{E_{mag}}\left( t \right) = {\textstyle{1 \over 2}} \cdot L \cdot \left(I\left( t \right) \right) ^2
$$

In kurzer Schreibweise:

$$
{E_{mag}} = {\textstyle{1 \over 2}} \cdot L \cdot I^2
$$

**Probe:**

$$
\frac{d \left({\textstyle{1 \over 2}} \cdot L \cdot \left(I\left( t \right) \right) ^2 \right) }{d t} = 2 \cdot {\textstyle{1 \over 2}} \cdot L \cdot I(t) \cdot \dot {I(t)} = L \cdot I(t) \cdot \frac{{dI\left( t \right)}}{{dt}}
$$

Damit ist die Differenzialgleichung gelöst und **die Formel wurde begründet hergeleitet**.

</details>

---