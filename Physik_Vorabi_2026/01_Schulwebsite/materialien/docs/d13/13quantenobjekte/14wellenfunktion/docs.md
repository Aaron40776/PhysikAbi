## Die Wahrscheinlichkeitswelle

> **Bezug zum Kerncurriculum:**  
> - Ein Exkurs zur Wahrscheinlichkeitswelle

---

Bei der Modellierung von Experimenten zur Quantenphysik werden Modelle kombiniert:

1. **Wellen-Modell**: Bei bestimmten Experimenten erzeugen Quantenobjekte ein Interferenzmuster auf dem Schirm. Zur Modellierung des Interferenzmusters verwenden wir bei einem solchen Experiment ein Wellenmodell.

2. **Teilchen-Modell**: Bei bestimmten Experimenten wechselwirken Quantenobjekte immer an einem bestimmten Ort und tauschen bestimmte Mengen an Energie und Impuls aus. Zur Modellierung der Wechselwirkung verwenden wir bei einem solchen Experiment ein Teilchenmodell.

3. **stochastisches Modell (Zufall)**: Bei bestimmten Experimenten kann man grundsätzlich nicht genau vorhersagen, wo oder wann ein Quantenobjekt mit einem anderen Quantenobjekt wechselwirken wird. Das grundsätzlich zufällige Verhalten wird mit einem geeigneten Zufalls-Modell modelliert.

4. **welcher-Weg-Modell**: Wenn man bei bestimmten Experimenten eine Messanordnung einbaut, mit der man messen könnte, welchen Weg ein Quantenobjekt von der Quelle zum Schirm genommen hat, verschwindet das Interferenzbild. Das Verschwinden des Interferenzbilds wird mit einem geeigneten Welcher-Weg-Modell modelliert.

5. **Unbestimmtheitsrelation**: Komplementäre Messgrößen können nicht gleichzeitig beliebig genau gemessen werden. Beim Entwurf eines Experiments muss man sich entscheiden, welche Messgrößen man mit welcher Genauigkeit messen möchte.

---

## Wahrscheinlichkeit und Wahrscheinlichkeitsdichte

Die Beobachtung der Wechselwirkung von Elektronen mit einem Schirm erinnert an Zufallsexperimente:

- In der Schirmmitte beobachtet man viele Elektronen, die pro Sekunde mit dem Schirm wechselwirken, weiter außen zählt man pro Sekunde weniger wechselwirkende Elektronen. 

- Man kann sagen, dass die Wahrscheinlichkeit $P(E)$ für das Ereignis $E$ = "ein Elektron wechselwirkt mit einer Stelle $x$ auf dem Schirm" in der Schirmmitte größer ist, als weiter außen. 

- Je weiter der Schirm von der Elektronenquelle entfernt ist, desto größer wird die mögliche Fläche, innerhalb welcher ein Elektron wechselwirken kann. 

- Daher wird die Wahrscheinlichkeit einer Wechselwirkung für jede Teilfläche geringer, bleibt aber in der Schirmmitte am größten.

> [!NOTE]
> Für ein Elektron ist die Wahrscheinlichkeit mit dem Schirm wechselzuwirken 100%. Diese Wahrscheinlichkeit ist auf den gesamten Schirm verteilt. Summiert man die Wahrscheinlichkeiten aller Schirmstellen, muss die berechnete Summe 100% sein. Je größer der Abstand Quelle-Schirm ist, desto mehr ist die Wahrscheinlichkeit auf eine größere Fläche verteilt.

Dieses Verhalten kann mit Hilfe eines Dalton-Bretts nachvollzogen werden:

- Eine Kugel fällt auf ein Dalton-Brett und fällt nach Durchlaufen des Bretts in einen Eimer. 

- Den Weg der Kugel zerteilt man in n-Teilstrecken. 

- Nach der ersten Teilstrecke setzt man ein Hindernis, nach der zweiten Teilstrecke setzt man 2 Hindernisse, dann 4 Hindernisse, dann 8 und so weiter. 

- Bei jedem Hindernis bewegt sich die Kugel zufällig nach links oder rechts, wobei beide Wahrscheinlichkeiten gleich sind (jeweils 50%).

Aus dem Stochastik-Unterricht sind solche Experimente als **Bernoulli-Experimente** bekannt. Die Wahrscheinlichkeit für ein Ereignis (z.B. die Kugel trifft Eimer 2) berechnet man mit Hilfe der **Pfadregeln**: 

- Die Wahrscheinlichkeit eines Pfads wird berechnet, indem man die Wahrscheinlichkeiten der einzelnen Stufen multipliziert. 

- Gehören zu einem Ereignis mehrere Pfade, dann berechnet man die Gesamtwahrscheinlichkeit, indem man die Pfadwahrscheinlichkeiten addiert. 

---

### Simulation: Dalton-Brett

<iframe src="https://phet.colorado.edu/sims/html/plinko-probability/latest/plinko-probability_de.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

> Quelle: [PhET](https://phet.colorado.edu/sims/html/plinko-probability/latest/plinko-probability_de.html)

<details>

  <summary>Durchführung</summary>
  
**1.**: **Starte** das Experiment im Labormodus. **Lasse** viele Kugeln durch das Dalton-Brett fallen und **beobachte** die Verteilung der Kugeln in den Eimern.

**2.**: **Variiere** die Anzahl der Reihen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Verteilung mit wenigen Reihen und wenigen Eimern:

![](plinko01.jpg)

Verteilung mit vielen Reihen und vielen Eimern:

![](plinko02.jpg)

</details>

Die Verteilung der Kugeln in den Eimern liefert eine ähnliche Verteilung, wie die Verteilung der einzelnen Elektronen auf dem Schirm, wenn man nur eine eindimensionale Gerade auf dem Schirm betrachtet. 

- In den mittleren Eimern findet man viele Kugeln, weiter außen weniger. 

- Wenn man die Anzahl der Eimer vergrößert und damit mehr Reihen in das Dalton-Brett einfügt, verteilen sich pro Sekunde gleich viele Kugeln auf einen größeren Bereich, so dass die Verteilung gleich bleibt (in der Mitte mehr Kugeln, außen weniger Kugeln), aber die Anzahl an Kugeln, die pro Sekunde in einen Eimer fallen wird geringer, da es mehr Möglichkeiten für die Kugeln gibt.

- Es ist unmöglich sicher vorherzusagen, welchen Eimer eine einzelne Kugel treffen wird. Das Verhalten einer einzelnen Kugel ist zufällig. 

- Bei sehr vielen Kugeln kann man immer besser voraussagen, **wie viele** Kugeln man in den einzelnen Eimern zählen wird. 

Man kann Formeln angeben, mit deren Hilfe diese Verteilung vorhergesagt werden kann:

$$
  P(X) = {n \choose k} \, p^k \cdot (1-p)^{n-k}
$$

Je länger man das Experiment laufen lässt und je mehr Kugeln durch das Dalton-Brett gelaufen sind, desto besser passen die gemessenen Werte zu den vorhergesagten Werten.

Ein solches Modell simuliert NICHT die physikalischen Vorgänge, sondern erzeugt eine Verteilung von Kugeln in Eimern, wobei diese der Verteilung der Wechselwirkungen auf dem Schirm ähnelt, wenn man nur eine eindimensionale Strecke waagrecht auf dem Schirm beobachtet. 

Dieses Vorgehen ist typisch für Modellierungen in der atomaren Welt. Man kann die Vorgänge nicht anschaulich erklären, sondern entwirft ein Modell, das Zahlen erzeugt, die den vorliegenden Messdaten ähneln.

> [!NOTE]
> Wir suchen also ein mathematisches Modell, das z.B. beim Doppelspaltexperiment eine Wahrscheinlichkeitsverteilung liefert, mit welcher man für jede gewählte Präparation (linker Spalt offen, rechter Spalt offen, beide offen, mit Detektoren, ohne Detektoren) vorhersagen kann, mit welcher Wahrscheinlichkeit eine Wechselwirkung an einem Ort auf dem Schirm beobachtet werden kann. 

Dazu kann man einem Punkt $x$ auf dem Schirm eine bestimmte Wahrscheinlichkeit $\Delta P$ zuordnen, dass ein Elektron in dem Bereich $\Delta x$ um den Punkt $x$ herum mit dem Schirm wechselwirken wird. 

Der Quotient aus der Wahrscheinlichkeit $\Delta P$ und der Ausdehnung des Bereichs $\Delta x$ wird definiert als **Wahrscheinlichkeitsdichte** $\rho(x)$ am Ort $x$:

$$
 \rho(x) = \frac{\Delta P}{\Delta x}
$$

Aus der **Wahrscheinlichkeitsdichte** kann die Wechselwirkungswahrscheinlichkeit für einen Schirmbereich mit Hilfe eines **Integrals** berechnet werden. 

Die Berechnung mit Hilfe eines Integrals ist notwendig, da die Wahrscheinlichkeit an jedem Ort auf dem Schirm einen anderen Wert besitzt.

Wenn man von einer bestimmten Fläche $A$ auf dem Schirm die Wechselwirkungswahrscheinlichkeit $P(A)$ berechnen wollen, muss man die Wahrscheinlichkeitsdichten $| \Psi(x,y) |^2$ für alle Orte, die zu dieser Fläche gehören aufsummieren: $P(A) = \int_{A} \, | \Psi(x,y) |^2 \, dA$.

---

## Beispiel: Doppelspaltversuch mit einzelnen Elektronen

> Simulation in neuem Fenster starten: <a href="/apps/qp/04_doppelspaltelektron02/doppelspaltelektron02.html" target="_blank">Doppelspaltexperiment mit Elektronen</a>

<iframe frameborder="0" src="/apps/qp/04_doppelspaltelektron02/doppelspaltelektron02.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

[Quelle für die Spalt-Engine: Leifi-Physik-Einzelspalt](https://www.leifiphysik.de/optik/beugung-und-interferenz/grundwissen/einzelspalt)

Wenn beide Spalte geöffnet sind, beobachtet man auch dann auf dem Schirm ein Interferenzbild, wenn einzelne Elektronen auf den Schirm geschickt werden. 1926 hat Erwin Schrödinger eine mathematische Theorie aufgestellt, in der das Verhalten eines Elektrons durch eine **Wellenfunktion** $\Psi$ beschrieben wird. Max Born führte im Jahre 1927 die **Wahrscheinlichkeitsdeutung** für die Wellenfunktion ein:

> [!NOTE]
> Die Wahrscheinlichkeit $P(x)$, dass Quantenobjekte an einem Ort $x$ wechselwirken, ist proportional zum Quadrat des Betrags der Wellenfunktion $\Psi(x)$, die den Quantenobjekten zugeordnet wird. Es gilt:
>
> $$ P(x) = | \Psi(x) |^2 $$

---

#### Superposition von Wahrscheinlichkeitswellen

Beim Versuch eine geeignete Wahrscheinlichkeitswelle für ein Elektron in der Doppelspaltanordnung zu konstruieren, stößt man beim Nachdenken recht bald auf ein erstes Problem. Die beobachteten Schirmbilder können mathematisch nicht kombiniert werden. 

Wenn beim Doppelspaltversuch der linke Spalt offen ist, beobachtet man nach einiger Zeit ein Schirmbild, das wie folgt aussieht:

![](linker_spalt_offen.png)

Auf dem Schirm direkt hinter dem Einzelspalt beobachtet man häufig Wechselwirkungen. Wenn man sich nach links und rechts von diesem Bereich entfernt, wird die Wechselwirkungswahrscheinlichkeit geringer. 

Dem Experiment "man schickt ein einzelnes Elektron bei nur geöffnetem **linken Spalt** von der Quelle zum Schirm" kann die Wellenfunktion $\Psi_1(x)$ zugeordnet werden. Die Wahrscheinlichkeit, dass das Elektron an der Stelle $x$ mit dem Schirm wechselwirkt ist: $P_1(x) = | \Psi_1(x) |^2$.

Auch wenn der rechte Spalt offen ist, beobachtet man ein analoges Verhalten:

![](rechter_spalt_offen.png)

Dem Experiment "man schickt ein einzelnes Elektron bei nur geöffnetem **rechten Spalt** von der Quelle zum Schirm" kann die Wellenfunktion $\Psi_2(x)$ zugeordnet werden. Die Wahrscheinlichkeit, dass das Elektron an der Stelle $x$ mit dem Schirm wechselwirkt ist: $P_2(x) = | \Psi_2(x) |^2$.

Wenn beide Spalte geöffnet sind, beobachtet man ein Interferenzbild. 

![](doppelspalt_offen.png)

Dem Experiment "man schickt ein einzelnes Elektron bei **beiden geöffneten Spalten** von der Quelle zum Schirm" kann die Wellenfunktion $\Psi_{12}(x)$ zugeordnet werden. 

Es ist nicht sinnvoll die Wahrscheinlichkeiten $P_1(x)$ und $P_2(x)$ zu addieren, um die Wahrscheinlichkeit $P_{12}(x)$ zu berechnen, denn wenn man die beiden Schirmbilder der Einzelspaltexperimente übereinanderlegt, entsteht nicht das beobachtete Interferenzbild. An manchen Orten wo mit nur einem geöffneten Spalt Wechselwirkungen beobachtet werden konnten, können bei zwei geöffneten Spalten keine Wechselwirkung mehr beobachtet werden.

Die Kombination der Wahrscheinlichkeitswellen an diesem Ort muss eine Wechselwirkungswahrscheinlichkeit vom Wert Null liefern.

Man benötigt also Wahrscheinlichkeitswellen:

- die einzeln nur positive Wahrscheinlichkeiten liefern, 

- deren Superposition jedoch eine Wahrscheinlichkeit von 0 liefern kann.

Es soll gelten:

$$
  \Psi_{12}(x) = \Psi_{1}(x) + \Psi_{2}(x)
$$

Die Wahrscheinlichkeit für das Experiment mit beiden geöffneten Spalten ist dann:

$$
  P_{12}(x) = | \Psi_{12}(x) |^2 = | \Psi_{1}(x) + \Psi_{2}(x) |^2
$$

Es gilt:

- $| \Psi_1(x) |^2$ liefert für alle $x$ eine positive Zahl zwischen 0 und 1, welche die Wahrscheinlichkeit angibt, dass ein Elektron an der Stelle $x$ mit dem Schirm wechselwirkt, wenn der linke Spalt offen ist.

- $| \Psi_2(x) |^2$ liefert für alle $x$ eine positive Zahl zwischen 0 und 1, welche die Wahrscheinlichkeit angibt, dass ein Elektron an der  Stelle $x$ mit einem Schirmelektron wechselwirkt, wenn der rechte Spalt offen ist.

In der Interferenzsituation muss die Kombination der Wahrscheinlichkeitswellen an manchen Orten eine Wechselwirkungswahrscheinlichkeit vom Wert Null liefern:

Wenn man folglich $\Psi_1(x)$ und $\Psi_2(x)$ kombiniert und das Quadrat des Betrags $| \Psi_{1}(x) + \Psi_{2}(x) |^2$ berechnet, soll beim geöffneten Doppelspalt an den Orten destruktiver Interferenz (Minimum) an einer Stelle $x$ auf dem Schirm, wo vorher die Wahrscheinlichkeit in beiden Fällen positiv war, eine Wahrscheinlichkeit $P_{12}(x) = 0$ berechnet werden. 

Wenn die Wahrscheinlichkeiten, bei den Einzelspaltversuchen an einem gleichen Ort $x$ auf dem Schirm eine Wechselwirkung des Elektrons mit dem Schirm zu beobachten, jeweils größer als Null war, kann daraus keine Wahrscheinlichkeit resultieren, deren Wert 0 ist, wie es das beobachtete Interferenzbild fordern würde.

---

### Konstruktion einer geeigneten Wahrscheinlichkeitswelle

Die Interferenz mehrerer Wahrscheinlichkeitswellen kann mit dem Zeigermodell geeignet modelliert werden:

- Jeder Wahrscheinlichkeitswelle wird ein rotierender Zeiger zugeordnet.

- Am Interferenzort addiert man vektoriell die Zeiger zu einem resultierenden Zeiger.

- Das Quadrat der Länge des resultierenden Zeigers liefert die Wahrscheinlichkeit das Quantenobjekt an diesem Ort zu messen.

Man kann rotierende Zeiger mit Hilfe einer Funktion darstellen:

- Die Projektion des Zeigers auf die x-Achse kann mit dem Kosinus des Rotationswinkels angegeben werden und wird **Realteil** des Zeigers genannt. Die x-Werte laufen von -1 bis +1.

- Die Projektion des Zeigers auf die y-Achse kann mit dem Sinus des Rotationswinkels angegeben werden und wird **Imaginärteil** des Zeigers genannt. Die y-Werte laufen von -i bis +i.

- Eine bestimmte Position des Zeigers bekommt man durch Kombination des Realteils und des Imaginärteils. Die Kombination $z = \cos(\phi) + i \cdot \sin(\phi)$ nennt man eine **komplexe Zahl**.

Durch die Angabe einer komplexen Zahl $z = a + i \cdot b$ mit $a = \cos(\phi)$ und $b = \sin(\phi)$ kann die Position eines Zeigers eindeutig festgelegt werden. 

> Simulation in neuem Fenster starten: <a href="/apps/qp/11_komplexerzeiger/komplexerzeiger.html" target="_blank">Komplexer Zeiger</a>

<iframe frameborder="0" src="/apps/qp/11_komplexerzeiger/komplexerzeiger.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
**1.**: **Klicke** auf "Experiment Start/Stop" um die Simulation zu starten. **Klicke** auf "Starten/Pausieren" und **beobachte** wie sich der Sinus und wie sich der Kosinus ändert.

**2.**: **Beobachte** die Abbildung der Sinusfunktion und die Abbildung der Kosinusfunktion im rechten Schaubild.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 2.**: Der Wahrscheinlichkeitszeiger kann durch die gleichzeitige Angabe einer Kosinus- und einer Sinusfunktion visualisiert werden. Die Kosinusfunktion nennt man Realteil der Wellenfunktion und die Sinusfunktion nennt man Imaginärteil der Wellenfunktion.

![](komplex01.jpg)

</details>

<details>

  <summary>Rechenbeispiele</summary>
  
Die Zahl $i$ nennt man **imaginäre Einheit** und ist die Lösung der Gleichung $x^2 = -1$. Diese Gleichung hat keine reelle Lösung. In der Unimathematik **definiert** man eine Lösung. Diese Lösung nennt man **imaginär**, da sie nur in unserer Vorstellung existiert:

$$
  i² = -1
$$

Damit ist $\pm i$ eine Lösung der Gleichung $x^2 = -1$, denn $(-i)^2 = -1 \cdot (-1) \cdot \sqrt{-1} \cdot \sqrt{-1} = -1$ und $i^2 = \sqrt{-1} \cdot \sqrt{-1} = -1$. 

**Beispiel 1:**
Mit Hilfe von Zeigern soll für $\Psi_{1}(x)$ und $\Psi_{2}(x)$ aus dem letzten Beispiel jeweils eine Wellenfunktion konstruiert werden, mit denen das Verhalten beim Doppelspalt modelliert werden kann. Wir betrachten einen Ort auf dem Schirm, für den gilt:

- die Wahrscheinlichkeit $P_{1}(x)$, dass dort ein Elektron mit dem Schirm wechselwirkt, wenn alleine der linke Spalt geöffnet ist, beträgt $P_{1}(x) = p$ mit $0 \leq p \leq 1$. 

- die Wahrscheinlichkeit $P_{2}(x)$, dass dort ein Elektron mit dem Schirm wechselwirkt, wenn alleine der rechte Spalt geöffnet ist, beträgt $P_{2}(x) = q$ mit $0 \leq q \leq 1$.

- die Wahrscheinlichkeit $P_{12}(x)$, dass dort ein Elektron mit dem Schirm wechselwirkt, wenn beide Spalte geöffnet sind, beträgt $P_{12}(x) < p$ und $P_{12}(x) < q$, das heißt, die Intensität an diesem Schirmort ist bei beiden geöffneten Spalten kleiner als bei nur einem geöffneten Spalt. Wenn man annimmt, dass $p = q$, dann wäre dort ein Minimum.

In die Wellenfunktion werden Zeiger wie folgt eingebaut: Es sei     $\Psi_{1}(x) = \sqrt{p} \cdot e^{i \cdot \phi_1}$     und     $\Psi_{2}(x) = \sqrt{q} \cdot e^{i \cdot \phi_2}$

Für einen Zeiger der Länge 1 gilt:

- $e^{i \cdot \pi} = \cos(\pi) + i \cdot \sin(\pi) = -1$

- $e^{i \cdot 0} = \cos(0) + i \cdot \sin(0) = 1$

- $| e^{i \cdot \phi} | = 1$, der Betrag ist $1$, da der Zeiger die Länge $1$ hat.

Damit können zwei geeignete Wellenfunktionen konstruiert werden:

$$
  \Psi_{1}(x) = \sqrt{p} \cdot e^{i \pi}
$$

und

$$
  \Psi_{2}(x) = \sqrt{q} \cdot e^{i \cdot 0} = \sqrt{q}
$$

Berechnet man die Wahrscheinlichkeiten $P_1(x)$ und $P_2(x)$, findet man die erwartete Wahrscheinlichkeit $P_1(x) = p$ und $P_2(x) = q$, denn es gilt:

$$
  P_1(x) = | \Psi_{1}(x) |^2 = | \sqrt{p} \cdot e^{i \cdot \pi} |^2 = | \sqrt{p} \cdot (-1) |^2 = p \cdot 1 = p 
$$

und 

$$
  P_2(x) = | \Psi_{2}(x) |^2 = | \sqrt{q} \cdot e^{i \cdot 0} |^2 = q \cdot 1 = q 
$$

Addiert man diese Wellenfunktionen (man kombiniert also die Zeiger) und berechnet dann aus der Summe der Wellenfunktionen die Wahrscheinlichkeit für den Ort $x$ mit beiden geöffneten Spalten, dann folgt:

$$
\begin{align}
  P_{12}(x) &= | \Psi_{1}(x) + \Psi_{2}(x) |^2 \\
  &= | \sqrt{p} \cdot e^{i \cdot \pi} + \sqrt{q} \cdot e^{i \cdot 0} |^2 \\
  &= | \sqrt{p} \cdot (-1) + \sqrt{q} \cdot (+1) |^2 \\
  &= | - \sqrt{p} + \sqrt{q} |^2 \\
\end{align}
$$

Wenn $p = q$ ist, dann wäre $| - \sqrt{p} + \sqrt{q} |^2 = 0$.

Wenn man zwei Wellenfunktionen überlagert, die beide bei einem Einzelspaltexperiment eine positive Wahrscheinlichkeit liefern, kann daraus bei der gleichzeitigen Öffnung beider Spalte eine Wahrscheinlichkeit von 0 folgen. 

Das Interferenzbild bei beiden gleichzeitig geöffneten Spalten kann erfolgreich modelliert werden. 

Damit wurde ein mathematisches Modell konstruiert, mit dem man aus der Überlagerung von Wahrscheinlichkeitsamplituden die resultierende Wahrscheinlichkeit "Null" erzeugt werden kann. 

Damit lässt sich das Phänomen "Interferenz von einzelnen Quantenobjekten" am Doppelspalt modellieren. Der Preis dafür ist, dass das mathematische Modell an sich keine reale Bedeutung mehr hat. Erst durch die Kombination von abstrakten Wahrscheinlichkeitswellen und Messoperatoren wird aus den physikalisch bedeutungslosen mathematischen Konstrukten ein Ergebnis, das eine physikalische Bedeutung hat: eine Wahrscheinlichkeit, an einem Schirmort eine Wechselwirkung zu beobachten.

Für die einmalige Durchführung eines Experiments mit einem einzelnen Elektron ist dieser Erfolg recht bedeutungslos, denn ein einzelnes Elektron kann zufällig mit allen Orten auf dem Schirm wechselwirken. Die Erwartungswerte, wie wahrscheinlich eine Wechselwirkung mit einem Schirmort ist (zwischen 0 und 1), wird von der Auswertung der Wahrscheinlichkeitswelle für jeden Ort auf dem Schirm geliefert. 

Erst wenn man das Experiment sehr oft durchgeführt hat und sich alle Wechselwirkungsorte gemerkt hat, beobachtet man ein Schirmbild, das eine Wechselwirkungsverteilung liefert, die der vom mathematischen Modell gelieferten Verteilung ähnlich ist.

An der Uni wird gezeigt, dass der Ausdruck $\cos(\phi) + i \cdot \sin(\phi)$ kurz in der Form $e^{i \cdot \phi}$ geschrieben werden kann, also 

$$
  e^{i \cdot \phi} = \cos(\phi) + i \cdot \sin(\phi)
$$

Damit kann man einen rotierenden Wahrscheinlichkeitszeiger mit Hilfe der Funktion $e^{i \cdot \phi}$ mathematisch modellieren.

</details>

---

### Visualisierung der Wellenfunktion

Die folgende animierte Visualisierung stellt eine rein sinusförmige Wellenfunktion in einer Dimension dar, die ein freies Quantenobjekt modelliert:

- Wegen $\lambda = \frac{h}{p}$ ist der Impuls indirekt proportional zu Wellenlänge. 

- Das Quantenobjekt bewegt sich kräftefrei, so dass die potentielle Energie Null ist.

- Die Geschwindigkeit des Quantenobjekts ist so gering, dass es nichtrelativistisch modelliert werden kann. 

- Damit ist die Phasengeschwindigkeit der Wellenfunktion direkt proportional zum Impuls.

Es gibt zwei Darstellungsarten:

1) **real/imaginär**: Der Realteil der Wellenfunktion (Kosinus) wird orange modelliert und der Imaginärteil der Wellenfunktion (Sinus) wird blau modelliert. Setzt man diese beiden Anteile zusammen wird der rotierende Zeiger modelliert.

![](wellenfkt01.jpg)

2) **Dichte/Phase**: Wenn man das Quadrat des Betrags der Wahrscheinlichkeitswelle berechnet, erhält man die Wahrscheinlichkeitsdichte. Diese wird als Wert über Null angegeben. 

![](wellenfkt02.jpg)

Die Phase des rotierenden Zeigers wird in einer Farbcodierung des optischen Farbspektrums kodiert:

- rot = rein real und positiv

![](phase01.jpg)

- hellgrün = rein imaginär und positiv

![](phase02.jpg)

- cyan = rein real und negativ

![](phase03.jpg)

- lila = rein imaginär und negativ

![](phase04.jpg)

- worauf wieder rot folgt. Die Zwischenfarbwerte modellieren dann die Zwischenphasen.

Da nur eine Sinusfunktion in der Wellenfunktion vorhanden ist, kann dem Quantenobjekt ein bestimmter Impuls zugeordnet werden, für den gilt: $p = \frac{h}{\lambda}$. 

Da die Unbestimmtheit $\Delta p$ des Impulses Null ist, folgt aus der Heisenbergschen Unbestimmtheitsrelation, dass die Unbestimmtheit des Ortes $\Delta x$ unendlich groß sein muss, damit die Unbestimmtheitsrelation $\Delta p \cdot \Delta x \geq h$ erfüllt ist. 

Der Ort des Quantenobjekts ist also vollkommen unbestimmt, weswegen die Wahrscheinlichkeitsdichte überall gleich groß ist.

> Simulation in neuem Fenster starten: <a href="/apps/qp/10_schroeder_qm/sinusodial.html" target="_blank">sinusförmige Wellenfunktion eines Quantenobjekts</a>

<iframe frameborder="0" src="/apps/qp/10_schroeder_qm/sinusodial.html" width="710" height="300" scrolling="no" allowfullscreen></iframe>

Quelle: [Weber State University](https://physics.weber.edu/schroeder/software/)

---

## Visualisierung der Wellenpakete von Quantenobjekten

Die folgende animierte Visualisierung zeigt die zeitliche Entwicklung eines eindimensionalen nicht relativistischen Wellenpakets, das aus der Überlagerung von sinusförmigen Wellenfunktionen entsteht. 

Auf das Quantenobjekt wirken in dem Bereich keine Kräfte. Die Wellenfunktion hat am Rand des Bereichs den Wert Null, so dass das Quantenobjekt in einem Potentialtopf mit unendlich hohen Wänden gefangen ist und die Wellenfunktion des Quantenobjekts am Rand reflektiert wird. Die Simulation löst eine zeitabhängige Schrödinger-Gleichung um die Wellenfunktionen zu modellieren.

> Simulation in neuem Fenster starten: <a href="/apps/qp/10_schroeder_qm/wavepackets.html" target="_blank">Wellenpakete von Quantenobjekten</a>

<iframe frameborder="0" src="/apps/qp/10_schroeder_qm/wavepackets.html" width="720" height="500" scrolling="no" allowfullscreen></iframe>

> Quelle: [Weber State University](https://physics.weber.edu/schroeder/software/)

<details>

  <summary>Experiment 1</summary>
  
**Erzeuge** links ein Wellenpaket, das nach rechts läuft und **beobachte** dessen Veränderung. (Beim Start der App sollte links bereits ein Wellenpaket vorhanden sein, **klicke** dann einfach auf "Weiter".)

**Beobachtung:** Die Lokalisierung des Wellenpakets auf einen begrenzten Raumpaket erzeugt man durch Überlagerung von einer Vielzahl von Sinuswellen. Jede Sinuswelle hat eine eigene Wellenlänge, so dass der Impuls des Wellenpakets unbestimmt ist und bei einer Messung viele mögliche Messwerte bereitstellt, von denen einer zufällig gemessen wird. Aufgrund der Impulsunbestimmtheit "zerfließt" das Wellenpaket im Lauf der Zeit. Bezogen auf unser Gedankenexperiment zu Beginn des Kapitels bedeutet das: je weiter das Elektron von der Quelle entfernt ist, desto größer wird die Fläche auf der man das Elektron wahrscheinlich detektiert.

![](wellenpaket01.jpg)

![](wellenpaket02.jpg)

</details>

<details>

  <summary>Experiment 2</summary>
  
**Füge** bei pausierter Simulation links ein Wellenpaket ein, dessen Geschwindigkeit nach rechts gerichtet ist und **füge** rechts ein Wellenpaket ein, dessen Geschwindigkeit nach links gerichtet ist (Impulsschieberegler nach links stellen), so dass die Wellenpakete sich in der Mitte treffen. **Aktiviere** "Dichte/Phase".

**Beobachtung:** Beide Wellenpakete haben eine Wahrscheinlichkeitsdichte größer als Null. Wenn die beiden Wellenpakete interferieren, können Wahrscheinlichkeitsdichten erzeugt werden, die kleiner sind, als die sich überlagernden Wahrscheinlichkeiten oder auch Null sein können. Die komplexe Phase der Wellenfunktion ermöglicht mathematisch Interferenz zu modellieren.

![](wellenpaket03.jpg)

![](wellenpaket04.jpg)

</details>

<details>

  <summary>Bedienung</summary>
  
- Wenn man **real/imaginär** aktiviert, wird der reale (orange) und imaginäre (blau) Teil des Wellenpakets angezeigt. Der **reale Anteil** zeigt die oszillierende Wahrscheinlichkeitswelle mit einer Amplitude, aus der die Wahrscheinlichkeitsdichte berechnet werden kann. Der **imaginäre Anteil** steht für die Interferenzfähigkeit des Quantenobjekts, bei einer Kombination mit der Wellenfunktion eines anderen Quantenobjekts auch Wahrscheinlichkeitsinterferenzen zu erzeugen, die kleiner sind, als die sich überlagernden Wahrscheinlichkeiten.

- Wenn man **Dichte/Phase** anklickt, wird anstelle der oszillierenden Wahrscheinlichkeitswelle die aus der Amplitude berechnete Wahrscheinlichkeitsdichte angezeigt. Die imaginäre Phase wird farblich kodiert (rot = rein real und positiv; hellgrün = rein imaginär und positiv; cyan = rein real und negativ; lila = rein imaginär und negativ; worauf wieder rot folgt).

- Wenn man die Geschwindigkeit verändert, ändert sich die Geschwindigkeit des Wellenpakets.

- Wenn man mit der Maus in den Wellenbereich klickt, kann man bei gedrückter linker Maustaste die Eigenschaften eines neuen Wellenpakets festlegen. Alternativ kann man die Parameter mit den Schiebereglern festlegen und durch Klick auf **Einfügen** ein neues Wellenpaket erzeugen.

</details>

---

## Video-Empfehlung

- [Quantenmechanik, Schrödingers Katze, Zustand Wellenfunktion](https://www.youtube.com/watch?v=iiNEkfitCVI&list=PLmDf0YliVUvGGAE-3CbIEoJM3DJHAaRzj&index=28)

- [Zeitabhängige Schrödingergleichung, Korrespondenzprinzip, Komplexe Zahlen](https://www.youtube.com/watch?v=hY2AdjYcTro&list=PLmDf0YliVUvGGAE-3CbIEoJM3DJHAaRzj&index=32)

- [Kollaps der Wellenfunktion: Bohmsche Mechanik, Pilot Wave, Multiversen](https://www.youtube.com/watch?v=THu3tWcZnC4&list=PLmDf0YliVUvGGAE-3CbIEoJM3DJHAaRzj&index=34)

---