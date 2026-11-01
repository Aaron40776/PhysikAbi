## Halleffekt

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann ein Experiment zur Messung von B mit einer Hallsonde beschreiben.
> - Ich führe selbstständig Experimente zur Messung von B mit einer Hallsonde durch.
> - Ich kann die Entstehung der Hallspannung erläutern. Ich kann die Gleichung für die Hallspannung in Abhängigkeit von der Driftgeschwindigkeit anhand einer geeigneten Skizze herleiten.  
> - Ich kann die Entstehung der Hallspannung erläutern.
> - Ich kann die Gleichung für die Hallspannung in Abhängigkeit von der Driftgeschwindigkeit anhand einer geeigneten Skizze herleiten.
> - Ich kann das physikalische Prinzip zur Bestimmung der spezifischen Ladung von Elektronen mithilfe des Fadenstrahlrohres beschreiben.
> - Ich kann dazu die Gleichung für die spezifische Ladung des Elektrons herleiten und die Elektronenmasse bestimmen.

---

## Hallsonde

![Halleffekt](halleffekt.png)

Bringt man einen stromdurchflossenen Leiter so in ein Magnetfeld, dass die Elektronen sich senkrecht zur Magnetfeldrichtung bewegen, dann wirkt auf die sich mit der Geschwindigkeit $v$ bewegenden Elektronen die **Lorentzkraft** $F_L$.

Aufgrund der wirkenden Lorentzkraft werden die Elektronen abgelenkt, so dass auf der einen Seite der Hallsonde ein Elektronenüberschuss entsteht und auf der anderen Seite ein Elektronenmangel. 

Die auf der einen Seite konzentrierten Elektronen stoßen sich gegenseitig ab und werden von den Protonen der anderen Seite angezogen. 

Neben der Lorentzkraft $F_L$ wirkt deswegen auf die Elektronen die **elektrische Kraft** $F_\text{el}$, die zur Lorentzkraft entgegengesetzt gerichtet ist. 

> [!NOTE]
>Die durch die Hallsonde fließenden Elektronen werden solange abgelenkt, bis der Betrag der Lorentzkraft und der Betrag der elektrischen Kraft gleich groß ist.

---

## Modellierung

Ein Elektron mit der Ladung $e$ bewegt sich mit der Geschwindigkeit $v$ senkrecht zum Magnetfeld der Stärke $B$ durch die Hallsonde. Dabei wirkt auf das Elektron die **Lorentzkraft** $F_L$ mit

$$
F_L = e \cdot v \cdot B
$$ 

Betrachtet man alle fließenden Elektronen, so bewirkt die Lorentzkraft eine Verschiebung der sich bewegenden Elektronen in der Hallsonde je nach Orientierung des Magnetfelds und der Fließrichtung nach oben bzw. unten.

- Aufgrund der Ladungsverschiebung fließen unten mehr Elektronen pro Volumenelement durch die Hallsonde als oben und es entsteht ein elektrisches Feld. 

- Die Verschiebung der Elektronen geschieht solange, bis die auf ein Elektron wirkende elektrische Feldkraft $F_{el}$ und die entgegengesetzt gerichtete Lorentzkraft $F_L$ vom Betrag gleich sind. 

- In der Hallsonde bildet sich eine Hallspannung $U_H$ aus, die zwischen dem oberen und unteren Ende der Hallsonde gemessen werden kann. 

- Da die Lorentzkraft $F_L$ und die elektrische Feldkraft $F_\text{el}$ im Gleichgewicht sind, ist das elektrische Feld in der Hallsonde homogen und es gilt für die elektrische Feldstärke $E$ des elektrischen Felds: $E = \frac{U_H}{b}$ und $E = \frac{F_{el}}{e}$.

$$
\begin{align}
F_L &= F_{el} \\
e \cdot v \cdot B &= e \cdot \frac{U_H}{b} \\
U_H &= b \cdot v \cdot B
\end{align}
$$

---

## Magnetfeld mit Hallsonde bestimmen

Die Geschwindigkeit $v$ der Elektronen ist keine Messgröße. Die Formel soll so weiter entwickelt werden, dass nur Messgrößen enthalten sind.

- Es sei $N$ die Anzahl der in der Hallsonde vorhandenen Elektronen. 

- Für die Durchquerung der Hallsonde benötigt ein Elektron die Zeit $t$.

- Während dieser unbekannten Zeit werden alle Elektronen in der Hallsonde einmal ausgetauscht, so dass sich während der Zeit $t$ genau $N$ Elektronen durch die Hallsonde bewegen. 

Für den Strom $I_{H}$ gilt dann:

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

Mit einem mathematischen Trick kann die Ladungsträgerdichte $n = \frac{N}{V}$ in die Formel gebracht werden:

- Das Volumen der Hallsonde ist $V = b \cdot s \cdot d$. 

- Man erweitert den Bruch mit $\frac{d}{d}$ 

- und ersetzt den Quotienten $\frac{N}{V}$ dann mit $n$. 

$$
\begin{align}
U_H &= b \cdot \frac{s \cdot I_{H}}{N \cdot e} \cdot B\\ 
&= \frac{b \cdot s \cdot d}{N \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= \frac{V}{N \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= \frac{1}{n \cdot e} \cdot \frac{I_{H} \cdot B}{d}\\ 
&= R_H \cdot \frac{I_{H} \cdot B}{d}
\end{align}
$$

und es gilt:

$$
   U_H = R_H \cdot \frac{I_{H} \cdot B}{d}
$$

woraus folgt:

$$
   B = \frac{U_H \cdot d}{R_H \cdot I_H}
$$
 
mit $R_\text{H} = \frac{1}{n \cdot e}$ = Hallkonstante des Materials, $n = \frac{N}{V}$ = Ladungsträgerdichte, $e$ = Ladung eines Elektrons, $I_H$ = Stromstärke in der Hallsonde, $d$ = Tiefe der Hallsonde.

> [!NOTE]
>Wenn die Hallkonstante $R_\text{H}$ einer Hallsonde und deren Tiefe $d$ bekannt sind, kann man aus der Stromstärke $I_\text{H}$ des elektrischen Stroms, der durch die Hallsonde fließt und der Spannung $U_\text{H}$ die von oben nach unten an der Hallsonde gemessen werden kann, die magnetische Flussdichte $B$ berechnen.

---

## Anwendung: Messung der spezifischen Ladung

Wenn ein Elektron, das mit der Beschleunigungsspannung $U_B$ auf eine Geschwindigkeit $v$ beschleunigt wurde, in einem zur Bewegungsrichtung senkrecht orientierten Magnetfeld der Stärke $B$ eine Kreisbahn mit dem Radius $r$ durchfliegt, kann aus den Bahndaten das Verhältnis von Elektronenladung $e$ und Elektronenmasse $m_e$, also $\frac{e}{m_e}$, bestimmt werden. 

> [!NOTE]
>Der Quotient $\frac{e}{m_e}$ wird **spezifische Ladung** genannt.

### Modellierung 

- Elektronen gewinnen beim Durchfliegen eines elektrischen Felds mit der Beschleunigungsspannung $U_B$ die elektrische Energie $E_{el} = e \cdot U_B$. 

- Diese elektrische Energie nehmen die Elektronen als Bewegungsenergie $E_{kin} = \tfrac{1}{2} \cdot m_e \cdot v^2$ auf.

Es gilt damit:

$$
\begin{align}
 E_{el} &= E_{kin} \\
 e \cdot U_B &= \tfrac{1}{2} \cdot m_e \cdot v^2 \\
 v^2 &= \frac{2 \cdot e \cdot U_B}{m_e} \\
 v &= \sqrt{ \frac{2 \cdot e \cdot U_B}{m_e} }\\
\end{align}
$$

- Damit sich die Elektronen auf einer Kreisbahn bewegen, muss auf diese eine Zentripetalkraft $F_\text{ZP}$ wirken, die stets senkrecht zur Bewegungsrichtung der Elektronen orientiert ist. 

- Bewegen sich die Elektronen in einem Magnetfeld, das senkrecht zur Bewegungsrichtung der Elektronen ausgerichtet ist, wirkt auf die Elektronen die Lorentzkraft $F_\text{L}$, welche nach der Drei-Finger-Regel die Funktion einer Zentripetalkraft übernimmt.

Es gilt:

- Lorentzkraft $F_\text{L} = e \cdot v \cdot B$

- Zentripetalkraft $ F_\text{ZP} = \frac{m_e \cdot v^2}{r}$. 

Da die Lorentzkraft die Rolle der Zentripetalkraft übernimmt, gilt:

$$
\begin{align}
 F_\text{ZP} &= F_\text{L} \\
 \frac{m_e \cdot v^2}{r} &= e \cdot v \cdot B \\
 \frac{m_e \cdot v}{r} &= e \cdot B \\
 \frac{e}{m_e} &= \frac{v}{B \cdot r} \\
 \frac{e}{m_e} &= \frac{\sqrt{ \frac{2 \cdot e \cdot U_B}{m_e} }}{B \cdot r} \\
 \frac{e^2}{m_e^2} &= \frac{\frac{2 \cdot e \cdot U_B}{m_e}}{B^2 \cdot r^2} \\
 \frac{e}{m_e^2} &= \frac{2 \cdot U_B}{m_e \cdot B^2 \cdot r^2} \\
 \frac{e}{m_e} &= \frac{2 \cdot U_B}{B^2 \cdot r^2} \\
\end{align}
$$

Die Gleichung zur Bestimmung der spezifischen Ladung in einem Fadenstrahlrohr lautet: 
 
$$
 \frac{e}{m_e} = \frac{2 \cdot U_B}{B^2 \cdot r^2}
$$

Mit der Messung der drei Größen **Beschleunigungsspannung** $U_B$ (mit einem Voltmeter), **magnetische Flussdichte** $B$ (mit einer Hallsonde) und **Bahnradius** $r$ (mit einem Metermaß) kann die spezifische Ladung eines Elektrons bestimmt werden.

---

### Simulation: Fadenstrahlrohr

**Klicken** Sie auf den Tab "Durchführung" und führen Sie das interaktive Experiment im Tab "Interaktives Experiment" wie beschrieben durch.

> Simulation in neuem Fenster starten: <a href="/apps/bfeld/02c_fadenstrahlrohr/fadenstrahlrohr.html" target="_blank">Fadenstrahlrohr</a>

<iframe src="/apps/bfeld/02c_fadenstrahlrohr/fadenstrahlrohr.html" width="100%" height="700" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Stelle** die Beschleunigungsspannung auf 50 V, die magnetische Flussdichte auf 0.002 T ein und **schalte** die Elektronenquelle an.

2. **Verändere** die Beschleunigungsspannung und die magnetische Flussdichte und beobachte die Auswirkung auf den Radius des Kreises.

</details>

> [!NOTE]
>Kennt man die Ladung eines Elektrons, z.B. aus dem [Millikanversuch](https://www.leifiphysik.de/elektrizitaetslehre/ladungen-elektrisches-feld/versuche/millikan-versuch-schwebemethode-simulation), kann man aus der spezifischen Ladung die Masse eines Elektrons berechnen.

---