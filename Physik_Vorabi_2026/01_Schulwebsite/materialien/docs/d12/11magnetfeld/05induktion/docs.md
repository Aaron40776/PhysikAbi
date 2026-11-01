## Induktion

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann die Erzeugung einer Induktionsspannung qualitativ mithilfe des magnetischen Flusses beschreiben.
> - Ich führe einfache qualitative Experimente zur Erzeugung einer Induktionsspannung durch.
> - Ich kann das Induktionsgesetz in differenzieller Form auf vorgegebene lineare und sinusförmige Verläufe von 𝛷 anwenden.
> - Ich kann den Verlauf von t-U-Diagrammen für lineare und sinusförmige Änderungen von 𝛷 begründen.
> - Ich kann geeignete Versuche bzw. Diagramme zur Überprüfung des Induktionsgesetzes auswerten. 
> - Ich kann technische Bezüge hinsichtlich der Erzeugung von Wechselspannung darstellen.

---

## Induktion im geraden Leiter

In einem geraden Stück Metall befinden sich frei bewegliche Elektronen. Bewegt man einen Leiter der Länge $d$ mit der Geschwindigkeit $v$ senkrecht zu einem Magnetfeld mit der magnetischen Flussdichte $B$, dann wirkt auf die Elektronen im Leiter die Lorentzkraft $F_L$, mit $F_L = e \cdot v \cdot B$: 

- Die Elektronen werden aufgrund der wirkenden Lorentzkraft im Fall der folgenden Skizze nach links verschoben. 

- Am linken Ende baut sich also ein Elektronenüberschuss auf, am rechten Ende des Leiters ein Elektronenmangel. 

- Dadurch entsteht im Leiter ein elektrisches Feld $E$, in dem auf ein Elektron die elektrische Kraft $F_\text{el}$ wirkt. 

- Die Ladungsverschiebung erfolgt im Leiter solange, bis die Lorentzkraft $F_L$ und die elektrische Kraft $F_\text{el}$ im Gleichgewicht sind. In dieser Gleichgewichtssituation kann man zwischen den Enden des Leiters eine Spannung messen, die als **Induktionsspannung** $U_\text{ind}$ bezeichnet wird.

![Induktion im Leiter](induktion_leiter.png)

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

In einem Leiterstück der Länge $d$, das sich senkrecht zu einem Magnetfeld mit der magnetischen Flussdichte $B$ mit der Geschwindigkeit $v$ bewegt, wird eine Spannung $U_\text{ind}$ induziert und es gilt:
 
$$
   U_\text{ind} = B \cdot v \cdot d
$$

---

## Induktion in einer bewegten Leiterschleife

In einer Leiterschleife wird eine Spannung induziert, wenn sich nur eine der beiden Schleifensegmente im Magnetfeld bewegt:

- Im **unteren Segment** wirkt die Lorentzkraft auf die Elektronen, die sich deswegen im Leiter bewegen. 

- Dadurch wird im **oberen Segment** die Elektronendichte größer als im unteren Segment. 

- Der Ladungsunterschied kann mit dem Voltmeter gemessen werden. Im oberen Segment bildet sich ein **Minuspol**, im unteren ein **Pluspol**.

![Induktion in einer Leiterschleife 01](induktion_leiterschleife_01.png)

Bewegen sich sowohl das obere als auch das untere Segment im Magnetfeld, dann wirkt sowohl im oberen als auch im unteren Segment die Lorentzkraft mit gleichem Betrag und in beiden Fällen nach links gerichtet:

- Die Kraftwirkung im oberen Segment und die im unteren Segment **heben sich gegenseitig auf**, so dass vor und nach dem Voltmeter die Elektronendichte gleich ist. 

- Es wird **keine induzierte Spannung** gemessen.

![Induktion in einer Leiterschleife 02](induktion_leiterschleife_02.png)

Verlässt das untere Segment das Magnetfeld, dann wirkt nur im oberen Segment, das sich noch im Magnetfeld bewegt, die Lorentzkraft auf die Elektronen:

- Die Elektronendichte im oberen Segment ist kleiner als im unteren, so dass eine induzierte Spannung gemessen werden kann. 

- Im oberen Segment bildet sich ein **Pluspol**, im unteren ein **Minuspol**. 

- Das **Vorzeichen** der Induktionsspannung hat sich geändert.

![Induktion in einer Leiterschleife 03](induktion_leiterschleife_03.png)

Da nur in dem Fall eine induzierte Spannung auftritt, wenn sich allein das obere oder allein das untere Segment durch das Magnetfeld bewegt, kann die Formel für die Induktion im geraden Leiter angewendet werden:

$$
    U_\text{ind} = B \cdot v \cdot d
$$

Geometrisch kann die Bewegung des Leiterstücks der Länge $d$ mit der Geschwindigkeit $v$ in einen Zusammenhang mit der Bewegung der Leiterschleife gebracht werden, indem man $v \cdot d$ als Änderung der Fläche $\Delta A$ der vom Magnetfeld durchsetzten Fläche während der Zeit $\Delta t$ auffasst:

- Dabei ist $v = \frac{\Delta s}{\Delta t}$ und $\Delta s \cdot d = \Delta A$. 

Wenn sich die vom Magneten durchsetzte Fläche der Leiterschleife nicht mehr ändert, befindet sich die Leiterschleife vollständig im Magnetfeld und es wird keine Spannung mehr induziert. Es gilt also:

$$
    v \cdot d = \frac{\Delta s}{\Delta t} \cdot d = \frac{\Delta s \cdot d}{\Delta t} = \frac{\Delta A}{\Delta t}
$$

Die induzierte Spannung $U_\text{ind}$ der Leiterschleife, die senkrecht von einem Magnetfeld mit der magnetischen Flussdichte $B$ durchsetzt wird, kann wie folgt berechnet werden:
 
$$
   U_\text{ind} = B \cdot v \cdot d = B \cdot \frac{\Delta A}{\Delta t}
$$

Wenn man die Anzahl der Leiterschleifen erhöht, so dass eine Spule entsteht, wird in jeder einzelnen Windung die gleiche Spannung induziert, so dass eine Spule als Reihenschaltung von $N$ Windungen aufgefasst werden kann. Für die induzierte Spannung gilt dann:

$$
  U_\text{ind} = N \cdot B \cdot \frac{\Delta A}{\Delta t}
$$

Wenn die senkrecht vom Magnetfeld durchsetzte Fläche zunimmt, dann hat die Induktionsspannung ein **anderes Vorzeichen**, als wenn die vom Magnetfeld senkrecht durchsetzte Fläche abnimmt.

**Heinrich Lenz** hat 1834 erstmals untersucht, wie die Induktionsspannung gerichtet ist. Er erkannte, dass der Energieerhaltungssatz erfüllt sein muss und das funktioniert bei Induktionsphänomenen nur, wenn die durch eine Induktionsspannung hervorgerufene Wirkung der Ursache der Induktion entgegengerichtet ist.

Es gilt nach der **Lenzschen Regel**:

$$
  U_\text{ind} = - N \cdot B \cdot \frac{\Delta A}{\Delta t}
$$

---

### Simulation: Induktion bei veränderlichem Magnetfeld

Quelle: [PhET](https://phet.colorado.edu/de/simulation/faradays-law)

<iframe src="https://phet.colorado.edu/sims/html/faradays-law/latest/faradays-law_de.html" width="100%" height="600" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Bewege** den Magneten unterschiedlich schnell relativ zur Spule. **Beobachte** die induzierte Spannung.

2. **Ändere** die Windungsanzahl der Spule. **Beobachte** die induzierte Spannung bei der Veränderung des Magnetfelds in der Spule.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.:** Je schneller der Magnet relativ zur Spule bewegt wird, desto größer ist der Betrag der induzierten Spannung. Anders gesagt: je größer die Änderungsrate des Magnetfelds in der Spule ist, desto größer ist der Betrag der induzierten Spannung.

**Zu 2.:** Je mehr Windungen die Spule hat, desto größer ist der Betrag der induzierten Spannung bei gleicher Änderungsrate des Magnetfelds in der Spule.

</details>

---

## Induktionswirkung

Bei einer ruhenden Spule sind die Elektronen in der Spule nicht in Bewegung:

- Wenn die ruhende Spule in einem ruhenden Magnetfeld platziert wird, beobachtet man keine Lorentzkraft.

Setzt man sich gedanklich auf ein Elektron, das sich in der Spule befindet, dann können folgende Situationen auftreten:

- Man dreht die Spule im Magnetfeld, so dass sich ein Elektron senkrecht zum Magnetfeld bewegt. Das Elektron erfährt eine Lorentzkraft.

- Man ändert das Magnetfeld in der Nähe der Spule so, dass die Änderung der Situation aus Sicht des Elektrons genauso ist, als würde das Elektron bewegt werden.

Da man aus Sicht des Elektrons nicht entscheiden kann, ob das Elektron bewegt wird oder ob das Magnetfeld geändert wird, muss in beiden Fällen eine Lorentzkraft auf das Elektron wirken. Entscheidend für die Beobachtung einer Lorentzkraft ist nur, dass sich ein Elektron **relativ zu einem Magnetfeld bewegt**. Dabei kann man 3 Situationen beobachten, in denen eine Lorentzkraft beobachtet wird:

- das Elektron bewegt sich aus Sicht eines Beobachters senkrecht zu einem aus Sicht des Beobachters ruhenden Magnetfelds,

- das Magnetfeld ändert sich relativ zu einem aus Sicht des Beobachters ruhenden Elektrons auf die gleiche Weise, als würde das Elektron sich senkrecht zum Magnetfeld bewegen,

- sowohl das Elektron bewegt sich aus Sicht des Beobachters senkrecht zum Magnetfeld und gleichzeitig ändert sich das Magnetfeld aus Sicht des Beobachters relativ zum Elektron.

Diese Erkenntnis kann man verallgemeinern:

Wenn sich in einer Spule mit $N$ Windungen und der Querschnittsfläche $A$ die magnetische Flussdichte $B$ ändert, dann wird in der Spule die Spannung $U_\text{ind}$ induziert und es gilt unter Berücksichtigung der Lenzschen Regel:
 
$$
  U_\text{ind} = - N \cdot \frac{\Delta B}{\Delta t} \cdot A
$$

---

## Induktionsgesetz

Für die Induktionsspannung in einer Spule mit $N$ Windungen, die sich senkrecht zu einem Magnetfeld der Feldstärke $B$ mit der Geschwindigkeit $v$ bewegt, gilt:

$$
    U_\text{ind} = - N \cdot B \cdot \frac{\Delta A}{\Delta t}
$$

Für die Induktionsspannung in einer Spule mit $N$ Windungen und der Fläche $A$, in der sich das Magnetfeld ändert gilt:

$$
  U_\text{ind} = - N \cdot \frac{\Delta B}{\Delta t} \cdot A
$$

Man kann sich jetzt eine Situation vorstellen, in der sich sowohl die von einem Magnetfeld durchsetzte Fläche, als auch die magnetische Flussdichte ändert. Die Kombination beider Formeln beschreibt die neue Situation:

$$
  U_\text{ind} = - N \cdot B \cdot \frac{\Delta A}{\Delta t} - N \cdot \frac{\Delta B}{\Delta t} \cdot A
$$

Falls sich die vom Magnetfeld durchsetzte Fläche und das Magnetfeld nicht linear ändern, wird die Änderung nicht mehr mit der durchschnittlichen Änderungsrate $\frac{\Delta A}{\Delta t}$ bzw. $\frac{\Delta B}{\Delta t}$ angegeben, sondern allgemeiner mit der momentanen Änderungsrate $\frac{d A}{d t}$ bzw. $\frac{d B}{d t}$.

Damit kann man das **Induktionsgesetz** wie folgt formulieren:

 $$
  U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t} - N \cdot \frac{d B}{d t} \cdot A = - N \cdot \left( B \cdot \frac{d A}{d t} + \frac{d B}{d t} \cdot A \right)
$$

Ein Bestreben der PhysikerInnen ist es, komplizierte Formeln möglichst kurz darzustellen. Auch das Induktionsgesetz lässt sich weiter zusammenfassen.

Aus dem Mathematikunterricht wissen Sie, dass die momentane Änderungsrate $\frac{d A}{d t}$ bzw. $\frac{d B}{d t}$ als Ableitung aufgefasst werden kann. 

Im Fall der **Flächenänderung** beschreibt man die wirksame Fläche als eine Funktion $A(t)$ in Abhängigkeit von der Zeit $t$ mit der Ableitung $A'(t) = \frac{d A}{d t}$. Die Ableitung nach der Zeit $t$ wird in der Physik wie folgt abgekürzt: $A'(t) = \frac{d A}{d t} = \dot A$.

Im Fall der **Magnetfeldänderung** beschreibt man die magnetische Flussdichte als eine Funktion $B(t)$ in Abhängigkeit von der Zeit $t$ mit der Ableitung $B'(t) = \frac{d B}{d t}$. Auch hier wird die Ableitung nach der Zeit $t$ wie folgt abgekürzt: $B'(t) = \frac{d B}{d t} = \dot B$.

Also kann das Induktionsgesetz wie folgt geschrieben werden:

$$
  U_\text{ind} = - N \cdot \left( B \cdot \dot A + \dot B \cdot A \right)
$$

Aus dem Mathematikunterricht kennen Sie die Produktregel für die Ableitung eines Produktes:

$$
 (u \cdot v)' = u' \cdot v + u \cdot v'
$$

Die rechte Seite der Produktregel hat die gleiche Struktur wie die rechte Seite des Induktionsgesetzes, so dass das Induktionsgesetz wie folgt geschrieben werden kann:

$$
  U_\text{ind} = - N \cdot \left( B \cdot \dot A + \dot B \cdot A \right) = - N \cdot \left( B \cdot A \right)' = - N \cdot \frac{d (B \cdot A)}{d t}
$$

Für das Produkt $B \cdot A$ haben die PhysikerInnen die Bezeichnung **Magnetischer Fluss** $\Phi$ eingeführt.

Damit kann das Induktionsgesetz weiter geschrieben werden als:

$$
  U_\text{ind} = - N \cdot \frac{d (B \cdot A)}{d t} = - N \cdot \frac{d \Phi}{d t} = - N \cdot \dot \Phi
$$

Das ist kurz! Sie sehen hier, wie PhysikerInnen einen komplizierten physikalischen Sachverhalt in einer ultrakurzen Formel beschreiben. Um die Formel zu verstehen, benötigen Sie aber viele Jahre mathematische und physikalische Ausbildung. 

Das **Induktionsgesetz ausführlich**:
 
$$
  U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t} - N \cdot \frac{d B}{d t} \cdot A
$$

Das **Induktionsgesetz ultrakurz**:
 
$$
  U_\text{ind} = - N \cdot \frac{d \Phi}{d t} = - N \cdot \dot \Phi
$$

---

## Generator

Unsere moderne Gesellschaft ist ohne **elektrische Energieversorgung** nicht vorstellbar. Es gibt viele unterschiedliche Methoden, um andere Energieformen in elektrische Energie umzuwandeln. Eine davon basiert auf der elektromagnetischen Induktion, nämlich die elektrische Stromerzeugung mit einem **Generator**. 

Die grundlegende Funktionsweise eines Generators lässt sich aus dem Induktionsgesetz ableiten:

$$
  U_\text{ind} = - N \cdot \dot \Phi = - N \cdot \frac{d \Phi}{d t} = - N \cdot \frac{d (B \cdot A)}{d t} = - N \cdot \left( B \cdot \dot A + \dot B \cdot A \right) = - N \cdot B \cdot \frac{d A}{d t} - N \cdot \frac{d B}{d t} \cdot A
$$

- Aus dem ersten Summanden des ausgeschriebenen Induktionsgesetzes: $U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t}$ folgt direkt, dass eine Induktionsspannung erzeugt werden kann, wenn sich die vom Magnetfeld senkrecht durchsetzte Fläche einer Spule **ändert**. 

- Wenn also eine Spule mit $N$ Windungen und einer von den Windungen umgebenen Fläche $A$ sich in einem Magnetfeld mit der magnetischen Flussdichte $B$ dreht, dann wird bei dieser Bewegung eine Induktionsspannung der Stärke $U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t}$ induziert. 

- Wenn sich das Magnetfeld, in dem die Spule rotiert, nicht ändert, bleibt der zweite Summand Null, denn es gilt $\frac{d B}{d t} = 0$.

---

### Simulation: Generator

> Simulation in neuem Fenster starten: <a href="/apps/bfeld/04_generator/generator.html" target="_blank">Generator</a>

<iframe src="/apps/bfeld/04_generator/generator.html" width="100%" height="700" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Messung Start/Pause" und **lasse** die simulierte Messung ablaufen (20 s). 

2. **Aktiviere** "Lorentzkraft-Vektor anzeigen" und "Geschw.-Komponente anzeigen". **Beobachte** die Bewegung der rotierenden Spule und die Veränderung der Vektoren.

3. **Bewege** mit gedrückter linker Maustaste die Maus über die Messkurve und **beobachte** das Verhalten der Tangente an die Messkurve.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 2.:** Die Komponente des Geschwindigkeitsvektors, die senkrecht zum Magnetfeld gerichtet ist, wird periodisch größer und kleiner. Wenn sich die Spulenwindung **parallel** zu den magnetischen Feldlinien bewegt, ist die **Lorentzkraft** und damit die Induktionsspannung **minimal**. 

![](generator01.png?resize=500)

Wenn sich die **Spulenwindung** senkrecht zu den Magnetfeldlinien bewegt, ist die **Lorentzkraft** und damit die Induktionsspannung **maximal**.

![](generator02.png?resize=500)

**Zu 3.:** Wenn sich die senkrecht vom Magnetfeld durchsetzte Fläche maximal **ändert**, ist die Induktionsspannung maximal.

![](generator03.png?resize=500)

Wenn sich die senkrecht vom Magnetfeld durchsetzte Fläche minimal **ändert**, ist die Induktionsspannung minimal.

![](generator04.png?resize=500)

</details>

Wenn eine Spule mit $N$ Windungen und eine von den Windungen umgebene Fläche $A$ so in einem Magnetfeld der magnetischen Flussdichte $B$ rotiert, dass das Magnetfeld die Spulenfläche senkrecht durchsetzt, dann wird bei der Rotation der Spule eine **Induktionsspannung** induziert. 

Die Induktionsspannung ist umso größer, je extremer sich die senkrecht vom Magnetfeld durchsetzte Fläche ändert. Für die Induktionsspannung gilt:
 
$$
  U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t}
$$

mit:

- $N$ = Anzahl der Windungen,
- $A$ = maximal vom Magnetfeld senkrecht durchsetzte Fläche, 
- $B$ = magnetische Flussdichte, $\frac{d A}{d t}$ = zeitliche Änderung der senkrecht vom Magnetfeld durchsetzten Fläche.

---

## Transformator

In einem Großkraftwerk wird eine Spannung von 10000 bis 20000 V von den Generatoren erzeugt. Beim Endkunden im Haushalt stehen 230 V zur Verfügung und beim Transport vom Kraftwerk zum Endkunden wird die Spannung mehrmals transformiert, um die Energie möglichst verlustfrei zu übertragen.

Wenn man ein Handy aufladen möchte, sind die 230 V Spannung aus der Steckdose zu hoch. Dem Akku würde zu viel Energie pro Elektron zugeführt werden, er würde zu stark erhitzen und schließlich zerstört werden. Daher muss die Spannung von 230 V auf 5 V **transformiert** werden. Gleichzeitig wird im Handyladegerät aus einer Wechselspannung mit 50 Poländerungen pro Sekunde eine Gleichspannung gemacht.

Diese Spannungstransformationen werden mit Hilfe von **Transformatoren** erreicht. Die grundlegende Funktion eines **Transformators** lässt sich aus dem Induktionsgesetz ableiten:

$$
  U_\text{ind} = - N \cdot \dot \Phi = - N \cdot \frac{d \Phi}{d t} = - N \cdot \frac{d (B \cdot A)}{d t} = - N \cdot \left( B \cdot \dot A + \dot B \cdot A \right) = - N \cdot B \cdot \frac{d A}{d t} - N \cdot \frac{d B}{d t} \cdot A
$$

Aus dem zweiten Summanden des ausgeschriebenen Induktionsgesetzes: $U_\text{ind} = - N \cdot \frac{d B}{d t} \cdot A$ folgt direkt, dass eine Induktionsspannung erzeugt werden kann, wenn sich das Magnetfeld in einer Spule **ändert**. 

Wenn sich also in einer Spule mit $N$ Windungen und einer von den Windungen umgebenen Fläche $A$ das Magnetfeld ändert, wird eine Induktionsspannung der Stärke $U_\text{ind} = - N \cdot \frac{d B}{d t} \cdot A$ induziert. 

Wenn sich die Fläche der Spule nicht ändert, bleibt der erste Summand Null, denn es gilt $\frac{d A}{d t} = 0$. 

---

### Simulation: Transformator

> Simulation in neuem Fenster starten: <a href="/apps/bfeld/05_transformator/transformator.html" target="_blank">Transformator</a>

<iframe src="/apps/bfeld/05_transformator/transformator.html" width="100%" height="800" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Messung Start/Pause" und **lasse** die simulierte Messung ablaufen (10 s). 

2. **Bewege** mit gedrückter linker Maustaste die Maus über die Messkurve und **beobachte** das Verhalten der Tangente an die Messkurve.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 2.:** Wenn sich die **magnetische Flussdichte** im Eisenkern maximal ändert, ist die Induktionsspannung in der Sekundärspule **maximal**.

![](trafo01.png?resize=500)

Wenn sich die **magnetische Flussdichte** im Eisenkern minimal ändert, ist die Induktionsspannung in der Sekundärspule **minimal**.

![](trafo02.png?resize=500)

</details>

Wenn sich in einer Sekundärspule mit $N$ Windungen und einer von den Windungen umgebenen Fläche $A$ die magnetische Flussdichte $B$ ändert, wird in der Sekundärspule eine **Induktionsspannung** induziert.

Damit sich das Magnetfeld ständig ändert, muss an die Primärspule eine **Wechselspannung** angelegt werden. 

Die Induktionsspannung ist umso größer, je extremer sich die magnetische Flussdichte ändert. Für die Induktionsspannung gilt:
 
$$
  U_\text{ind} = - N \cdot \frac{d B}{d t} \cdot A
$$

mit:

- $N$ = Anzahl der Windungen,
- $A$ = maximal vom Magnetfeld senkrecht durchsetzte Fläche,
- $B$ = magnetische Flussdichte, $\frac{d B}{d t}$ = zeitliche Änderung der magnetischen Flussdichte.

Die angelegte Wechselspannung $U_\text{NG}$ erzeugt ein zeitlich periodisch veränderliches in seiner Richtung wechselndes Magnetfeld $B$, das in beiden Spulen eine Spannung induziert. Man misst in der Primärspule eine Spannung $U_P$, mit: 

$$
  U_P(t) = - N_{1} \cdot A \cdot \frac{d B(t)}{d t}
$$

und in der Sekundärspule misst man eine Spannung $U_S$, mit: 

$$
  U_S(t) = - N_{2} \cdot A \cdot \frac{d B(t)}{d t}
$$

Für die Spannung in der Sekundärspule gilt insgesamt: 

$$
  U_S(t) = \frac{N_2}{N_1} \cdot U_P(t)
$$

Man transformiert die Wechselspannung in der Sekundärspule auf eine höhere Spannung, wenn die Anzahl der Windungen in der Sekundärspule größer ist als die Anzahl der Windungen in der Primärspule und umgekehrt.

Ein Transformator funktioniert nur mit **Wechselspannung**, da sich das Magnetfeld nach dem Induktionsgesetz ständig **ändern** muss, damit eine Spannung induziert werden kann.

---