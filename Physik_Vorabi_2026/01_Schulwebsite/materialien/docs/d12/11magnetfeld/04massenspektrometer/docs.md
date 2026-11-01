## Massenspektrometer

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann die Bewegung von freien Elektronen unter Einfluss der Lorentzkraft, unter Einfluss der Kraft im homogenen elektrischen Querfeld, im Wien-Filter beschreiben.
> - Ich kann den prinzipiellen Verlauf der Bahnkurven begründen.
> - Ich kann meine Kenntnisse auf andere geladene Teilchen übertragen.

---

## Wien-Filter

Eine Elektronenstrahlquelle sendet grundsätzlich Elektronen mit unterschiedlichen Geschwindigkeiten aus. Für manche Experimente ist es notwendig, dass Elektronen mit fast gleichen Geschwindigkeiten verfügbar sind. 

Mit einem **Wien-Filter** können Elektronen mit nur einer Geschwindigkeit $v$ aus einem Strahl gefiltert werden:

- Man erzeugt gleichzeitig ein elektrisches und ein magnetisches Feld und überlagert diese.

- Der Elektronenstrahl wird durch die sich überlagernde Felder geschickt.

Beispielsweise könnte das **Magnetfeld** $B$ in die Ebene zeigen und das **elektrische Feld** $E$ aus Sicht der Kraftwirkung auf ein Elektron als negativer Probeladung von unten nach oben gerichtet sein:

![](bfeld_wienfilter01.png)

- Sobald der Elektronenstrahl den Bereich des geladenen Kondensators erreicht, erfährt ein Elektron eine elektrische Kraft $F_{el}$ nach oben, da es vom Minuspol abgestoßen und vom Pluspol angezogen wird. 

- Durch das gleichzeitig im Kondensator vorhandene Magnetfeld erfährt das Elektron nach der Linke-Hand-Regel eine Lorentzkraft $F_L$ nach unten. 

![](bfeld_wienfilter02.png)

> [!NOTE]
>Alle Elektronen, welche mit der betragsgleichen Kraft nach oben und unten abgelenkt werden, können den Wienfilter **geradlinig** durchfliegen (grauer Strahl). 

- Überwiegt die elektrische Kraft $F_{el}$, werden die Elektronen nach **oben abgelenkt** (roter Strahl). 

- Ist der Betrag der Lorentzkraft $F_L$ größer, werden die Elektronen nach **unten abgelenkt** (grüner Strahl).

![](bfeld_wienfilter03.png)

---

### Modellierung

Für die **elektrische Kraft $F_{el}$**, welche im Kondensator auf ein Elektron wirkt, gilt: 

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

> [!NOTE]
>Alle Elektronen mit der Geschwindigkeit $v = \frac{E}{B}$ können den Wienfilter geradlinig durchfliegen. 

Da bei der Herleitung die Ladung $q$ weggefallen ist, gilt diese Formel für alle geladenen Objekte, also auch z.B. Protonen und Ionen.

Die magnetische Flussdichte $B$ kann mit einer **Hallsonde** gemessen werden. Für die elektrische Feldstärke $E$ gilt: $E = \frac{U}{d}$, so dass gilt:

$$
    v = \frac{E}{B} = \frac{U}{d \cdot B}
$$

---

### Simulation: Wienfilter

> Simulation in neuem Fenster starten: <a href="/apps/bfeld/01_wienfilter/wienfilter.html" target="_blank">Wienfilter</a>

<iframe src="/apps/bfeld/01_wienfilter/wienfilter.html" width="100%" height="900" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Starte** die Simulation in einem neuen Fenster, damit für die Simulation mehr Platz auf dem Schirm ist.

2. **Klicke** auf "Elektronenemission an/aus" und **beobachte** die Geschwindigkeiten der Elektronen. Nach der Blende wird der Betrag der Geschwindigkeit angezeigt.

3. **Stelle** den Wert der Spannung am Plattenkondensator ("PK-Spannung") auf ca. 4 V und **beobachte** den simulierten Elektronenstrahl.

4. **Stelle** den Wert der Spannung am Plattenkondensator ("PK-Spannung") wieder auf 0 V und den Wert für die magnetische Flussdichte B auf ca. 0,002 T. **Beobachte** den simulierten Elektronenstrahl.

5. **Stelle** die "Emissionsrate" auf 12, die "PK-Spannung" auf 4,5 V und die "Flussdichte B" auf 0,002 T. **Beobachte** den Elektronenstrahl. 

6. **Verringere** die Blendenöffnung auf 11, so dass nur noch Elektronen mit genau der richtigen Geschwindigkeit die Blende passieren. **Vergleiche** die angezeigte Geschwindigkeit im Kasten "Messdaten" mit der Geschwindigkeit der Elektronen nach der Blende. **Vergrößere** die Emissionsrate um mehr Elektronen mit der gewünschten Geschwindigkeit zu erzeugen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 2.:** Der Betrag der Geschwindigkeit der Elektronen ist sehr verschieden.

![](wienfilter01.png)

**Zu 3.:** Die Elektronen fliegen aufgrund ihrer unterschiedlichen Geschwindigkeiten auf verschiedenen Parabelbahnen.

![](wienfilter02.png)

**Zu 4.:** Die Elektronen fliegen aufgrund ihrer unterschiedlichen Geschwindigkeiten auf verschiedenen Kreisbahnen.

![](wienfilter03.png)

**Zu 5.:** Viele Elektronen werden nach oben oder unten ausgelenkt und werden von der Blende aufgenommen. Die Elektronen, deren Geschwindigkeit etwa dem Quotienten aus elektrischer und magnetischer Feldstärke entspricht ($v = \frac{E}{B}$), können die Blende mittig passieren.

![](wienfilter04.png)

**Zu 6.:** Nur selten hat ein Elektron die genau richtige Geschwindigkeit, um die schmale Blende zu passieren. Wenn man die Emissionsrate erhöht, steigt die Wahrscheinlichkeit Elektronen mit der richtigen Geschwindigkeit zu filtern.

![](wienfilter05.png)

Mit Hilfe eines Wienfilters lässt sich ein Strahl von geladenen Körpern erzeugen, die alle die gleiche Geschwindigkeit haben.

</details>

---

## Massenspektrometer

Wenn geladene Teilchen durch ein Magnetfeld fliegen, das senkrecht zu ihrer Bewegungsrichtung orientiert ist, wirkt auf die geladenen Teilchen eine Lorentzkraft. Die Richtung der Lorentzkraft kann mit einer **Drei-Finger-Regel** bestimmt werden. Dazu spreizt man den Daumen, den Zeigefinger und den Mittelfinger im rechten Winkel zueinander ab: 

- der **Daumen** wird in die **Flugrichtung der geladenen Körper** ausgerichtet,

- der **Zeigefinger** wird in die **Richtung des Magnetfelds** ausgerichtet,

- der **Mittelfinger** zeigt die **Richtung der Lorentzkraft** an.

Für die Bewegung von **negativ** geladenen Körpern im Magnetfeld gilt:

![Linke-Hand-Regel](linke_hand_regel.png)

Für die Bewegung von **positiv** geladenen Körpern im Magnetfeld gilt:

![Rechte-Hand-Regel](rechte_hand_regel.png)

---

### Modellierung

- Für die Lorentzkraft gilt: $F_L = q \cdot v \cdot B$.

- Für die Zentripetalkraft gilt: $F_{ZP} = \frac{m \cdot v^2}{r}$. 

Wenn das Magnetfeld senkrecht zur Bewegungsrichtung der geladenen Teilchen orientiert ist, übernimmt die Lorentzkraft die Rolle einer Zentripetalkraft und zwingt die geladenen Teilchen auf eine Kreisbahn.

Man kann daher Lorentzkraft und Zentripetalkraft gleichsetzen:

$$
\begin{align}
 F_{ZP} &= F_L \\
 \frac{m \cdot v^2}{r} &= q \cdot v \cdot B \\
 r &= \frac{m \cdot v}{q \cdot B}
\end{align}
$$

mit $m$ = Masse des geladenen Teilchens, $v$ = Geschwindigkeit des geladenen Teilchens, $q$ = Ladung des geladenen Teilchens, $B$ = magnetische Flussdichte des Magnetfelds.

Wenn man den Radius der Kreisbahn der geladenen Teilchen mit Hilfe einer geeigneten experimentellen Anordnung misst, kann mit Hilfe dieser Formel für ein geladenes Teilchen:

- die Ladung bestimmt werden, wenn die Masse bekannt ist,

- die Masse bestimmt werden, wenn die Ladung bekannt ist.

Wenn weder die Masse noch die Ladung des geladenen Teilchens bekannt ist, kann der Quotient $\frac{q}{m}$ bestimmt werden. Dieser Quotient wird [**spezifische Ladung**](https://de.wikipedia.org/wiki/Spezifische_Ladung) genannt.

Für die spezifische Ladung gilt also, wenn sich das geladenen Teilchen durch das Magnetfeld des Massenspektrometers (MSM) bewegt:

$$
    \frac{q}{m} = \frac{v}{r \cdot B_\text{MSM}}
$$

Die Geschwindigkeit eines geladenen Teilchens direkt zu messen ist experimentell nur extrem schwer durchzuführen, da die Geschwindigkeiten oft sehr hoch sind. Aus dem Kapitel **Wienfilter** wissen wir, dass man mit Hilfe des Wienfilters durch eine Überlagerung von elektrischem und magnetischen Feld indirekt die Geschwindigkeit messen kann. Es gilt im Wienfilter (WF):

$$
    v = \frac{E}{B} = \frac{U}{d \cdot B_\text{WF}}
$$

Baut man eine experimentelle Anordnung, in welcher man zuerst in einem Wienfilter (WF) geladene Teilchen mit einer bestimmten Geschwindigkeit filtert und diese danach durch ein zweites Magnetfeld fliegen lässt, das unabhängig vom Magnetfeld des Wienfilters ist, kann man damit die spezifische Masse von geladenen Teilchen bestimmen. Eine solche Anordnung nennt man ein **Massenspektrometer** (MSM).

Für die spezifische Ladung in einem Massenspektrometer, bei dem zur Bestimmung der Geschwindigkeit ein Wienfilter vorgeschaltet ist, gilt:

$$
    \frac{q}{m} = \frac{\frac{U}{d \cdot B_\text{WF}}}{r \cdot B_\text{MSM}} = \frac{U}{r \cdot d \cdot B_\text{WF} \cdot B_\text{MSM}}
$$

mit $m$ = Masse des geladenen Teilchens, $q$ = Ladung des geladenen Teilchens, $U$ = Spannung im Kondensator des Wienfilters, $r$ = Radius der Kreisbahn im Massenspektrometer, $d$ = Abstand der Kondensatorplatten im Wienfilter, $B_\text{WF}$ = magnetische Flussdichte im Wienfilter, $B_\text{MSM}$ = magnetische Flussdichte im Massenspektrometer.

---

### Simulation: Massenspektrometer

In der Simulation gibt es 4 Experimente, bei denen Ionen mit unterschiedlichen Eigenschaften in das **Massenspektrometer** (MSM) fliegen. Mit Hilfe eines **Wienfilters** (WF) und eines **Spektrometers** (SM) soll die Eigenschaften der Ionen identifiziert werden. In den 4 Experimenten unterscheiden sich die Ionen in Ladung und/oder Masse und/oder Geschwindigkeit. 

> Simulation in neuem Fenster starten: <a href="/apps/bfeld/02_massenspektrometer/massenspektrometer.html" target="_blank">Massenspektrometer 2</a>

<iframe src="/apps/bfeld/02_massenspektrometer/massenspektrometer.html" width="100%" height="900" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Starte** die Simulation in einem neuen Fenster, damit für die Simulation mehr Platz auf dem Schirm ist.

2. **Stelle** den Abstand zwischen Kondensator und Schirm ("Abstand PK-Schirm") so ein, dass der Raum zwischen Kondensator und Schirm den verfügbaren Bereich auf dem Bildschirm einnimmt und **starte** die Ionenquelle.

3. **Variiere** das elektrische und magnetische Feld im **Wienfilter**, um Ionen mit gleicher Geschwindigkeit herauszufiltern. **Variiere** das Magnetfeld im Spektrometer und **beobachte** die Flugbahnen der Ionen.

4. **Stelle** Hypothesen für die Ionen in Experiment 1-4 auf, wie sich die simulierten Ionen unterscheiden. Zur Überprüfung der Hypothesen kann "Messdaten anzeigen" und "Infos im SM" aktiviert werden.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Experiment 1:** Bei geeignetem elektrischen und magnetischen Feld passieren alle Ionen den Wienfilter. Im Spektrometerbereich werden alle Ionen in die gleiche Richtung abgelenkt und erreichen auf Kreisbahnen mit unterschiedlichem Radius den Detektor.

![](massenspektrometer03.png)

**Experiment 2:** Die Ionen haben offensichtlich unterschiedliche Geschwindigkeiten. Stellt man den Wienfilter geeignet ein, können nur Ionen mit der gleichen Geschwindigkeit den Wienfilter passieren. Alle gefilterten Ionen treffen an der gleichen Stelle auf den Detektor.

![](massenspektrometer05.png)

**Experiment 3:** Bei geeignetem elektrischen und magnetischen Feld passieren alle Ionen den Wienfilter. Im Spektrometerbereich werden die Ionen in verschiedene Richtungen abgelenkt und erreichen auf Kreisbahnen mit unterschiedlichem Radius den Detektor.

![](massenspektrometer07.png)

**Experiment 4:** Die Ionen haben offensichtlich unterschiedliche Geschwindigkeiten. Stellt man den Wienfilter geeignet ein, können nur Ionen mit der gleichen Geschwindigkeit den Wienfilter passieren. Im Spektrometerbereich werden die Ionen in verschiedene Richtungen abgelenkt und erreichen auf Kreisbahnen mit unterschiedlichem Radius den Detektor.

![](massenspektrometer09.png)

</details>

<details>

  <summary>Folgerungen</summary>
  
**Experiment 1:** Da bei geeignetem elektrischen und magnetischen Feld alle Ionen den Wienfilter passieren, haben alle Ionen die gleiche Geschwindigkeit. Da im Spektrometerbereich alle Ionen in die gleiche Richtung abgelenkt werden, ist das Vorzeichen der Ionenladung gleich. Da die Ionenkreisradien verschieden sind, haben die Ionen eine unterschiedliche spezifische Ladung $\frac{q}{m}$.

![](massenspektrometer04.png)

**Experiment 2:** Da nur manche Ionen bei geeignetem elektrischen und magnetischen Feld den Wienfilter passieren, haben die Ionen unterschiedliche Geschwindigkeiten. Da im Spektrometerbereich alle gefilterten Ionen in die gleiche Richtung abgelenkt werden und an der gleichen Stelle den Detektor treffen, ist die spezifische Ladung $\frac{q}{m}$ der Ionen gleich.

![](massenspektrometer06.png)

**Experiment 3:** Da bei geeignetem elektrischen und magnetischen Feld alle Ionen den Wienfilter passieren, haben alle Ionen die gleiche Geschwindigkeit. Da im Spektrometerbereich die gefilterten Ionen in verschiedene Richtungen abgelenkt werden, haben die Ionen unterschiedliche Ladungsvorzeichen. Da die Ionen an unterschiedlichen Stellen den Detektor treffen, haben die Ionen unterschiedliche spezifische Ladungen $\frac{q}{m}$.

![](massenspektrometer08.png)

**Experiment 4:** Da nur manche Ionen bei geeignetem elektrischen und magnetischen Feld den Wienfilter passieren, haben die Ionen unterschiedliche Geschwindigkeiten. Da im Spektrometerbereich die gefilterten Ionen in verschiedene Richtungen abgelenkt werden, haben die Ionen unterschiedliche Ladungsvorzeichen. Da die Ionen an unterschiedlichen Stellen den Detektor treffen, haben die Ionen unterschiedliche spezifische Ladungen $\frac{q}{m}$.

![](massenspektrometer10.png)

</details>

Mit einem Massenspektrometer kann die **spezifische Ladung von Ionen** gemessen werden. 
 
- Kennt man die Ladung eines Ions, kann aus der gemessenen spezifischen Ladung dessen Masse bestimmt werden. 

- Kennt man die Masse eines Ions kann aus der gemessenen spezifischen Ladung die Ladung bestimmt werden.

---