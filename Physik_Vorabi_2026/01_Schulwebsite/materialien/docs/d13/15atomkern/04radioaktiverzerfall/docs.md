## Radioaktiver Zerfall

> **Bezug zum Kerncurriculum:**
>
> - Ich kann das Zerfallsgesetz erläutern.
> - Ich kann Zerfallsvorgänge grafisch darstellen und werte sie unter Verwendung der Eigenschaften einer Exponentialfunktion zur Basis e aus.
> - Ich kann dieses Vorgehen auf andere Abklingvorgänge übertragen.
> - Ich kann Gültigkeitsgrenzen der mathematischen Beschreibung aufgrund der stochastischen Natur der Strahlung beurteilen.
> - Ich kann einen radioaktiven Zerfall mit dem Differenzenverfahren unter Einsatz einer Tabellenkalkulation oder eines Modellbildungssystems modellieren. Ich kann dieses Verfahren auf einen Mutter-Tochter-Zerfall anwenden.

---

## Instabile Atomkerne

Ein Atomkern kann zerfallen, indem er eine große Vielfalt an Quantenobjekten aussendet. 

> [!NOTE]
> Die mittlere Zeit, bis ein Kern spontan zerfällt, kann zwischen **$10^{-14}$ Sekunden und $10^{11}$ Jahren** liegen.

**Erhaltungssätze für Kernumwandlungen:**

- die Summe aus Masse und Energie aller beteiligten Quantenobjekte muss konstant sein,

- der Impuls und Drehimpuls aller beteiligten Quantenobjekte müssen konstant sein,

- die elektrische Gesamtladung aller beteiligten Quantenobjekte muss konstant sein,

- die Gesamtzahl aller beteiligten Protonen und Neutronen muss konstant sein.

---

## Radioaktiver Zerfall und Aktivität

Ein angeregter Atomkern verwandelt sich spontan in einen anderen Atomkern und sendet dabei Quantenobjekte aus. Diesen Vorgang nennt man **radioaktiven Zerfall**. 

Man kann nicht vorhersagen, **wann** ein angeregter Atomkern radioaktiv zerfällt. Der Zerfall **eines bestimmten** angeregten Atomkerns geschieht völlig zufällig. 

Beobachtungen bei radioaktiven Substanzen haben aber gezeigt, dass man eine **Halbwertszeit** für den Zerfallsvorgang angeben kann.

> [!NOTE]
> Die **Halbwertszeit** eines radioaktiven Zerfalls ist das **Zeitintervall**, in dem etwa **die Hälfte** der Ausgangsatomkerne zerfallen sind.

Wenn bei einem Zerfallsvorgang mit einem bestimmten radioaktiven Nuklid zum Zeitpunkt 0 z.B. 1000 Atomkerne der Atomsorte 1 vorhanden sind und die Halbwertszeit 1 Stunde beträgt, dann wären nach 1 Stunde noch etwa 500 Atomkerne der Sorte 1 vorhanden und es hätten sich etwa 500 Atomkerne der Sorte 2 gebildet. 

Die Summe aus der Anzahl der Atomkerne der Sorte 1 und der Anzahl der Atomkerne der Sorte 2 muss dabei zu jedem Zeitpunkt 1000 sein.

Die Atomkerne der Sorte 2 (Zerfallsnuklid) können selbst wieder radioaktiv sein und mit einer eigenen Halbwertszeit zerfallen, die anders ist, als die Halbwertszeit der Atomsorte 1 (Ausgangsnuklid). Dieser Vorgang kann sich mehrmals wiederholen, so dass eine **Zerfallsreihe** entsteht. Die Zerfallsreihe endet, wenn eines der Zerfallsnuklide einen stabilen Atomkern hat, der nicht weiter zerfällt.

---

### Simulation: Zerfall

- In der folgenden Animation sind zu Beginn 1200 Atomkerne des Ausgangsnuklids vorhanden, die mit der Halbwertszeit 1 zerfallen. 

- Das Zerfallsnuklid (Atomsorte 2) zerfällt mit der Halbwertszeit 2. 

- Das Zerfallsnuklid (Atomsorte 3) zerfällt mit der Halbwertszeit 3.

- Die Atomsorte 4 als Zerfallsnuklid der Atomsorte 3 ist stabil und zerfällt nicht weiter radioaktiv.

##### Zerfallsstatistik

- Nach einem Zeitintervall der Halbwertszeit 1 sind noch etwa 50 % Atomkerne der Atomsorte 1 vorhanden. 

- Nach einer weiteren Halbwertszeit sind noch 50 % von 50 % also 25 % Atomkerne der Atomsorte 1 vorhanden. 

- Nach einer weiteren Halbwertszeit sind noch 50 % von 50 % von 50 % also 12,5 % Atomkerne der Atomsorte 1 vorhanden, und so weiter. 

Die Zeitintervalle schwanken etwas, da der Zerfall zufällig geschieht, aber im Mittel zerfallen etwa 50 % der Atomkerne in einem Intervall der Halbwertszeit.

> Simulation in neuem Fenster starten: <a href="/apps/kp/02_radioaktiverzerfall/radioaktiverzerfall.html" target="_blank">Radioaktiver Zerfall</a>

<iframe frameborder="0" src="/apps/kp/02_radioaktiverzerfall/radioaktiverzerfall.html" width="100%" height="720" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Klicke** auf "Zeit starten" und **beobachte** die Anzahlen der Atomkerne. Wie lautet der Name der Funktionsklasse, die durch die blaue Kurve angenähert wird?  

- **Klicke** auf "Halbwertszeitlinie plotten" und **sieh** dir den Zusammenhang zwischen Halbwertszeit und 50 % Bestand an. 

- **Variiere** die Halbwertszeit von Atomsorte 1, indem du die Halbwertszeit veränderst, dann auf "Alles zurücksetzen" und auf "Zeit starten" klickst.

- **Aktiviere** die Graphen der Atomsorten 2-4 und **variiere** die Halbwertszeiten. Wie lautet der Name der Funktionsklasse, die durch den Graphen von Atomsorte 4 angenähert wird?

</details>

<details>

  <summary>Beobachtung</summary>
  
Frage 1: Die blaue Kurve sieht aus wie der Graph einer Exponentialfunktion.

Frage 2: Die gelbe Kurve sieht aus wie der Graph einer Funktion bei logistischem Wachstum.

</details>

Die **Anzahl von Zerfällen während eines Zeitintervalls** nennt man die **radioaktive Aktivität**. 

Die radioaktive Aktivität kann man messen, indem man mit geeigneten Detektoren die Quantenobjekte zählt, die beim Zerfall eines Atomkerns pro Zeiteinheit ausgesendet werden.

---

## Modellierung des radioaktiven Zerfalls

In der folgenden Herleitung soll davon ausgegangen werden, dass es keine Möglichkeit gibt vorherzusagen, **wann** ein bestimmter ausgewählter instabiler Atomkern radioaktiv zerfällt. 

Selbst wenn die Halbwertszeit nur 1 Sekunde beträgt, könnte es sein, dass ein bestimmter Atomkern der radioaktiven Substanz, die wir beobachten, 1000 Jahre lang nicht zerfällt. Trotzdem werden in einem Intervall der Halbwertszeit etwa 50 % der Atomkerne zerfallen, wir wissen nur nicht welche!

- Wenn man ein Zeitintervall $t_1$ festlegt, das genau eine Halbwertszeit lang ist, dann können wir für einen bestimmten Atomkern vorhersagen, dass er in diesem Zeitintervall mit einer Wahrscheinlichkeit von 50 % zerfallen wird. Mit einer Wahrscheinlichkeit von 50 % wird er im Zeitintervall $t_1$ **nicht** zerfallen.

- Nach zwei vollen Halbwertszeiten wird ein Anteil von 25 % noch nicht zerfallen sein.

Je kürzer das Zeitintervall ist, desto unwahrscheinlicher ist es, dass der Atomkern zerfällt, je länger das Zeitintervall ist, desto größer ist die Wahrscheinlichkeit, dass der Atomkern zerfällt. 

Es gilt insbesondere, dass die Wahrscheinlichkeit des Zerfalls in einem Zeitintervall $\Delta t$ **proportional** zur Länge des Zeitintervalls $\Delta t$ ist:

$$
  P(\text{zerfällt in} \, \Delta t) \sim \Delta t
$$

Bei einer **Proportionalität** gilt, dass der Quotient zweier zueinander gehörenden Werte konstant ist:

$$
  \frac{P(\text{zerfällt in} \, \Delta t)}{\Delta t} = \text{const.}
$$

Diese Konstante nennen wir passend "**Zerfallskonstante**". 

Für die Zerfallskonstante haben die PhysikerInnen den griechischen Buchstaben Lambda ($\lambda$) gewählt, was zur Verwechslung mit der Wellenlänge führen kann. Beim radioaktiven Zerfall steht $\lambda$ für die Zerfallskonstante, sonst für die Wellenlänge.

Es gilt also:

$$
  \frac{P(\text{zerfällt in} \, \Delta t)}{\Delta t} = \lambda
$$

und damit

$$
  P(\text{zerfällt in} \, \Delta t) = \lambda \cdot \Delta t
$$

Wenn $P(\text{zerfällt in} \, \Delta t)$ die Wahrscheinlichkeit ist, dass ein instabiler Kern im Zeitintervall $\Delta t$ **zerfällt**, dann gilt für die Wahrscheinlichkeit, dass er **nicht zerfällt**:

$$
  P(\text{zerfällt nicht in} \, \Delta t) = 1 - \lambda \cdot \Delta t
$$

Wir suchen jetzt einen mathematischen Ausdruck, der uns für **jeden beliebigen Zeitpunkt** berechnen kann, wie viele Atomkerne noch **nicht zerfallen** sind. Dazu verändern wir die Zeitintervalle. 

Die Wahrscheinlichkeit, dass ein Kern im Zeitintervall $2 \cdot \Delta t$ **nicht** zerfallen ist, beträgt nach der **Pfadregel**:

$$
  P(\text{zerfällt nicht in} \, 2 \cdot \Delta t) = (1 - \lambda \cdot \Delta t) \cdot (1 - \lambda \cdot \Delta t) = (1 - \lambda \cdot \Delta t)^2
$$

Für die Wahrscheinlichkeit, dass ein Kern im Zeitintervall $n \cdot \Delta t$ **nicht** zerfallen ist, folgt also:

$$
  P(\text{zerfällt nicht in} \, n \cdot \Delta t) = (1 - \lambda \cdot \Delta t)^n
$$

Mit Hilfe eines Zeitintervalls $\Delta t$, das eine bestimmte Größe hat, können wir nicht jeden beliebigen Zeitpunkt erreichen. 

Es wird also Zeitpunkte geben, die etwas vor oder etwas nach einem Zeitpunkt liegen, die ich durch die Aufsummierung des Intervalls $\Delta t$ erreichen kann. Wenn man mehr Zeitpunkte erreichen möchte, muss man das Intervall $\Delta t$ kleiner machen.

> Diesen Vorgang kennen Sie bereits aus der Differenzialrechnung, als Sie die Steigung einer Sekante der Steigung einer Tangente angenähert haben. Damit eine Sekante die Steigung einer Tangente genügend genau annähert, wurde das Intervall $\Delta x$ immer kleiner gemacht. Für kleine Intervalle nähert sich die Sekante der Tangente ziemlich gut an, aber erst wenn das Intervall $\Delta x$ beliebig klein ist (infinitesimal klein), stimmt die Steigung der Sekante beliebig genau mit der Steigung der Tangente überein. Dieser Übergang zu beliebig (im Extremfall unendlich) kleinen Intervallen wurde dadurch symbolisiert, dass das $\Delta x$ durch ein $dx$ ersetzt wurde. Das können wir auf die Zeitintervalle übertragen. 
 
Wenn man die Wahrscheinlichkeit für **jeden** beliebigen Zeitpunkt modellieren möchte, müssen die Zeitintervalle $\Delta t$ beliebig klein werden. 

Wir ersetzen $\Delta t$ mit einem beliebig kleinen Intervall $dt$:

$$
  P(\text{zerfällt nicht in} \, n \cdot dt) = (1 - \lambda \cdot dt)^n
$$

Mit einem beliebig kleinen Zeitintervall $dt$ kann man durch Aufsummierung von hinreichend vielen Zeitintervallen jeden beliebigen Zeitpunkt $t$ in der Zukunft erreichen.

- Wenn das Zeitintervall $dt$ so klein wird, dass es gegen Null geht, muss man aber auch unglaublich viele Intervalle $dt$ addieren, um einen bestimmten Zeitpunkt $t$ zu erreichen. 

- Die Anzahl $n$ der Intervalle $dt$ wird also beliebig groß werden, wenn $dt$ beliebig klein wird. 

Wenn ich mich also dafür interessiere, wie viele Atomkerne zu einem Zeitpunkt $t$ noch nicht zerfallen sind, muss ich vom Start der Messung aus unendlich viele Zeitintervalle $dt$ addieren, um den Zeitpunkt $t$ zu erreichen. 

Es gilt also $t = n \cdot dt$ für $n \to \infty$ und $dt \to 0$. Aufgelöst nach $dt$ folgt $dt = \frac{t}{n}$. 

Insgesamt folgt für die Wahrscheinlichkeit, dass ein Atomkern zu einem Zeitpunkt $t$ noch nicht zerfallen ist, wenn das Zeitintervall $dt$ beliebig klein wird:

$$
\begin{align}
  P(\text{zum Zeitpunkt} \, t \, \text{noch nicht zerfallen}) &= \lim\limits_{n \rightarrow \infty}{\left( 1 - \lambda \cdot dt \right)^n} \\
  &= \lim\limits_{n \rightarrow \infty}{\left( 1 - \lambda \cdot \frac{t}{n} \right)^n} \\
  &= \lim\limits_{n \rightarrow \infty}{\left( 1 - \frac{\lambda \cdot t}{n} \right)^n} \\
\end{align}
$$

Wenn man diesen Ausdruck auf ein Baumdiagramm überträgt, folgt, dass wir einen Pfad haben, der unendlich lang ist, denn wir haben ja unendlich viele Zeitintervalle, für welche wir einzeln die Wahrscheinlichkeit angeben. Um die Gesamtwahrscheinlichkeit dieses Pfades zu berechnen, müssen unendlich viele Einzelwahrscheinlichkeiten multipliziert werden.

Im Folgenden setzen wir für einen Ausdruck wie: 

$$
  y = \left( 1 - \frac{1}{n} \right)^n
$$

immer größere Werte für n ein und sehen, was passiert.

- $\left( 1 - \frac{1}{2} \right)^2 = 0,25$

- $\left( 1 - \frac{1}{3} \right)^3 = 0,296296...$

- $\left( 1 - \frac{1}{10} \right)^{10} = 0,3486784401$

- $\left( 1 - \frac{1}{100} \right)^{100} = 0,3660323412...$

- $\left( 1 - \frac{1}{1000} \right)^{1000} = 0,3676954247...$

- $\left( 1 - \frac{1}{1000000} \right)^{1000000} = 0,36787925722106646...$ 

- $\left( 1 - \frac{1}{1000000000} \right)^{1000000000} = 0,3678794409875026009...$

- ...

Der Rechenausdruck nähert sich für große $n$ gegen eine bestimmte Zahl an. Diese Zahl ist der Kehrwert der Eulerschen Zahl $e$.

$$
\begin{align}
  1/e &= 0,367879441171442321595523770161460867445811131031767834507... \\
  e &= 2,718281828459045235360287471352662497757247093699959574966...
\end{align}  
$$

Ersetzt man die Zahl 1 im Zähler mit einer Variablen x, kann man zeigen, dass gilt:

$$
  \frac{1}{e^x} = \lim\limits_{n \rightarrow \infty}{\left( 1 - \frac{x}{n} \right)^n}
$$

Wir ersetzen $x$ mit $\lambda \cdot t$ und es folgt:

$$
\begin{align}
  P(\text{zum Zeitpunkt} \, t \, \text{noch nicht zerfallen}) &= \lim\limits_{n \rightarrow \infty}{\left( 1 - \frac{\lambda \cdot t}{n} \right)^n} = \frac{1}{e^{\lambda t}} = e^{-\lambda t}
\end{align}
$$

Die Wahrscheinlichkeit, dass ein Atomkern zum Zeitpunkt $t$ noch nicht zerfallen ist, beträgt $e^{-\lambda t}$. Für positive Werte von $\lambda \cdot t$ für den Wert von $e^{-\lambda t}$ gilt:

$$
  0 \leq e^{-\lambda t} \leq 1 
$$

Da Wahrscheinlichkeiten zwischen 0 und 1 liegen, eignet sich die Funktion $e^{-\lambda t}$ zur Modellierung einer Wahrscheinlichkeit. 

Wie wir gezeigt haben, folgt die Gleichung

$$
\begin{align}
  P(\text{zum Zeitpunkt} \, t \, \text{noch nicht zerfallen}) &= e^{-\lambda t}
\end{align}
$$

aus der Annahme, dass der Zerfall eines instabilen Atomkerns unabhängig von seiner Geschichte rein zufällig passiert. 

Bei vielen gleichartigen Kernen können wir also nicht sagen, welcher Kern wann zerfallen wird, es ist aber möglich vorherzusagen, dass in einer bestimmten Zeit ein bestimmter Anteil zerfallen sein wird.

Die Anzahl $N$ der Atomkerne, die zu einem Zeitpunkt $t$ noch vorhanden sind, ist also das Produkt aus der Anzahl $N_0$ der Kerne, die zu Beginn vorhanden waren und der Wahrscheinlichkeit $e^{-\lambda t}$, dass ein Kern zum Zeitpunkt $t$ noch vorhanden ist (gerechnet von einem bestimmten Startzeitpunkt aus):

$$
  N(t) = N_0 \cdot e^{-\lambda t}
$$

Die Zerfallskonstante lässt sich experimentell bestimmen, indem man die Anfangsanzahl $N_0$ zum Zeitpunkt $t_0$ mit der Anzahl $N$ der nicht zerfallenen Atomkerne zum Zeitpunkt t vergleicht. Aus 

$$
  N(t) = N_0 \cdot e^{-\lambda \cdot t}
$$

folgt mit Hilfe der Logarithmengesetze für den natürlichen Logarithmus:

$$
\begin{align}
  \frac{N(t)}{N_0} &= e^{-\lambda \cdot t} \,\,\, | \, ln \\
  ln \left( \frac{N(t)}{N_0} \right) &= ln \left( e^{-\lambda \cdot t} \right) \\
  ln \left( \frac{N(t)}{N_0} \right) &= -\lambda \cdot t \\
  -\lambda &= \frac{ln \left( \frac{N(t)}{N_0} \right)}{t}  \\
  \lambda &= - \frac{ln \left( \frac{N(t)}{N_0} \right)}{t}  \\
\end{align}  
$$

---

### Übung

Es seien $N_0 = 1200$ radioaktive Atome zum Zeitpunkt $t_0 = 0 \, \text{s}$ vorhanden. Nach 10 Minuten sind noch $N = 550$ Atome vorhanden. Für die Zerfallskonstante $\lambda$ gilt dann:

$$
\begin{align}
  \lambda &= - \frac{ln \left( \frac{N}{N_0} \right)}{t}  \\
  &= - \frac{ln \left( \frac{550}{1200} \right)}{600 \, \text{s}}  \\
  &= 0,0013 \, \tfrac{1}{\text{s}}  \\
\end{align}  
$$

Was bedeutet die Zerfallskonstante $\lambda = 0,0013 \, \tfrac{1}{\text{s}}$ anschaulich? Bei der Herleitung wurde die Zerfallskonstante als Quotient aus der Zerfallswahrscheinlichkeit und dem Zeitintervall definiert:

$$
  \frac{P(\text{zerfällt in} \, \Delta t)}{\Delta t} = \lambda
$$

Für unser Beispiel bedeutet das also, dass bei einer Zerfallskonstanten von $\lambda = 0,0013 \, \tfrac{1}{\text{s}}$ die Wahrscheinlichkeit, dass ein bestimmtes Atom in einem Zeitintervall von 1 s zerfällt, 0,0013 = 0,13 % beträgt. Übertragt man das auf alle vorhandenen Atome des Ausgangsnuklids, folgt, dass pro Sekunde 0,13 % aller vorhandenen Atome zerfallen.

Um in diesem Beispiel den Bestand zu jedem beliebigen Zeitpunkt berechnen zu können kann man folgende Formel verwenden:

$$
\begin{align}
  N(t) &= N_0 \cdot e^{-\lambda \cdot t} \\
  N(t) &= 1200 \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot t}
\end{align}    
$$

Nach 15 Minuten ($= 15 \cdot 60 \, \text{s} = 900 \, \text{s}$) wären also noch:

$$
\begin{align}
  N(900 \, \text{s}) &= 1200 \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot 900 \, \text{s}} \\
  &= 372
\end{align}   
$$

etwa 372 Atomkerne des Ausgangsnuklids vorhanden. In einem realen Experiment wird die Anzahl natürlich vom Wert 372 abweichen, aber in der Nähe von 372 sein, da der radiaaktive Zerfall zufällig erfolgt. 

Bei gegebener Zerfallskonstante kann man die **Halbwertszeit** berechnen. Nach der Halbwertszeit $T_\text{0,5}$ ist die Hälfte der Atomkerne noch nicht zerfallen:

$$
\begin{align}
  N(T_\text{0,5}) &= 0,5 \cdot N_0 \\
  0,5 \cdot N_0 &= N_0 \cdot e^{-\lambda \cdot T_\text{0,5}} \\
  0,5 &= e^{-\lambda \cdot T_\text{0,5}}  \,\,\, | \, ln \\
  ln(0,5) &= ln \left( e^{-\lambda \cdot T_\text{0,5}} \right) \\
  ln(0,5) &= -\lambda \cdot T_\text{0,5} \\
  ln(2^{-1}) &= -\lambda \cdot T_\text{0,5} \\
  -1 \cdot ln(2) &= -\lambda \cdot T_\text{0,5} \\
  ln(2) &= \lambda \cdot T_\text{0,5} \\
  T_\text{0,5} &= \frac{ln(2)}{\lambda}
\end{align}    
$$

Bei der Zerfallskonstanten $\lambda = 0,0013 \, \tfrac{1}{\text{s}}$ ist die Halbwertszeit $T_\text{0,5}$:

$$
  T_\text{0,5} = \frac{ln(2)}{\lambda} = \frac{ln(2)}{0,0013 \, \tfrac{1}{\text{s}}} = 533 \, \text{s}
$$

---

## Aktivität einer radioaktiven Probe

Die Aktivität $A(t)$ einer radioaktiven Probe ist die mittlere Zerfallsrate. 

Sobald Atomkerne zerfallen, **ändert** sich die Anzahl der noch vorhandenen Atomkerne des Ausgangsnuklids. Mathematisch kann die Änderung damit als zeitliche Ableitung des Zerfallsgesetzes beschrieben werden:

Für die Ableitung des Zerfallsgesetzes gilt:

$$
    \frac{d N(t)}{dt} = \frac{d \, (N_0 \cdot e^{-\lambda \cdot t})}{dt}
$$

Die Ableitung von $e^x$ ist gleich $e^x$:

$$
  \frac{d e^x}{dx} = e^x
$$

Mit Hilfe der Kettenregel (innere Ableitung mal äußere Ableitung) folgt für die Ableitung des Zerfallsgesetzes:

$$
    \frac{d \, (N_0 \cdot e^{-\lambda \cdot t})}{dt} = - \lambda \cdot N_0 \cdot e^{-\lambda \cdot t}
$$

Die Ableitung des Zerfallsgesetzes liefert einen **negativen Wert**, da der Bestand beim Zerfall ja **abnimmt**. 

Die Aktivität gibt die Anzahl der Zerfälle pro Zeiteinheit an, also möchte man einen positiven Wert für die Aktivität haben. Dafür multipliziert man die Ableitung mit $-1$:

$$
    A(t) = - (- \lambda \cdot N_0 \cdot e^{-\lambda \cdot t}) = \lambda \cdot N_0 \cdot e^{-\lambda \cdot t}
$$

---

### Übung

In der letzten Übung wurde der radioaktive Zerfall mit folgendem Zerfallsgesetz modelliert:

$$
\begin{align}
  N(t) &= N_0 \cdot e^{-\lambda \cdot t} \\
  N(t) &= 1200 \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot t}
\end{align}    
$$

Für die Aktivität der Probe zum Zeitpunkt $t$ gilt dann:

$$
\begin{align}
  A(t) &= \lambda \cdot N_0 \cdot e^{-\lambda \cdot t} \\
    &= 0,0013 \, \tfrac{1}{\text{s}} \cdot 1200 \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot t} \\
    &= 1,56 \, \tfrac{1}{\text{s}} \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot t} \\
\end{align}    
$$

Die Aktivität der radioaktiven Probe zum Zeitpunkt $t$ ist also:

$$
  A(t) = 1,56 \, \tfrac{1}{\text{s}} \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot t}
$$

Als Einheit der Aktivität wird heute **Becquerel** verwendet: $[A(t)] = \tfrac{1}{\text{s}} = 1 \, \text{Bq}$

Nach 1 Sekunde gibt es im Mittel 1,557 Zerfälle pro Sekunde:

$$
  A(1 \, \text{s}) = 1,56 \, \tfrac{1}{\text{s}} \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot 1 \, \text{s}} = 1,557 \tfrac{1}{\text{s}} = 1,557 \, \text{Bq}
$$

Nach 1 Minute gibt es im Mittel 1,443 Zerfälle pro Sekunde:

$$
  A(60 \, \text{s}) = 1,56 \, \tfrac{1}{\text{s}} \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot 60 \, \text{s}} = 1,443 \tfrac{1}{\text{s}} = 1,443 \, \text{Bq}
$$

Nach 30 Minuten gibt es im Mittel 0,150 Zerfälle pro Sekunde:

$$
  A(1800 \, \text{s}) = 1,56 \, \tfrac{1}{\text{s}} \cdot e^{-0,0013 \, \tfrac{1}{\text{s}} \cdot 1800 \, \text{s}} = 0,150 \tfrac{1}{\text{s}} = 0,150 \, \text{Bq}
$$

---

## Formelsammlung

#### Zerfallskonstante

- Die Zerfallskonstante $\lambda$ gibt an, wie groß die Wahrscheinlichkeit ist, dass in einer Sekunde ein bestimmtes Atom zerfällt. 

- Alternative Formulierung: Die Zerfallskonstante $\lambda$ gibt an, welcher Anteil an allen vorhandenen Atomen pro Sekunde zerfällt.

#### Halbwertszeit

Die Halbwertszeit $T_\text{0,5}$ gibt das Zeitintervall an, in dem die Hälfte der zu Beginn des Intervalls noch vorhandenen Atomkerne zerfallen ist.

Berechnung der **Halbwertszeit** aus der **Zerfallskonstanten**:

$$
   T_\text{0,5} = \frac{ln(2)}{\lambda} 
$$

Berechnung der **Zerfallskonstanten** aus der **Halbwertszeit**:

$$
  \lambda = \frac{ln(2)}{T_\text{0,5}} 
$$

#### Mittlere Lebensdauer eines instabilen Atomkerns

Die mittlere Lebensdauer $\tau$ eines instabilen Atomkerns ist der Kehrwert der Zerfallskonstanten $\lambda$: 

$$
  \tau = \frac{1}{\lambda} = \frac{T_\text{0,5}}{ln(2)}
$$

#### Zerfallsgesetz

Mit Hilfe des Zerfallsgesetzes kann die Anzahl $N(t)$ der noch nicht zerfallenen Atomkerne zum Zeitpunkt $t$ berechnet werden, wobei $N_0$ die Anzahl der vorhandenen Atomkerne zum Zeitpunkt 0 ist.

$$
  N(t) = N_0 \cdot e^{-\lambda \cdot t}
$$

#### Aktivität einer radioaktiven Probe

Die Aktivität $A(t)$ einer radioaktiven Probe ist festgelegt als die Anzahl der Zerfälle pro Zeiteinheit. 

$$
  A(t) = \lambda \cdot N_0 \cdot e^{-\lambda \cdot t}
$$

Als Einheit der Aktivität wird heute **Becquerel** verwendet: $[A(t)] = \tfrac{1}{\text{s}} = 1 \, \text{Bq}$

---

## Video-Empfehlung

- [Quantenflavordynamik (QFD)](https://www.youtube.com/watch?v=aRSY-Su5cbQ&t)

---

