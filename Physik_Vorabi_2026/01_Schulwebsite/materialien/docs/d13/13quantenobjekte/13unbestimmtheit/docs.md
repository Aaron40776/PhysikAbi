## Heisenbergsche Unbestimmtheitsrelation

> **Bezug zum Kerncurriculum:**  
> - Ich kann Unbestimmtheit in der Form: die Streuungen der Werte zweier komplementärer Größen können nicht beide beliebig klein sein erläutern.
> - Ich kann das Konzept der Unbestimmtheit an einem Beispiel veranschaulichen.
> - Ich kann das Erlernte mit der Lehrbuch-Notierung der Unbestimmtheitsrelation für Ort und Impuls vergleichen.

---

## Elektronen bei Spaltexperimenten

Wenn man sichtbares Licht durch einen Einfachspalt auf einen Schirm schickt, beobachtet man auf dem Schirm ein Interferenzmuster. Das gilt auch, wenn man Elektronen durch einen geeigneten Einfachspalt schickt und man z.B. mit einem Leuchtschirm die Elektronen detektiert. 

Die de-Broglie-Wellenlänge $\lambda = \frac{h}{p}$ von Elektronen ist im Vergleich zu sichtbarem Licht sehr klein. Für ein Elektron, das mit z.B. 1 V Beschleunigungsspannung beschleunigt wurde, kann die de-Broglie-Wellenlänge wie folgt berechnet werden (Herleitung der Formel im Kapitel "Elektronenwellen"):

$$
  \lambda_e = \frac{h}{\sqrt{2 \cdot m_e \cdot e \cdot U_B}}
$$

Beschleunigungsspannung $U_B = 1  \, \text{V}$:
$$
  \lambda_e = \frac{6,626 \cdot 10^{-34}  \, \text{Js}}{\sqrt{2 \cdot 9,109 \cdot 10^{-31} \, \text{kg} \cdot 1,602 \cdot 10^{-19} \, \text{C} \cdot 1  \, \text{V}}} = 1,2265 \cdot 10^{-9} \, \text{m} = 1,2  \, \text{nm}
$$

Beschleunigungsspannung $U_B = 1000  \, \text{V}$:
$$
  \lambda_e = \frac{6,626 \cdot 10^{-34}  \, \text{Js}}{\sqrt{2 \cdot 9,109 \cdot 10^{-31} \, \text{kg} \cdot 1,602 \cdot 10^{-19} \, \text{C} \cdot 1000  \, \text{V}}} = 3,8786 \cdot 10^{-11} \, \text{m} = 0,038  \, \text{nm}
$$

Sichtbares Licht hat eine Wellenlänge im Bereich von 400 nm bis 800 nm. Die de-Broglie-Wellenlänge ist also sehr viel kleiner als die von sichtbarem Licht. 

Bei Experimenten mit Elektronen müssen Spaltvorrichtungen verwendet werden, die in der Größenordnung der de-Brogliewellenlänge der Elektronen liegt, damit Interferenzphänomene beobachtet werden können. Solche extrem kleinen Spaltöffnungen experimentell zu bauen, ist schwer, aber heutzutage möglich. 

---

### Simulation: Elektronen am Einfachspalt

> Simulation in neuem Fenster starten: <a href="/apps/qp/24_einfachspaltheisenberg/einfachspaltheisenberg.html" target="_blank">Elektronen am Einfachspalt</a>

<iframe frameborder="0" src="/apps/qp/24_einfachspaltheisenberg/einfachspaltheisenberg.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

[Quelle für die Spalt-Engine: Leifi-Physik-Einzelspalt](https://www.leifiphysik.de/optik/beugung-und-interferenz/grundwissen/einzelspalt)

<details>

  <summary>Durchführung</summary>
  
**Verändere** die Spaltbreite $b$ und **beobachte** die Auswirkung auf die Breite des 0. Maximums.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Je kleiner die Spaltbreite ist, desto breiter ist das 0. Maximum:

![](einfachspalt01.jpg)

Im Extremfall eines beliebig schmalen Spalts, ist das 0. Maximum beliebig breit:

![](einfachspalt02.jpg)

Je größer die Spaltbreite ist, desto schmaler ist das 0. Maximum:

![](einfachspalt03.jpg)

</details>

---

### Modellierung

Wenn man bei diesem Experiment die Spaltbreite und die Breite des 0. Maximums auf dem Schirm beobachtet, dann fällt folgendes auf:

- Je **schmaler** der Einzelspalt ist, desto **breiter** ist das 0. Maximum

- Je **breiter** der Einzelspalt ist, desto **schmaler** ist das 0. Maximum

Der Zusammenhang zwischen der Spaltbreite und der Breite des 0. Maximums kann mit folgender Gleichung mathematisch formuliert werden. Das Produkt aus Spaltbreite und Breite des 0. Maximums ist größer oder gleich einer Konstanten:

$$
    \text{Spaltbreite} \cdot \text{Breite des 0. Maximums} \geq const.
$$

Bei Experimenten mit sichtbarem Licht und der klassischen Modellierung "Licht ist eine elektromagnetische Welle", konnte diese Beobachtung mit dem **Huygensschen Prinzip** und der Interferenz von Wellenzügen modelliert werden:

- Jeden Punkt des Einzelspalts denkt man sich als Ausgangspunkt einer Elementarwelle.

- Alle Elementarwellen interferieren im Raum nach dem Spalt.

- Aufgrund der unterschiedlichen Weglängen von einem Punkt des Einzelspalts zu einem bestimmten Schirmpunkt, haben die virtuellen Oszillatoren am Schirmpunkt verschiedene Phasen relativ zueinander.

- Summiert man die virtuellen Zeiger vektoriell und berechnet das Quadrat der resultierenden Amplitude, kann man die Intensität an diesem Schirmpunkt berechnen.

- Die Interferenz aller Wellenzüge liefert das beobachtete Interferenzbild auf dem Schirm.

Wir interpretieren die de-Broglie-Welle als "Wahrscheinlichkeitswelle". Aus der Beschleunigungsspannung $U_B$ in der Elektronenquelle kann die de-Broglie-Wellenlänge $\lambda_e$ des Elektrons berechnet werden:

$$
  \lambda_e = \frac{h}{\sqrt{2 \cdot m_e \cdot e \cdot U_B}}
$$

Einem freien Elektron kann eine Frequenz zugeordnet werden, die in der Größenordnung von $10^{15} \, \text{Hz}$ ist. 

Fortsetzung der Modellierung:

- Jedem möglichen Weg von der Elektronenquelle zum Elektronendetektor wird eine Wahrscheinlichkeitswelle zugeordnet, die wir mit einem Wahrscheinlichkeitszeiger visualisieren, der mit der Frequenz $f_e$ rotiert. 

- Ein Wahrscheinlichkeitszeiger rotiert so lange, bis ein gedachtes Elektron auf dem Weg den gewählten Schirmort erreichen würde. Sobald das gedachte Elektron den Schirm erreicht hätte, stoppt der rotierende Zeiger. 

- Wenn sich kein aktiver Welcher-Weg-Detektor zwischen Quelle und Ziel befindet, sind die Wahrscheinlichkeitswellen aller möglichen Wege in Superposition und man kann Interferenz beobachten. Vor der Messung können wir keine Aussage über den Zustand eines Elektrons machen. Die Wege von der Quelle sind nur gedachte Wege. Was das Elektron "in Wirklichkeit" macht, wissen wir nicht.

- Am Elektronendetektor addieren wir die Wahrscheinlichkeitszeiger aller möglichen Wege vektoriell und berechnen so den resultierenden Wahrscheinlichkeitszeiger am Elektronendetektor.

- Quadriert man die Länge des resultierenden Wahrscheinlichkeitszeigers, erhält man die Wahrscheinlichkeit, ein Elektron an dieser Position des Elektronendetektors zu detektieren.

Wenn man ein Elektron von der Quelle zum Schirm schickt, dann misst man das Elektron zufällig an einer bestimmten Stelle des Schirms. Es ist grundsätzlich nicht möglich vorherzusagen, wo man das Elektron messen wird. Erst wenn man sehr viele Elektronen in Richtung des Schirms durch den Einzelspalt schickt, wird die Statistik der gemessenen Auftrefforte sich den vorhergesagten Wahrscheinlichkeiten annähern.

---

### Simulation: Variation der Spaltbreite

> Simulation in neuem Fenster starten: <a href="/apps/qp/23_einzelspaltzeiger/einfachspaltzeiger.html" target="_blank">Einfachspalt - Wahrscheinlichkeitswellen</a>

<iframe frameborder="0" src="/apps/qp/23_einzelspaltzeiger/einfachspaltzeiger.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Verändere** die Position des Elektronendetektors, indem du diesen mit der Maus nach oben und unten verschiebst. **Beobachte** an jeder Position des Elektronendetektors die Länge des resultierenden Wahrscheinlichkeitszeigers.

2. **Verändere** die Spaltbreite $b$ und **beobachte** die Auswirkung auf die Länge des resultierenden Wahrscheinlichkeitszeigers, wenn du den Elektronendetektor nach oben und unten bewegst.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Auf der Höhe der Mitte der Spaltöffnung ist die Länge des resultierenden Wahrscheinlichkeitszeigers am größten: 0. Maximum. 

![](espaltzeiger02.jpg)

Je weiter der Detektor von dieser Position entfernt ist, desto kleiner wird die Länge des resultierenden Wahrscheinlichkeitszeigers.

![](espaltzeiger01.jpg)

**Zu 2.**: Wenn der Einzelspalt sehr schmal ist, dann ist die Länge des resultierenden Wahrscheinlichkeitszeigers überall fast gleich lang. Das 0. Maximum ist sehr breit.

![](espaltzeiger03.jpg)

Wenn der Einzelspalt sehr breit ist, dann wird die Länge des resultierenden Wahrscheinlichkeitszeigers um so kleiner, je weiter entfernt der Detektor von der Mitte der Spaltöffnung ist. Das 0. Maximum ist schmal.

![](espaltzeiger04.jpg)

</details>

---

### Impulsunbestimmtheit am Einfachspalt

Wie unterscheidet sich ein Elektron, das in der Mitte des Schirms detektiert wird, von einem Elektron, das weiter außen detektiert wird?

Nehmen wir an, wir positionieren einen aktiven "Welcher-Weg-Detektor" zwischen dem Einzelspalt und dem Schirm, welcher das Elektron misst. Dadurch kollabiert die Superposition und das Elektron wird an einer bestimmten Stelle mit einem bestimmten Impuls $p$ gemessen. Dann stellt man folgendes fest:

- wenn der Impuls $p_0$ des Elektrons genau in die Richtung Quelle-Schirmmitte orientiert ist, dann wird das Elektron auch in der Mitte des 0. Maximums auf dem Schirm detektiert.

- wenn der Impuls $p_1$ des Elektrons schräg zur Richtung Quelle-Schirmmitte orientiert ist, dann wird das Elektron neben der Mitte des 0. Maximums mit dem Schirm wechselwirken. Je schräger der Impuls relativ zur Richtung Quelle-Schirmmitte orientiert ist, desto weiter außen wird man das Elektron messen.

![](impulselektron01.jpg)

Der Impuls $p_1$ kann vektoriell in eine Impulskomponente $p_y$, die parallel zur Richtung Quelle-Schirmmitte orientiert ist und in eine Impulskomponente $p_x$, die senkrecht dazu orientiert ist, zerlegt werden. 

Je weiter außen ein Elektron gemessen wird, desto größer ist die Impulskomponente $p_x$.

![](impulselektron02.jpg)

Wenn der Welcher-Weg-Detektor nicht aktiv ist, dann bleibt die Superposition aktiv und wir werden das Elektron an einer zufälligen Stelle auf dem Schirm beobachten. 

Abhängig von der Position auf dem Schirm wird das Elektron einen bestimmten Impuls $p_x$ in Richtung der x-Achse haben:

- Je breiter die Spaltöffnung ist, desto weniger verschiedene mögliche Impulswerte $p_x$ des Elektrons könnten bei einer Messung zufällig gemessen werden, da das 0. Maximum schmal ist.

- Je schmaler die Spaltöffnung ist, desto mehr unterschiedliche mögliche Impulswerte $p_x$ des Elektrons könnten bei einer Messung zufällig gemessen werden, da das 0. Maximum breit ist.

Oder anders ausgedrückt:

- Je **bestimmter** der Weg ist, den das Elektron durch den Spalt gehen kann (schmale Spaltöffnung), desto **unbestimmter** ist der **zufällige** Impuls $p_x$ des Elektrons in x-Richtung bei einer Messung auf dem Schirm.

- Je **unbestimmter** der Weg ist, den das Elektron durch den Spalt geht (breite Spaltöffnung), desto **bestimmter** ist der zufällige Impuls des Elektrons in x-Richtung $p_x$ bei einer Messung auf dem Schirm

**Werner Heisenberg** hat diesen Zusammenhang erstmals in einer Gleichung ausgedrückt:

- Die "Unbestimmtheit" wird mit dem Symbol $\Delta$ ausgedrückt. 

- Man bezeichnet die Ortsunbestimmtheit beim Passieren des Spalts mit $\Delta x$ und die Impulsunbestimmtheit bei der Messung des Elektrons am Schirm mit  $\Delta p_x$:

$$
  \Delta x \cdot \Delta p_x \geq h
$$

> [!NOTE]
> Das Produkt aus der Ortsunbestimmtheit beim Durchgang durch den Spalt und der Impulsunbestimmtheit in x-Richtung bei der Messung auf dem Schirm ist immer größer oder gleich dem Planckschen Wirkungsquantum $h$.

- Wenn man ein Experiment aufbauen möchte, mit dem man genau messen kann, wo ein Elektron den Spalt passiert, muss man den Spalt sehr schmal bauen. Der Preis für diese genaue Ortsmessung beim Passieren des Spalts ist, dass man das Elektron auf einem breiten Schirmbereich zufällig messen wird. Der Impuls des Elektrons in x-Richtung wird unbestimmter.

- Wenn man ein Experiment aufbauen möchte, mit dem ein Elektron in einem schmalen Schirmbereich gemessen werden kann, dann muss die Impulsunbestimmtheit des Elektrons in x-Richtung klein werden. Das kann experimentell nur erreicht werden, indem man den Spalt breiter baut. Der Ort des Elektrons beim Passieren des Spalts wird unbestimmter.

---

### Impulsunbestimmtheit am Mehrfachspalt

Dieser Zusammenhang kann auch auf Experimente mit einem Mehrfachspalt (Gitter) übertragen werden. Wir denken uns ein Gitter mit Gitteröffnungen, die alle gleich breit sind.

##### 1. Fall: Das Gitter hat wenige Gitteröffnungen:
Wenn es **wenige** Gitteröffnungen gibt, dann ist das Gitter sehr schmal und die Ortsunbestimmtheit $\Delta x$ des Elektrons, wenn es das Gitter passiert, ist sehr klein. 

Für die Heisenbergsche Unbestimmtheitsrelation bedeutet das, dass der Faktor $\Delta x$ sehr klein ist. Damit das Produkt $\Delta x \cdot \Delta p_x$ größer als $h$ ist, muss die Impulsunbestimmtheit $\Delta p_x$ in x-Richtung größer werden. Folglich beobachtet man ein breites 0. Maximum.

##### 2. Fall: Das Gitter hat viele Gitteröffnungen:  
Wenn es viele Gitteröffnungen gibt, dann ist das Gitter breiter und die Ortsunbestimmtheit $\Delta x$ des Elektrons, wenn es das Gitter passiert, ist relativ groß. 

Für die Heisenbergsche Unbestimmtheitsrelation bedeutet das, wenn der Faktor $\Delta x$ relativ groß ist, kann die Impulsunbestimmtheit $\Delta p_x$ in x-Richtung klein sein, damit das Produkt $\Delta x \cdot \Delta p_x$ immer noch größer als $h$ ist. Folglich beobachtet man bei einem breiten Gitter ein schmales 0. Maximum.

> Simulation in neuem Fenster starten: <a href="/apps/qp/24_mehrfachspaltheisenberg/mehrfachspalteheisenberg.html" target="_blank">Mehrfachspalt - Unbestimmtheit</a>

<iframe frameborder="0" src="/apps/qp/24_mehrfachspaltheisenberg/mehrfachspalteheisenberg.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

[Quelle für die Spaltengine: Leifi-Physik-Vielfachspalt und Gitter](https://www.leifiphysik.de/optik/beugung-und-interferenz/grundwissen/vielfachspalt-und-gitter)

<details>

  <summary>Durchführung</summary>
  
**Verändere** die Anzahl der Spalte und **beobachte** die Auswirkung auf die Breite des 0. Maximums.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Bei einer kleinen Gitterbreite beobachtet man ein breites 0. Maximum:

![](gitter01.jpg)

Bei einer großen Gitterbreite beobachtet man ein schmales 0. Maximum:

![](gitter02.jpg)

</details>

---

## Ausblick: Grundlegende Unbestimmtheit

Die Heisenbergsche Unbestimmtheitsrelation ist eine direkte Folge der Modellierung von Quantenobjekten mit einem Wellenmodell und daher als ein grundlegendes Prinzip der Physik angesehen werden kann.

Eine Welle wird durch die Angabe von Frequenz, Wellenlänge und Amplitude beschrieben. Der einfachste Wellentyp ist eine sinusförmige Welle. Wellengleichung:

$$
  s(x,t) = A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{\lambda} \right) \right),
$$

Für den möglichen Ort $x$ und den Zeitpunkt $t$ gibt es keine Einschränkung. Eine auf diese Weise dargestellte Welle breitet sich unendlich weit in x-Richtung aus und beschreibt die Schwingung der Oszillatoren für alle zukünftigen Zeitpunkte.

##### Ziel: Frequenz der Welle genau bestimmen

In den Weg der Welle wird ein Oszillator gesetzt, der eine weitere Welle aussendet, die mit der ankommenden Welle interferiert. Der Oszillator wird so in Gang gesetzt, dass Amplitude, Frequenz und Phase perfekt mit der ankommenden Welle übereinstimmen. 

Als resultierende Welle beobachtet man eine Welle mit gleicher Frequenz, Phase und doppelter Amplitude wie die ankommende Welle. Wenn die Frequenzen der beiden Wellen aber nicht perfekt übereinstimmen, kann man Schwebungen beobachten.

> Simulation in neuem Fenster starten: <a href="/apps/qp/07_schwebung/schwebung.html" target="_blank">Schwebungen</a>

<iframe frameborder="0" src="/apps/qp/07_schwebung/schwebung.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
**Gleiche** die Frequenz der beiden Wellen an und **beobachte** die Auswirkung auf die resultierende Welle.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Wenn die Frequenzen der Wellen verschieden sind, beobachtet man eine Schwebung.

![](schwebung01.jpg)

Wenn die Frequenzen der Wellen genau gleich sind, beobachtet man keine Schwebung.

![](schwebung02.jpg)

**Folgerung:** Falls man die resultierende Welle der beiden interferierenden Wellen eine begrenzte Zeit beobachtet, dann beobachtet man vielleicht in diesem Zeitraum keine Schwebung, so dass man davon ausgehen kann, dass die beiden Frequenzen übereinstimmen. 

Aber es könnte sein, dass der Unterschied zwischen den beiden Frequenzen so gering ist, dass man erst nach einem deutlich längeren Beobachtungszeitraum eine Schwebung beobachten könnte. 

Je länger man die Überlagerung der Wellen beobachtet, desto sicherer kann man sein, dass die Frequenzen genau übereinstimmen. Aber vielleicht hat die Frequenz der Welle 1 einen Wert von 23 Hz und die Frequenz der Welle 2 einen Wert von 23,00000000001 Hz. Dann müsste man ziemlich lange warten, bis sich die Wellen relativ zueinander so verschoben haben, dass eine Schwebung sichtbar wird.

Um absolut sicher zu sein, dass beide Wellen die gleiche Frequenz haben, müsste man die beiden Wellen einen unendlich langen Zeitraum beobachten, um absolut sicher ausschließen zu können, dass eine Schwebung sichtbar wird.

</details>

> [!NOTE]
> Bei der Messung einer unbekannten Frequenz $f$ gibt es grundsätzlich eine **Messunsicherheit** $\Delta f$, wenn man die sich überlagernden Wellen nur eine bestimmte Zeit $\Delta t$ beobachtet.

Diese Messunsicherheit kann man abschätzen:

Wenn sich die beiden Frequenzen $f_1$ der ankommenden Welle und $f_2$ der Messwelle um den Betrag $\Delta f$ unterscheiden, kann man in einer Zeiteinheit (z.B. 1 Sekunde) $\Delta f$ Schwebungen beobachten. 

Man muss mindestens die Zeit $\Delta t = \frac {1}{\Delta f}$ messen, um eine ganze Schwebung zu beobachten. Man kann also eine Schwebung sicher beobachten, wenn die Messung mindestens solange dauert, bis eine Schwebung sicher aufgetreten ist. 

Damit gilt für die kleinste sinnvolle Messzeit:

$$
  \Delta t \geq \frac{1}{\Delta f}
$$

Bringt man die Messgrößen Zeit und Frequenz auf eine Seite, folgt:

$$
  \Delta t \cdot \Delta f \geq 1
$$

Die **Messunsicherheit** bei der Messung der Frequenz einer Welle, wenn man diese nur einen bestimmten Zeitraum $\Delta t$ misst, ist also:

$$
 \Delta f \geq \frac{1}{\Delta t}
$$

Aus dieser Gleichung kann man folgern:

- Je kleiner der Beobachtungszeitraum $\Delta t$ ist, desto größer wird die Frequenzmessunsicherheit $\Delta f$, weswegen man die Frequenz nur mit einer bestimmten Unbestimmtheit angeben kann. Diese Unbestimmtheit für die Frequenzmessung ist um so größer, je kleiner der Messzeitraum ist.

- Wenn die Messunsicherheit $\Delta f$ für die Frequenzmessung möglichst klein sein soll, dann muss man die Frequenz während eines möglichst großen Zeitraums messen.

Wenn man im Extremfall die Frequenz beliebig genau kennen möchte, müsste die Messunsicherheit $\Delta f = 0$ sein und der Messzeitraum $\Delta t$ müsste dafür unendlich groß werden. Eine Folgerung daraus ist, dass es grundsätzlich nicht möglich ist, mit einer endlich langen Messzeit eine Frequenz beliebig genau zu messen.

---

### Unbestimmtheit bei Wellenlängenmessungen

Die Ungleichung $\Delta t \cdot \Delta f \geq 1$ kann man auf die Messung der Wellenlänge einer Welle übertragen. 

Wenn man eine Welle während eines Messzeitraums $\Delta t$ beobachtet, dann ist die Welle während dieses Messzeitraums um die Strecke $\Delta s = v \cdot \Delta t$ weitergelaufen, mit $v$ = Ausbreitungsgeschwindigkeit der Welle. 

Im Zeitraum $\Delta t$ konnte nur eine Teilstrecke $\Delta s$ der Welle beobachtet werden. In die Gleichung $\Delta s = v \cdot \Delta t$ kann für $\Delta t$ die Beziehung aus der Frequenzmessung für $\Delta t$ eingesetzt werden: $\Delta t \geq \frac{1}{\Delta f}$ und es folgt:

$$
  \Delta s \geq v \cdot \frac{1}{\Delta f}
$$

Die Ausbreitungsgeschwindigkeit $v$ einer idealen Welle ist konstant, mit der Annahme, dass die Bedingungen im gesamten Bereich, in welchem sich die Welle ausbreitet, unverändert bleiben. 

Die Frequenz $f$ einer Welle hängt damit direkt von der Wellenlänge $\lambda$ der Welle ab. Aus $v = \lambda \cdot f$ folgt $f = \frac{v}{\lambda}$. Damit kann man die Frequenz als Funktion der Wellenlänge schreiben:

$$
  f(\lambda) = \frac{v}{\lambda}
$$

Die Änderung der Frequenz bei einer Änderung der Wellenlänge kann über die Ableitung bestimmt werden:

$$
\begin{align}
  f'(\lambda) &= \frac{d f}{d \lambda} = \left( \frac{v}{\lambda} \right)' \\
              &= v \cdot \left( \lambda^{-1} \right)' \\
              &= -1 \cdot v \cdot \lambda^{-2} \\
              &= - \frac{v}{\lambda^2}
\end{align}
$$

Wir interessieren uns nicht für eine beliebig kleine Änderung der Wellenlänge $d \lambda$, sondern für eine messbare Änderung der Wellenlänge $\Delta \lambda$. 

Damit schreiben wir die Änderungsrate $\frac{d f}{d \lambda}$ als mittlere Änderung $\frac{\Delta f}{\Delta \lambda}$ und verwenden zur Abschätzung für kleine Abweichungen den Betrag der Änderungsrate aus der Ableitung.

$$
\begin{align}
  \frac{\Delta f}{\Delta \lambda} &= \left| - \frac{v}{\lambda ^2} \right|
\end{align}  
$$

In der Formel $\Delta s \geq v \cdot \frac{1}{\Delta f}$ soll die Änderung der Frequenz $\Delta f$ ersetzt werden, also lösen wir den letzten Ausdruck nach $\Delta f$ auf und ersetzen diesen mit der rechten Seite des Ausdrucks:

$$
\begin{align}
  \frac{\Delta f}{\Delta \lambda} &= \left| - \frac{v}{\lambda ^2} \right| \\
  \Delta f &= \frac{v \cdot \Delta \lambda}{\lambda ^2}
\end{align}  
$$

Also

$$
\begin{align}
  \Delta s &\geq v \cdot \frac{1}{\Delta f} \\
  \Delta s &\geq v \cdot \frac{1}{\frac{v \cdot \Delta \lambda}{\lambda ^2}} \\
  \Delta s &\geq v \cdot \frac{\lambda ^2}{v \cdot \Delta \lambda} \\
  \Delta s &\geq \frac{\lambda ^2}{\Delta \lambda} \\   
  \Delta s \cdot \Delta \lambda &\geq \lambda ^2
\end{align}  
$$

Die **Unbestimmtheit** der Wellenlänge einer Welle, wenn man nur einen Ausschnitt $\Delta s$ der Welle sieht, ist also:

$$ 
 \Delta s \cdot \Delta \lambda \geq \lambda ^2
$$

oder aufgelöst nach $\Delta \lambda$:

$$ 
 \Delta \lambda \geq \frac{\lambda ^2}{\Delta s}
$$

Aus dieser Gleichung kann man folgern:

- Je kleiner die Beobachtungsstrecke $\Delta s$ ist, desto größer wird die Wellenlängenunbestimmtheit $\Delta \lambda$, weswegen man die Wellenlänge nur mit einer bestimmten Unbestimmtheit angeben kann. Diese Unbestimmtheit für die Wellenlängenmessung ist um so größer, je kleiner die Messstrecke ist.

- Wenn die Unbestimmtheit $\Delta \lambda$ für die Wellenlängenmessung möglichst klein sein soll, dann muss man die Wellenlänge über eine möglichst große Messstrecke messen.

Wenn man im Extremfall die Wellenlänge beliebig genau kennen möchte, müsste $\Delta \lambda = 0$ sein und die Messstrecke $\Delta s$ müsste dafür unendlich groß werden. 

> [!NOTE]
>Es ist grundsätzlich nicht möglich mit einer endlichen Messstrecke die Wellenlänge beliebig genau zu messen.

---

## Die Unbestimmtheitsrelation

Bei Messungen der Frequenz und der Wellenlänge einer Welle kann man bei endlichen Messgrößen grundsätzlich nicht beliebig genau messen. 

In der atomaren Welt gibt es daher grundsätzliche Mess-Unbestimmtheiten. Die Ungleichungen für Frequenzunbestimmtheit und Wellenlängenunbestimmtheit waren:

- Wenn die Frequenz $f$ einer Welle nur während eines endlichen Zeitintervalls $\Delta t$ gemessen wird, dann beträgt die Unbestimmtheit $\Delta f$ der Frequenzmessung: $\Delta f \geq \frac{1}{\Delta t}$.

- Wenn die Wellenlänge $\lambda$ einer Welle nur längs einer endlichen Strecke $\Delta s$ in Richtung der Wellenausbreitung gemessen wird, dann beträgt die Unbestimmtheit $\Delta \lambda$ der Wellenlängenmessung: $\Delta \lambda \geq \frac{\lambda^2}{\Delta s}$.

Diese Überlegungen werden für die Welt der Quantenobjekte wichtig, denn jedem Quantenobjekt mit der Energie $E$ und dem Impuls $p$ kann eine Frequenz $f = \frac{E}{h}$ und eine Wellenlänge $\lambda = \frac{h}{p}$ zugeordnet werden. 

Aus der Einsicht, dass jede Frequenzmessung nur mit einer Frequenzunbestimmtheit $\Delta f$ durchgeführt werden kann, folgt unmittelbar aus $\Delta f \geq \frac{1}{\Delta t}$, dass die Energie $E$ eines Quantenobjekts nur mit einer Energieunbestimmtheit $\Delta E$ gemessen werden kann:

$$
\begin{align}
  \Delta E = h \cdot \Delta f \\
  \Delta E \geq h \cdot \frac{1}{\Delta t} \\
  \Delta E \cdot \Delta t \geq h
\end{align}
$$

Die Größe der Plankschen Konstante $h$ legt die Unbestimmtheit fest, mit welcher Energie und Zeit gleichzeitig genau gemessen werden können. In Worten kann man diese Ungleichung wie folgt ausdrücken:

> [!NOTE]
> Weiß man, dass sich ein Quantenobjekt während eines Zeitraums $\Delta t$ im Energiezustand $E$ befindet, dann ist die Unbestimmtheit $\Delta E$ für den gemessenen Energiewert $\Delta E = \frac{h}{\Delta t}$.

Die Energie $E$ eines Quantenobjekts kann also nur dann mit absoluter Genauigkeit ($\Delta E = 0$) bestimmt werden, wenn das Quantenobjekt unendlich lange in diesem Energiezustand gemessen wird. Diese Einsicht kann man jetzt vom Messvorgang trennen und verallgemeinern.

> [!NOTE]
> Die Energie $E$ eines Quantenobjekts ist nur dann mit absoluter Genauigkeit bestimmt, wenn das Quantenobjekt eine unendlich lange Zeitspanne existiert.

Einem Quantenobjekt kann die Wellenlänge $\lambda = \frac{h}{p_x}$ zugeordnet werden, wobei $p_x = m \cdot v_x$ der Impuls des Quantenobjekts in x-Richtung ist. Fasst man die Wellenlänge als Funktion des Impulses in x-Richtung auf, dann folgt aus der Ableitung dieser Funktion:

$$
\begin{align}
  \lambda(p_x)' &= \frac{d \lambda}{d p_x} = \left( \frac{h}{p_x} \right)' \\
              &= h \cdot \left( p_x^{-1} \right)' \\
              &= -1 \cdot h \cdot p_x^{-2} \\
              &= - \frac{h}{p_x^2}
\end{align}
$$

Wir interessieren uns nicht für eine beliebig kleine Änderung des Impulses $d p_x$, sondern für eine messbare Änderung des Impulses $\Delta p_x$. 

Damit schreiben wir die Änderungsrate $\frac{d \lambda}{d p_x}$ als mittlere Änderung $\frac{\Delta \lambda}{\Delta p_x}$ und verwenden zur Abschätzung für kleine Abweichungen den Betrag der Änderungsrate aus der Ableitung.

$$
\begin{align}
  \frac{\Delta \lambda}{\Delta p_x} &= \left| - \frac{h}{p_x^2} \right|
\end{align}  
$$

Daraus folgt:

$$
\begin{align}
  \Delta \lambda &= \frac{h}{p_x^2} \cdot \Delta p_x
\end{align}  
$$

Diesen Ausdruck kann man in die Ungleichung zur Beschreibung der Unbestimmtheit einer Wellenlänge einsetzen, wobei die Strecke $s$ mit der x-Koordinate $x$ ersetzt wird und es folgt mit $\lambda \cdot p_x = h$:

$$
\begin{align}
  \Delta \lambda \cdot \Delta x &\geq \lambda^2 \\
  \frac{h}{p_x^2} \cdot \Delta p_x \cdot \Delta x &\geq \lambda^2 \\
  \Delta p_x \cdot \Delta x &\geq \frac{\lambda^2 \cdot p_x^2}{h} \\
  \Delta p_x \cdot \Delta x &\geq \frac{(\lambda \cdot p_x)^2}{h} \\
  \Delta p_x \cdot \Delta x &\geq \frac{h^2}{h} \\
  \Delta p_x \cdot \Delta x &\geq h
\end{align}   
$$

Die Unbestimmtheitsrelation beschreibt eine **grundlegende Eigenschaft von Quantenobjekten**. 

> [!NOTE]
> Für die **Heisenbergsche Unbestimmtheitsrelation** haben wir zwei Formulierungen gefunden:
> $$\Delta E \cdot \Delta t \geq h$$
>
> und 
>
> $$\Delta p_x \cdot \Delta x \geq h$$

Die Lehrbuch-Notation der Unbestimmtheitsrelation hat auf der rechten Seite einen kleineren Wert:
- $\Delta E \cdot \Delta t \geq \frac {h}{4 \pi}$ 
- $\Delta p_x \cdot \Delta x \geq \frac {h}{4 \pi}$

---

## Komplementäre Messgrößen

> [!NOTE]
> Physikalische Größen, die in einer Messung nicht gleichzeitig genau beobachtet werden können, nannte Niels Bohr **komplementär**. 

Beispiele für komplementäre Messgrößen:

- Energie und Zeit

- Impuls in x-Richtung und Ort

- Welcher-Weg-Information und Interferenz

Um den Unterschied zwischen Mikro- und Makrophysik herauszuheben, benutzt man in der Mikrophysik nicht mehr den Begriff **physikalische Größe**, sondern den der **Observablen**. Man unterscheidet dabei verträgliche und unverträgliche Observable: 

> [!NOTE]
> Zwei **Observable** heißen **komplementär** oder **unverträglich** zueinander, wenn bei ihrer gleichzeitigen Messung die Genauigkeit ihrer Messwerte durch die Heisenbergsche Unbestimmtheitsrelation eingeschränkt ist.

---

## Präparation eines Experiments

Ein Gedankenexperiment:

**Angenommen, man möchte den Impuls eines Autos messen**. Man stellt sich an den Rand einer Straße, markiert auf dem Gehsteig eine Startlinie und drückt den Startknopf der Stoppuhr, wenn ein Auto diese Startlinie passiert. Sobald das Auto die Ziellinie erreicht hat, drückt man auf Stopp. Dividiert man die Weglänge durch die dafür benötigte Zeit, beschreibt das Ergebnis die Geschwindigkeit des Autos. Um den Impuls zu berechnen, multipliziert man die Masse des Autos, welche im Fahrzeugschein steht, mit der gemessenen Geschwindigkeit.

**Angenommen, man möchte den Impuls eines einzelnen Elektrons messen**. Ein Elektron ist extrem klein. Um möglichst genau zu messen, wo sich ein Elektron befindet, braucht man Licht mit einer extrem kurzen Wellenlänge. Ein Photon überträgt auf ein Elektron die Energie $E = h \cdot \frac{c}{\lambda}$. Wenn man Licht mit einer extrem kleinen Wellenlänge verwendet, ist die Energie, welche bei einer Messung auf ein Elektron übertragen wird, sehr groß. Der Comptoneffekt hat gezeigt, dass bei einer Wechselwirkung zwischen einem Photon und einem Elektron der Impuls erhalten bleibt. Wenn ein Elektron ein Photon absorbiert und kurze Zeit später wieder ein Photon emittiert, hat sich der Impuls des Elektrons verändert. Die Änderung des Impulses ist um so extremer, je kürzer die Wellenlänge des Lichts ist, das man auf das Elektron schickt. Damit folgt:

- Wenn man den **Ort eines Elektrons** genau messen möchte, benötigt man dafür Mess-Photonen mit kurzer Wellenlänge, um eine hohe Wahrscheinlichkeit zu bekommen, dass die Wechselwirkung zwischen dem Photon und dem Elektron in einem bestimmten kleinen Raumbereich beobachtet werden kann. Ein Photon mit kurzer Wellenlänge überträgt auf ein Elektron bei einer Wechselwirkung viel Energie, so dass der Impuls und die Energie des Elektrons bei der Wechselwirkung stark verändert wird. Man "erkauft" die Genauigkeit einer Ortsmessung damit, dass der Zustand des Elektrons durch die Messung stark verändert wird. **Die Kenntnis über den Impuls des Elektrons wird bei einer genauen Ortsmessung unbestimmt**.

- Wenn man den **Impuls eines Elektrons** genau messen möchte, benötigt man dafür Mess-Photonen mit langer Wellenlänge, damit durch die Absorption eines Mess-Photons der Impuls des Elektrons möglichst wenig verändert wird. Verwendet man Photonen mit einer großen Wellenläge, vergrößert sich der Raumbereich in dem eine Wechselwirkung zwischen Photon und Elektron mit hoher Wahrscheinlichkeit zufällig stattfindet. Man "erkauft" die Genauigkeit einer Impulsmessung damit, dass man den Ort, an welchem die Messung stattfindet, nur ungenau kennt. **Die Kenntnis des Ortes, an welchem die Wechselwirkung zwischen Elektron und Photon stattfindet, wird bei einer genauen Messung des Impulses des Elektrons unbestimmt**.

> [!NOTE]
> Man kann kein Experiment in der atomaren Welt so präparieren, dass gleichzeitig Ort und Impuls eines Quantenobjekts beliebig genau gemessen werden kann. Man muss sich bei der Planung des Experiments entscheiden, welche Größe man möglichst genau messen möchte.

---

## Video-Empfehlung

  - [Unbestimmtheitsrelation](https://www.youtube.com/watch?v=S_catiHOwiw&list=PLmDf0YliVUvGGAE-3CbIEoJM3DJHAaRzj&index=31)

---