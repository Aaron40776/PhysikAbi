## MZI - Welcher-Weg-Experimente

> **Bezug zum Kerncurriculum:**  
> - Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer mit einzelnen Quantenobjekten unter den Gesichtspunkten Komplementarität und Nichtlokalität interpretieren.

---

## Doppelspalt mit Detektoren

Schickt man nacheinander sehr viele einzelne Quantenobjekte von einer Einzelquantenobjektquelle durch eine geeignete Doppelspaltanordnung auf einen Schirm, beobachtet man, dass ein Quantenobjekt immer an einem bestimmten Ort auf dem Schirm detektiert wird. 

Der Auftreffpunkt eines Quantenobjekts ist zufällig, aber jedem Schirmort kann eine bestimmte Wahrscheinlichkeit zugeordnet werden, das Quantenobjekt zu detektieren. 

Im Lauf der Zeit entsteht das Interferenzbild eines Doppelspalts auf dem Schirm. Ergänzt man die Anordnung mit Detektoren an den Spalten des Doppelspalts und lässt die Detektoren ausgeschaltet, beobachtet man zum Beispiel folgendes Interferenzbild:

![](welcherweg01.png)

Sobald die Detektoren eingeschaltet werden, **verschwindet** das Interferenzbild und es entsteht die interferenzfreie Überlagerung der Bilder zweier Einzelspalte. 

Dabei genügt es nur **einen einzigen** Detektor an einem der Spalte einzuschalten. Das bedeutet: auch wenn das Quantenobjekt nicht gemessen wird, sondern nur **gemessen werden könnte**, verschwindet das Interferenzbild.

![](welcherweg02.png)

Dieses Verhalten ist seltsam:

- Wenn man Detektoren in den Weg von der Quelle zum Schirm stellt und einzelne Quantenobjekte in die Anordnung schickt, detektiert immer nur **ein einziger** Detektor das ausgesandte Quantenobjekt. Quantenobjekte teilen sich nicht auf!

- Wenn man ein Experiment durchführt in welches Detektoren eingebaut sind, welche detektieren können, welchen Weg ein Quantenobjekt von der Quelle zum Schirm genommen hat, dann verschwindet das Interferenzmuster. 

- Wenn man die Detektoren wieder ausschaltet, dann entsteht wieder das Interferenzmuster. 

---

## MZI - Welcher-Weg-Experiment

Experimenteller Aufbau:

- Im Mach-Zehnder-Interferometer gibt es zwei Detektoren und mit Hilfe von Strahlteilern und Spiegeln werden jeweils 2 mögliche Wege von der Quelle zu einem der Detektoren aufgebaut. 

- In einen der Interferometerarme wird ein "Welcher-Weg"-Detektor eingebaut. Diesen denken wir uns als einen **idealen** "Welcher-Weg-Detektor", der ein Photon nicht zerstört, sondern nur detektiert. Einen solchen Detektor gibt es in der Realität nicht, weswegen reale experimentelle Aufbauten komplizierter sind.

- In die Anordnung werden aus einer Ein-Photonen-Quelle einzelne Photonen geschickt. Die Detektoren denken wir uns so empfindlich, dass einzelne Photonen detektiert werden können.

> Simulation in neuem Fenster starten: <a href="/apps/qp/16_welcherweg/welcherweg.html" target="_blank">MZI - Welcher-Weg-Detektor</a>

<iframe frameborder="0" src="/apps/qp/16_welcherweg/welcherweg.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop" und **klicke** auf "EIN Photon aussenden", wenn der Detektor ausgeschaltet ist. **Beobachte** das Experiment.

2. **Schalte** den Welcher-Weg-Detektor ein, indem du auf "Welcher-Weg-Detektor An/Aus" **klickst** und **klicke** dann auf "EIN Photon aussenden", wenn der Detektor eingeschaltet ist. **Beobachte** das Experiment.

</details>

<details>

  <summary>Beobachtung</summary>
  
**Zu 1.**: Wenn der Welcher-Weg-Detektor **ausgeschaltet** ist, kann die Welcher-Weg-Information über das Photon **nicht gemessen** werden. Die **Superposition ist aktiv** und das Experiment wird mit dem **Wellenmodell** modelliert. Die Detektorwahrscheinlichkeiten sind abhängig von der relativen Phase der Wahrscheinlichkeitszeiger am Detektor.

![](welcherweg01.jpg)

**Zu 2.**: Wenn der Welcher-Weg-Detektor **eingeschaltet** ist, kann die Welcher-Weg-Information über das Photon **gemessen** werden. Die **Superposition kollabiert** und das Experiment wird mit dem **Teilchenmodell** modelliert. Die Detektorwahrscheinlichkeiten sind nur abhängig von der 50%-Wahrscheinlichkeit, ob ein Photon an einem Strahlteiler transmittiert oder reflektiert wird.

![](welcherweg02.jpg)

</details>

Wir übertragen Beobachtungen aus realen Experimenten auf unser Gedankenexperiment:

- wenn der Welcher-Weg-Detektor **ausgeschaltet** ist, dann beobachtet man an den Detektoren 1 und 2 **Interferenz**:

    - eine geeignete Modellierung für diese Situation ist das **Wellenmodell**,

    - wir ordnen jedem Weg eine **Wahrscheinlichkeitswelle** zu,

    - die Wahrscheinlichkeitswellen befinden sich in **Superposition** und werden durch **Wahrscheinlichkeitszeiger** modelliert

    - die optischen Bauteile verändern die Phase eines Wahrscheinlichkeitszeigers relativ zur Anfangsphase, nach den Regeln der letzten beiden Kapitel.

    - an jedem Detektor werden die Wahrscheinlichkeitszeiger vektoriell addiert und die Wahrscheinlichkeitsamplitude wird quadriert. Das Ergebnis dieser Rechnung ist die **Wahrscheinlichkeit** ein Photon an diesem Detektor zu detektieren.

- wenn der Welcher-Weg-Detektor **eingeschaltet** ist, dann beobachtet man an den Detektoren 1 und 2 **keine Interferenz**:

    - sobald die Information "welchen Weg nimmt das Photon" mit Hilfe des Detektors **gemessen werden könnte**, kollabiert die Superposition der Wahrscheinlichkeitswellen und das Modell muss gewechselt werden,

    - eine geeignete Modellierung für diese Situation ist das **Teilchenmodell**,

    - wir modellieren das Photon als **Lichtquant**,

    - an einem Strahlteiler gibt es für Transmission und Reflexion jeweils eine Wahrscheinlichkeit von 50%,

    - die Wahrscheinlichkeit ein Photon am Detektor 1 oder Detektor 2 zu detektieren, beträgt nach den Pfadregeln jeweils 50%.

> [!NOTE]
> Das Photon muss nicht tatsächlich vom Welcher-Weg-Detektor gemessen werden, damit die Superposition kollabiert und das Modell gewechselt werden muss. Es genügt, dass der Detektor eingeschaltet ist. Wenn der Detektor eingeschaltet ist und kein Photon detektiert, bevor das Photon von Detektor 1 oder 2 detektiert wurde, haben wir auch damit die Information gewonnen, dass das Photon den anderen Weg gegangen ist.
>
> Wenn der Detektor ausgeschaltet ist, macht es keinen Sinn über einen Weg zu sprechen, den das Photon genommen hat. Über das, was das Photon in der Zeit zwischen der Emission und der Aborption macht, können wir dann keine Aussage machen.

Die **Messung** oder genauer die **mögliche Messung** wird in der Quantenphysik zum untrennbaren Bestandteil eines Experiments und muss bei der Modellierung berücksichtigt werden.

---

## Photon-MZI Komplementarität

- Wenn das Experiment so präpariert ist, dass eine Welcher-Weg-Information **nicht** gemessen werden kann, bleibt die Superposition der Wahrscheinlichkeitswellen erhalten und das **Wellen-Modell** findet Anwendung. Eine Modellierung dieses Experiments mit einem Teilchen-Modell ist nicht möglich.

- Wenn das Experiment so präpariert ist, dass eine Welcher-Weg-Information gemessen werden könnte, kollabiert die Superposition der Wellenfunktionen. Das Photon muss bei Welcher-Weg-Entscheidungen mit einem geeigneten **Teilchen-Modell** modelliert werden (50% an jedem Strahlteiler). Eine Modellierung dieses Experiments mit einem Wellen-Modell ist nicht möglich.

---

## Quanten-Bomben-Test

In ein Mach-Zehnder-Interferometer wird im unteren Weg eine "Quanten-Bombe" platziert, die bereits bei der Wechselwirkung mit einem einzigen Photon "explodiert". Eine Quanten-Bombe kann **funktionsfähig** oder **defekt** sein. Wenn sie defekt ist, kann sie kein Photon absorbieren. 

Du sollst entscheiden, ob eine Bombe funktionsfähig oder defekt ist, indem du nur die Detektoren beobachtest. 

Wenn du dir über den Zustand einer Bombe sicher bist, soll:

- die Bombe recycelt werden, wenn sie defekt ist. Setze dazu die Quanten-Bombe mit der Maus auf das linke Fließband,

- die Quanten-Bombe als funktionsfähig gekennzeichnet werden, wenn sie funktionsfähig ist. Setze dazu die Quanten-Bombe mit der Maus auf das rechte Fließband. 

> Simulation in neuem Fenster starten: <a href="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/quantum-bomb-game-de/quantum-bomb-game-de.html" target="_blank">Quanten-Bomben-Test</a>

<iframe frameborder="0" src="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/quantum-bomb-game-de/quantum-bomb-game-de.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

[Quelle: QuVis](https://www.st-andrews.ac.uk/physics/quvis/)

<details>

  <summary>Lösungsvorschlag</summary>
  
**Theorie zum Experiment:**

**Fall 1**: Es befindet sich **keine** Quanten-Bombe im Weg:

- die Welcher-Weg-Information kann nicht gemessen werden, weswegen sich ein **Wellenmodell** zur Modellierung des Experiments eignet

- die dem Photon zugeordneten Wellenfunktionen für den oberen und unteren Weg befinden sich in Superposition. 

- das Photon ist auf dem Weg von der Quelle zu den Detektoren nicht lokalisiert.

- **Phasenanalyse bei Detektor 1**:
    - Weg 1: Transmission bei Strahlteiler 1, Reflexion bei Spiegel 1, Reflexion bei Strahlteiler 2, also $0 + \pi + \frac{\pi}{2} = \frac{3 \pi}{2}$
    - Weg 2: Reflexion bei Strahlteiler 1, Reflexion bei Spiegel 2, Transmission bei Strahlteiler 2, also $\frac{\pi}{2} + \pi + 0 = \frac{3 \pi}{2}$
    - Die Phasendifferenz der Wahrscheinlichkeitszeiger bei Detektor 1 ist $\frac{3 \pi}{2} - \frac{3 \pi}{2} = 0$. Die virtuellen Wahrscheinlichkeitszeiger sind gleichphasig, also beobachtet man ein **Maximum**: **das Photon wird immer detektiert**.

- **Phasenanalyse bei Detektor 2**:
    - Weg 3: Reflexion bei Strahlteiler 1, Reflexion bei Spiegel 2, Reflexion bei Strahlteiler 2, also $\frac{\pi}{2} + \pi + \frac{\pi}{2} = 2 \pi$
    - Weg 4: Transmission bei Strahlteiler 1, Reflexion bei Spiegel 2, Transmission bei Strahlteiler 2, also $0 + \pi + 0 = \pi$
    - Die Phasendifferenz der Wahrscheinlichkeitszeiger bei Detektor 2 ist $2 \pi - \pi = \pi$. Die virtuellen Wahrscheinlichkeitszeiger sind gegenphasig, also beobachtet man ein **Minimum**: **das Photon wird nie detektiert**.

**Fall 2**: Es befindet sich eine Quanten-Bombe im Weg, die **defekt** ist. 

Eine defekte Quanten-Bombe wechselwirkt **nicht** mit einem Photon. Die Modellierung ist die gleiche wie in Fall 1, da man mit einer defekten Quanten-Bombe keine "Welcher-Weg-Information" messen kann.

**Fall 3**: Es befindet sich eine Quanten-Bombe im Weg, die **funktionsfähig** ist. 

- wenn die Quanten-Bombe explodiert, dann wurde das Photon von der Quanten-Bombe absorbiert und hat seine Existenz beendet. Das Photon kann keinen der Detektoren 1 oder 2 mehr erreichen.

- wenn die funktionsfähige Quanten-Bombe nicht explodiert, dann hat man die **Welcher-Weg-Information** gewonnen, dass das Photon nicht mit der Quanten-Bombe wechselgewirkt hat und die Superposition kollabiert

- da die Superposition kollabiert ist, eignet sich zur Modellierung ein Teilchenmodell

- **Wahrscheinlichkeitsanalyse bei Detektor 1**:
    - Weg 1: 50% Wahrscheinlichkeit für Transmission bei Strahlteiler 1 und 50% Wahrscheinlichkeit für Reflexion bei Strahlteiler 2 liefert 25% Wahrscheinlichkeit für Detektor 1
    - Weg 2: ist nicht möglich, da sonst die Quanten-Bombe explodiert

- **Wahrscheinlichkeitsanalyse bei Detektor 2**:
    - Weg 3: 50% Wahrscheinlichkeit für Transmission bei Strahlteiler 1 und 50% Wahrscheinlichkeit für Transmission bei Strahlteiler 2 liefert insgesamt 25% Wahrscheinlichkeit für Detektor 2
    - Weg 4: ist nicht möglich, da sonst die Quanten-Bombe explodiert

- Die funktionsfähige Quanten-Bombe explodiert mit 50% Wahrscheinlichkeit, da am Strahlteiler 1 die Wahrscheinlichkeit für eine Reflexion 50% ist und das Photon daher in 50% der Fälle im unteren Weg detektiert wird.

**Durchführung des Experiments:**

Wenn man eine Quanten-Bombe in das Mach-Zehnder-Interferometer einsetzt, ist nicht bekannt, ob die Quanten-Bombe funktionsfähig oder defekt ist. Du sollst aus der Beobachtung der Detektoren schließen, ob eine Bombe funktionsfähig oder defekt ist:

**Fall 1:** Der Detektor 2 kann nur dann ein Photon detektieren, wenn die Superposition kollabiert ist. Das ist dann der Fall, wenn die Quanten-Bombe **funktionsfähig** ist. Wenn Detektor 2 aufleuchtet, weiß man sicher, dass die Quanten-Bombe funktionsfähig ist. Dann sollte man die Bombe auf das rechte Fließband setzen.

**Fall 2:** Wenn Detektor 1 ein Photon detektiert, dann kann die Quanten-Bombe sowohl defekt, als auch funktionsfähig sein:

- Wenn man beliebig oft ein Photon in die Anordnung schickt und immer Detektor 1 das Photon detektiert, dann weiß man sicher, dass die Quanten-Bombe defekt ist, da die Superposition aktiv ist.

- Wenn die Quanten-Bombe funktionsfähig ist, wird mit einer Wahrscheinlichkeit von 25% der Detektor 1 ein Photon detektieren. Mit einer Wahrscheinlichkeit von 25% wird Detektor 2 das Photon detektieren und mit einer Wahrscheinlichkeit von 50% wird die Quanten-Bombe explodieren.

Wenn bei einer funktionstüchtigen Bombe fortlaufend Photonen in die Anordnung geschickt werden, dann sinkt die Wahrscheinlichkeit, dass bei jedem Photon der Detektor 1 aufleuchtet, mit jedem Photon auf 25% des vorherigen Werts.

Wenn bei einer funktionstüchtigen Bombe also $n$ Photonen in die Anordnung geschickt werden, dann ist die Wahrscheinlichkeit, dass immer Detektor 1 aufleuchtet gleich $0,25^n$:

| n | 1 | 2 | 3 | 4 | 5 | 
|-|-|-|-|-|-|
| P(D1 leuchtet immer) | 0,25 = 25 %| 0,063 = 6,3 % | 0,016 = 1,6 % | 0,004 = 0,4 % | 0,001 = 0,1 % | 

Wenn man vier Mal hintereinander ein Photon in die Anordnung schickt, dann ist bei einer funktionstüchtigen Bombe die Wahrscheinlichkeit, dass immer nur Detektor 1 aufleuchtet, kleiner als 1%. Die Bombe kann guten Gewissens recycelt werden.

</details>

---

## Quanten-Bomben-Test - Komplementarität

- Wenn das Experiment so präpariert ist, dass eine Wechselwirkung mit der Bombe ausgeschlossen ist (keine Bombe, defekte Bombe), bleibt die Superposition der Wahrscheinlichkeitswellen erhalten und das **Wellen-Modell** findet Anwendung. Das Photon kann vor den Detektoren nicht **lokalisiert** werden.

- Wenn das Experiment so präpariert ist, dass die Wechselwirkung des Photons mit der Bombe gemessen werden **könnte**, kollabiert die Superposition der Wellenfunktionen für die beiden möglichen Wege. Das Photon muss bei welcher Weg-Entscheidungen mit einem geeigneten **Teilchen-Modell** modelliert werden (50% an jedem Strahlteiler). Das Photon kann vor den Detektoren **lokalisiert** werden, indem festgestellt wird, ob das Photon mit der Bombe wechselgewirkt hat (unterer Weg) oder nicht (oberer Weg).

---
