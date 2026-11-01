## Mach-Zehnder-Interferometer

> **Bezug zum Kerncurriculum:**  
> - Ich kann den Aufbau eines Mach-Zehnder-Interferometers beschreiben.

---

## Aufbau eines MZI

Bei der Modellierung von Experimenten zur Quantenphysik werden Modelle kombiniert:

1. **Wellen-Modell**: Bei bestimmten Experimenten erzeugen Quantenobjekte ein Interferenzmuster auf dem Schirm. Zur Modellierung des Interferenzmusters verwenden wir bei einem solchen Experiment ein Wellenmodell.

2. **Teilchen-Modell**: Bei bestimmten Experimenten wechselwirken Quantenobjekte immer an einem bestimmten Ort und tauschen bestimmte Mengen an Energie und Impuls aus. Zur Modellierung der Wechselwirkung verwenden wir bei einem solchen Experiment ein Teilchenmodell.

3. **stochastisches Modell (Zufall)**: Bei bestimmten Experimenten kann man grundsätzlich nicht genau vorhersagen, wo oder wann ein Quantenobjekt mit einem anderen Quantenobjekt wechselwirken wird. Das grundsätzlich zufällige Verhalten wird mit einem geeigneten Zufalls-Modell modelliert.

4. **welcher-Weg-Modell**: Wenn man bei bestimmten Experimenten eine Messanordnung einbaut, mit der man messen könnte, welchen Weg ein Quantenobjekt von der Quelle zum Schirm genommen hat, verschwindet das Interferenzbild. Das Verschwinden des Interferenzbilds wird mit einem geeigneten Welcher-Weg-Modell modelliert.

Diese Modellierung wird auf ein möglichst einfaches Experiment angewendet, dem **Mach-Zehnder-Interferometer**:

![](mzi01.png)

Im Mach-Zehnder-Interferometer gibt es zwei mögliche Wege mit zwei Detektoren, so dass es zu jedem Detektor maximal zwei mögliche Wege gibt. Damit gibt es an jedem Detektor die minimal mögliche Interferenzsituation mit nur zwei Wegen.

---

## Gedankenexperiment 1: Klassische Teilchen

Die Quelle sendet **klassische Teilchen** aus. Ein "klassisches Teilchen" befindet sich zu jedem Zeitpunkt an einem bestimmten Ort und man kann dem klassischen Teilchen Eigenschaften wie kinetische Energie, Impuls, Masse,... zuordnen. 

Was werden die Detektoren messen?

![](mzi02.png)

**Modellierung der klassischen Teilchen im Mach-Zehnder-Interferometer**:

- Wir nehmen an, dass es an einem **Strahlteiler** eine Wahrscheinlichkeit von 50% gibt, dass das klassische Teilchen am Strahlteiler transmittiert (hindurchfliegt) oder in einem Winkel von 90° reflektiert wird.

- Wir nehmen an, dass das klassische Teilchen an einem **Spiegel** zu 100% in einem Winkel von 90° reflektiert wird.

**Vorhersage der Messung an den Detektoren**:

- Es gibt von der Quelle zu Detektor 1 einen möglichen Weg: wenn das klassische Teilchen am Strahlteiler 1 transmittiert und am Spiegel 2 reflektiert wird, dann erreicht es Detektor 1.

- Es gibt von der Quelle zu Detektor 2 einen möglichen Weg: wenn das klassische Teilchen am Strahlteiler 1 reflektiert und am Spiegel 1 reflektiert wird, dann erreicht es Detektor 2.

- Da der Strahlteiler so gebaut ist, dass die Wahrscheinlichkeit für "transmittiert werden" und "reflektiert werden" jeweils 50% ist, erreichen jeweils 50% der ausgesandten klassischen Teilchen einen der Detektoren. 

In einem zweiten Teilexperiment wird ein **zweiter Strahlteiler** vor den Detektoren eingebaut:

![](mzi03.png)

**Vorhersage der Messung an den Detektoren**:

- Es gibt von der Quelle zu **Detektor 1** zwei mögliche Wege:
    - das Teilchen wird am Strahlteiler 1 transmittiert, am Spiegel 2 reflektiert und am Strahlteiler 2 transmittiert
    - das Teilchen wird am Strahlteiler 1 reflektiert, am Spiegel 1 reflektiert und am Strahlteiler 2 reflektiert

- Es gibt von der Quelle zu **Detektor 2** zwei mögliche Wege:
    - das Teilchen wird am Strahlteiler 1 transmittiert, am Spiegel 2 reflektiert und am Strahlteiler 2 reflektiert
    - das Teilchen wird am Strahlteiler 1 reflektiert, am Spiegel 1 reflektiert und am Strahlteiler 2 transmittiert
    
Dafür, dass ein Teilchen am Strahlteiler reflektiert wird ist die Wahrscheinlichkeit 50%, ebenso für die Wahrscheinlichkeit, dass es transmittiert wird. Die Wahrscheinlichkeit, dass es an den Spiegeln reflektiert wird, ist 100%. 

Die **Wahrscheinlichkeit**, dass ein klassisches Teilchen einen der vier möglichen Wege fliegt, kann mit Hilfe der **Pfadregel** berechnet werden. Die Wahrscheinlichkeit wird für einen Weg berechnet, indem man die Wahrscheinlichkeiten entlang des Wegs multipliziert. Da es in jedem Weg einen Spiegel und zwei Strahlteiler gibt, ist die Wahrscheinlichkeit für jeden Weg gleich groß:

**Wahrscheinlichkeit eines Weges:**
- $P(\text{Weg}) = 0,5 \cdot 1 \cdot 0,5 = 0,25$;

Da es zwei Wege von der Quelle zu **Detektor 1** gibt, kann man die Wahrscheinlichkeit, dass Detektor 1 das Teilchen registriert, ausrechnen, indem man nach der Pfadregel die Wahrscheinlichkeiten für jeden Weg addiert:

- $P(\text{Detektor 1 misst das Teilchen}) = P(\text{Weg 1}) + P(\text{Weg 2}) = 0,25 + 0,25 = 0,5 = 50 \%$

Da es auch zwei Wege von der Quelle zu **Detektor 2** gibt, kann man die Wahrscheinlichkeit, dass Detektor 2 das Teilchen registriert, auf die gleiche Weise ausrechnen:

**Detektor 2:**
- $P(\text{Detektor 2 misst das Teilchen}) = P(\text{Weg 3}) + P(\text{Weg 4}) = 0,25 + 0,25 = 0,5 = 50 \%$

> [!NOTE]
> Damit gilt: die Wahrscheinlichkeit ein klassisches Teilchen zu messen, beträgt auch bei zwei Strahlteilern für jeden Detektor 50%.

---

## Gedankenexperiment 2: Elektromagnetische Wellen

Die Quelle sendet **elektromagnetische Wellen** aus. Als Quelle denken wir uns beim Eingang einen **Laser**, der ein stark fokussiertes Lichtbündel aussendet, bei dem alle Wellenzüge gleiche Frequenz, gleiche Phase und gleiche Amplitude haben und sich geradlinig ausbreiten (zeitlich und räumlich kohärente Wellenzüge).

Wir denken uns die Intensität des ausgesandten Lichts mit 100% und geben die Intensitäten an den Detektoren relativ dazu an.

![](mzi04.png)

Bei einer elektromagnetischen Welle überträgt die Welle kontinuierlich Energie an die Detektoren. Für die Detektoren können wir uns zwei Bauweisen denken:

- Die Welle überträgt einem **idealen Detektor** kontinuierlich Energie und der Detektor misst genau die übertragene Energie.

- In einem **realen Detektor** überträgt die elektromagnetische Welle den Elektronen im Detektor Energie und erst wenn eine bestimmte Mindestmenge an Energie übertragen wurde, wird eine Messung im Detektor ausgelöst. 
  - Ein Detektor hat also eine bestimmte **Messempfindlichkeit**. 
  - Je höher die Intensität der elektromagnetischen Welle ist, desto öfters wird ein Detektor ausgelöst, da entsprechend öfters die Messschwelle überschritten wird. 
  - Die Auslösung eines Detektors ist ein statistischer Prozess und die Detektoren werden zu zufälligen Zeiten ausgelöst. 
  - Manchmal beobachtet man **Koinzidenz**, was bedeutet, dass beide Detektoren etwa zur gleichen Zeit ausgelöst werden. 
  - Je höher die Intensität der elektromagnetischen Welle ist, desto näher liegen die Auslösezeitpunkte der Detektoren beieinander, weswegen beide Detektoren ab einer bestimmten Intensität quasi ständig gleichzeitig messen.

Wenn ein **zweiter Strahlteiler** vor den Detektoren eingebaut wird, werden die Wellenzüge ein zweites Mal aufgeteilt. Dadurch erreichen jeweils zwei Wellenzüge einen Detektor und überlagern sich. Es kommt zur **Interferenz**. Für die Interferenz gilt:

- wenn der Gangunterschied beider Wellenzüge ein ganzzahliges Vielfaches der Wellenlänge ist, beobachtet man am Detektor ein **Maximum**, 

- wenn der Gangunterschied beider Wellenzüge ein ungeradzahliges Vielfaches der halben Wellenlänge ist, beobachtet man am Detektor ein **Minimum**,

- bei anderen Gangunterschieden beobachtet man eine **mittlere Intensität** an einem Detektor, wobei aufgrund des Energieerhaltungssatzes die Summe der Intensitäten der beiden Detektoren gleich der Intensität der Quelle sein muss, wenn wir annehmen, dass auf dem Weg von der Quelle zu den Detektoren keine Energie verloren geht.

![](mzi05.png)

---

### Modellierung der Interferenz

Im Mach-Zehnder-Interferometer befinden sich zwei Strahlteiler, zwei Spiegel und ein Phasenschieber. Diese optischen Bauteile ändern den Gangunterschied zwischen den Wellenzügen. Vereinfachend nehmen wir an, dass jeder der 4 möglichen Wege durch das Mach-Zehnder-Interferometer genau gleich lang ist, so dass der Gangunterschied zwischen den Wellenzügen nur durch die optischen Bauteile verursacht wird.

- An einem **Strahlteiler** wird 50% der Intensität der elektromagnetischen Welle transmittiert und 50% wird reflektiert. Die elektromagnetische Welle teilt sich also in zwei Teilwellen auf. 

- Bei der Reflektion einer Welle an einem Hindernis kann ein **Phasensprung** der reflektierten Oszillation beobachtet werden. Wir denken uns hier Strahlteiler, bei welchen die reflektierte Welle einen Phasensprung von $\tfrac{\pi}{2}$ erfährt. Ein Wellenberg wird dabei im Vergleich zum originalen Wellenzug um eine viertel Wellenlänge verschoben.

- An einem **Spiegel** wird die elektromagnetische Welle zu 100% reflektiert und erfährt bei der Reflexion einen **Phasensprung** von $\pi$. Ein Wellenberg wird dabei um eine halbe Wellenlänge im Vergleich zum originalen Wellenzug verschoben.

- Zusätzlich kann in einen der beiden Wege ein Glasblock mit einer bestimmten Länge gestellt werden (**Phasenschieber**). In Glas ist die Lichtgeschwindigkeit kleiner als in Luft, so dass die optische Weglänge vergrößert wird. Wenn die elektromagnetische Welle am Glasblock transmittiert wird, erfährt sie eine Phasenverschiebung, die von der Länge des Glasblocks abhängt. Damit verschiebt sich ein Wellenberg im Vergleich zum originalen Wellenzug um einen Anteil der Wellenlänge, der von der Länge des Glasblocks abhängt.

Für die Modellierung der Interferenzsituation an einem Detektor wählen wir das Modell eines rotierenden Zeigers, der einem Weg von der Quelle zum Ziel zugeordnet wird. 

Um jeweils die Phase eines virtuellen Zeigers am Interferenzort zu bestimmen, kann man wie folgt vorgehen:

- Man lässt einen Zeiger mit Lichtgeschwindigkeit von der Quelle zum Ziel fliegen. Während der Zeiger unterwegs ist, rotiert er mit der Frequenz der Oszillation eines Oszillators. 

- Sobald der Zeiger am Ziel angekommen ist, stoppt man die Rotation des Zeigers. 

- Das führt man mit beiden Zeigern durch und kennt damit Phase der beiden virtuellen Zeiger am Interferenzort. 

> Simulation in neuem Fenster starten: <a href="/apps/suw/21_interferenzanalyse/interferenzanalyse.html" target="_blank">Interferenzanalyse</a>

<iframe frameborder="0" src="/apps/suw/21_interferenzanalyse/interferenzanalyse.html" width="100%" height="650" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Wähle** mit einem Mausklick einen Interferenzort in der Ebene. **Aktiviere** "Fliegende Zeiger anzeigen". 
  
- **Klicke** auf "Wellenzug aussenden", um zwei Wellenzüge loszuschicken. Die Modellzeiger fliegen vom Sender zum Interferenzort. Am Interferenzort wird der resultierende Zeiger und damit die resultierende Amplitude bestimmt.
  
- **Wiederhole** das Experiment während "Fliegende Zeiger anzeigen" deaktiviert ist. Die Modellzeiger sind ortsfest mit gleichem Modellierungsergebnis.

- **Wiederhole** den Versuch für verschiedene Interferenzorte.

</details>

Die Frequenz von sichtbarem Licht ist in der Größenordnung von $10^{14} \, \text{Hz}$. Diese unvorstellbar schnelle Rotation kann man weder visualisieren, noch sich vorstellen. 

Die Modellierung wird weiter vereinfacht:

- Für jeden Wellenzug denken wir uns am Eingang einen Zeiger. 

- Da wir 4 mögliche Wege durch das Mach-Zehnder-Interferometer haben, denken wir uns 4 Zeiger, die zu Beginn alle die gleiche Phase haben. Die Phasendifferenz zwischen den Zeigern ist also Null. 

- Einen Zeiger denken wir uns statisch und versuchen nur die **Änderung der Phase** des Zeigers relativ zu seiner Anfangsphase zu modellieren.

- Am Interferenzort haben die virtuellen Zeiger je nach experimentellem Aufbau unterschiedliche Phasen. Wir addieren die virtuellen Zeiger vektoriell und können so den resultierenden Zeiger am Interferenzort bestimmen.

- Die Länge des resultierenden Zeigers am Interferenzort ist ein Maß für die **Amplitude** der Oszillation des elektromagnetischen Felds am Interferenzort.

- Das Quadrat der Länge des resultierenden Zeigers ist ein Maß für die **Intensität** am Interferenzort. Wir geben im folgenden die relative Intensität zwischen 0% und 100% an.

---

### Interferenzanalyse im MZI

Vereinfachend gehen wir davon aus, dass die Weglängen aller 4 möglichen Wege im Mach-Zehnder-Interferometer alle genau gleich lang sind, so dass es keinen Gangunterschied aufgrund unterschiedlicher Weglängen gibt.

> Simulation in neuem Fenster starten: <a href="/apps/qp/13_machzehnderzeiger/machzehnderzeiger.html" target="_blank">Interferenzanalyse</a>

<iframe frameborder="0" src="/apps/qp/13_machzehnderzeiger/machzehnderzeiger.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten. **Klicke** auf "Laserwellenzug aussenden" und **beobachte**  die Veränderung der Wellenzugphasen aufgrund von Reflexion und Transmission.

2. **Stelle** eine Phasenverschiebung von $\pi = 3,142$ ein und **beobachte** die Auswirkung auf die Interferenzsituation. **Klicke**  wieder auf "Laserwellenzug aussenden" und **beobachte** die Phasenveränderung der Wellenzüge auf den einzelnen Wegen.

3. **Stelle** eine beliebige Phasenverschiebung zwischen 0 und $\pi$ ein und **beobachte** die Auswirkung auf die Interferenzsituation. **Klicke** wieder auf "Laserwellenzug aussenden" und **beobachte** die Phasenveränderung der Wellenzüge auf den einzelnen Wegen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Wenn der Phasenschieber auf 0 gestellt ist, registriert Detektor 1 **keine Intensität** und Detektor 2 **volle Intensität**. 

Modellierung der Phasenänderung der Zeiger:

- an einem Strahlteiler erfolgt bei Reflexion ein Phasensprung um $\pi/2$ (viertel Drehung) und bei Transmission kein Phasensprung
- an einem Spiegel erfolgt bei Reflexion ein Phasensprung um $\pi$ (halbe Drehung)

Am Detektor 1 ist die Phasendifferenz der virtuellen Zeiger $\pi$, so dass die virtuellen Oszillatoren gegenphasig schwingen. Die resultierende Oszillation hat die Amplitude Null (Minimum).

Am Detektor 2 ist die Phasendifferenz der virtuellen Zeiger Null, so dass die virtuellen Oszillatoren gleichphasig schwingen. Die resultierende Oszillation hat doppelte Amplitude (Maximum).

![](analyse01.jpg)

Das entspricht der Ausgangssituation in der QuVis-Simulation:

![](analyse02.jpg)

**Zu 2.**: Wenn der Phasenschieber auf $\pi = 3,142$ eingestellt ist, registriert Detektor 1 **volle Intensität** und Detektor 2 **keine Intensität**.

Am Detektor 1 ist die Phasendifferenz der virtuellen Zeiger Null, so dass die virtuellen Oszillatoren gleichphasig schwingen. Die resultierende Oszillation hat doppelte Amplitude (Maximum).

Am Detektor 2 ist die Phasendifferenz der virtuellen Zeiger $\pi$, so dass die virtuellen Oszillatoren gegenphasig schwingen. Die resultierende Oszillation hat die Amplitude Null (Minimum).

![](analyse03.jpg)

Das entspricht der Situation in der QuVis-Simulation, wenn der Phasenschieber auf $\pi$ eingestellt ist:

![](analyse04.jpg)

**Zu 3.**: Wenn der Phasenschieber auf einen Wert zwischen 0 und $\pi$ eingestellt ist, registriert jeder Detektor eine **Teilintensität**. In der Simulation wird die relative Intensität dargestellt. Da die Welle in vier Wellenzüge aufgeteilt wird, von denen jeweils zwei an einem Detektor interferieren, muss nach dem Energieerhaltungssatz die Summe der relativen Intensitäten 100% sein, wenn man idealisiert annimmt, dass auf dem Weg keine Energie verloren geht.

![](analyse05.jpg)

Das entspricht der Situation in der QuVis-Simulation, wenn der Phasenschieber auf einen Wert zwischen 0 und $\pi$ eingestellt ist:

![](analyse06.jpg)

</details>

---

## Gedankenexperiment 3: Photonen

Die Quelle sendet **einzelne Photonen** aus. Ein Photon ist ein **Quantenobjekt**:

- ein Elektron in der Quelle **emittiert** ein Photon mit der Energie $E = h \cdot f$.

- ein Elektron in einem der beiden Detektoren **absorbiert** das Photon und registriert das Ereignis. Ein Photon ist nicht teilbar, weswegen man **niemals** eine Koinzidenz (beide Detektoren registrieren zeitgleich ein Photon) beobachtet.

- wenn man viele Photonen hintereinander in die Anordnung schickt, beobachtet man, dass sich die Messergebnisse an den Detektoren bei gleichem Aufbau des Mach-Zehnder-Interferometers den Messergebnissen im Gedankenexperiment 2 annähern. 

- Man kann auch bei einzelnen Photonen **Interferenzphänomene** beobachten. Der Unterschied ist, dass man bei einzelnen Photonen **keine Koinzidenzen** bei den beiden Detektoren beobachtet.

Ein Photon beginnt seine Existenz, wenn es von einem Elektron emittiert wurde. Die einzige Möglichkeit, dass wir ein Photon wahrnehmen können ist, wenn es wieder von einem Elektron absorbiert wurde (in unserem Auge von der Netzhaut, von einem Elektron in einem Lichtsensor, einem Leuchtpunkt auf dem Schirm,...). **Wenn wir ein Photon detektieren, hat es bereits seine Existenz beendet.** Es gibt für uns keine Möglichkeit ein Photon zu beobachten, ohne es zu zerstören!

Wenn man also in den Weg des Photons einen Detektor stellen würde, um zu ermitteln, welchen Weg das Photon von der Quelle zum Ziel genommen hat, dann beenden wir mit dieser Messung die Existenz des Photons. Wir können also keine Aussage darüber machen, wie sich ein Photon in der Zeit zwischen seiner Emission und seiner Absorption verhält, da es keine Möglichkeit gibt, dieses Verhalten zu beobachten. 

Man kann versuchen Hypothesen aufzustellen, was in der Zeit zwischen Emission und Absorption geschieht, aber es werden immer nur Hypothesen bleiben, weil man keine Möglichkeit hat, das Photon zerstörungsfrei zu messen.

Im Jahr 1926 hat **Max Born** einen Vorschlag gemacht, wie man die Interferenzphänomene bei Experimenten mit einzelnen Photonen modellieren kann:

- die **elektromagnetische Welle** wird ersetzt mit einer **Wahrscheinlichkeitswelle**. Die **Wahrscheinlichkeitswelle** existiert nicht real, sondern ist ein mathematisches Objekt, das nur im Gehirn existiert und Zahlen erzeugt, mit denen man vorhersagen kann, mit welcher **Wahrscheinlichkeit** einer der beiden Detektoren ein Photon registriert.

- **Jedem** möglichen Weg des Photons von der Quelle zum Detektor wird eine **Wahrscheinlichkeitswelle** zugeordnet.

- Am Detektor **interferieren** die Wahrscheinlichkeitswellen. Um hervorzuheben, dass die Wahrscheinlichkeitswellen nichts real schwingendes beschreiben, sondern einen Zustand des quantenphysikalischen Systems mathematisch beschreiben, verwendet man statt **Interferenz** das Wort **Superposition** und sagt, dass sich die Wahrscheinlichkeitswellen in **Superposition** befinden.

Modellierung:

- Jedem Weg wird ein Zeiger zugeordnet. Der Zeiger rotiert mit der Frequenz, die dem Photon wegen $E = h \cdot f$ zugeordnet wird. Da diese Frequenz extrem hoch ist, stellen wir uns den Zeiger statisch vor und betrachten nur die **Änderung** seiner Phase relativ zur Anfangsphase beim Eingang.

- Die Länge des Zeigers nennen wir **Wahrscheinlichkeitsamplitude**.

- Wir nehmen an, dass sich alle Wahrscheinlichkeitszeiger beim Eingang des Mach-Zehnder-Interferometers in **gleicher Phase** befinden.

- Die Phase der Zeiger relativ zur Anfangsphase **ändert** sich bei den Strahlteilern, Spiegeln und beim Phasenschieber **genauso** wie beim Modell "elektromagnetische Welle".

- An einem der Detektoren werten wir die **Superposition** der beiden Zeiger aus, indem wir diese vektoriell addieren (Parallelogrammregel). Die Länge des resultierenden Zeigers ist die **resultierende Wahrscheinlichkeitsamplitude** am Detektor. 

- Die **resultierende Wahrscheinlichkeitsamplitude** wird **quadriert**. Das Ergebnis dieser Rechnung ist die **Wahrscheinlichkeit**, das Photon bei diesem Detektor zu messen. 

Wenn man sehr viele einzelne Photonen in das Mach-Zehnder-Interferometer schickt, beobachtet man, dass die Ereignisse an den Detektoren sich der vorhergesagten Wahrscheinlichkeit annähern werden.

---

### Simulation: Einzelne Photonen

> Simulation in neuem Fenster starten: <a href="/apps/qp/14_machzehnderphoton/machzehnderphoton.html" target="_blank">Einzelne Photonen im Mach-Zehnder Interferometer</a>

<iframe frameborder="0" src="/apps/qp/14_machzehnderphoton/machzehnderphoton.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten. **Klicke** auf "EIN Photon aussenden" und **beobachte** die Veränderung der Zeigerphasen aufgrund von Reflexion und Transmission.

2. **Stelle** eine Phasenverschiebung von $\pi = 3,142$ ein und **beobachte** die Auswirkung auf die Superpositionssituation. **Klicke** wieder auf "EIN Photon aussenden" und **beobachte** die Phasenveränderung der Wahrscheinlichkeitszeiger auf den einzelnen Wegen.

3. **Stelle** eine beliebige Phasenverschiebung zwischen 0 und $\pi$ ein und **beobachte** die Auswirkung auf die Superpositionssituation. **Klicke** wieder auf "EIN Photon aussenden" und **beobachte** die Phasenveränderung der Wahrscheinlichkeitszeiger auf den einzelnen Wegen.

</details>

<details>

  <summary>Beobachtungen</summary>

In der Simulation werden Zeigerlängen visualisiert. Die Länge dieser Zeiger muss so gewählt sein, dass das Quadrat der resultierenden Amplitude an den Detektoren tatsächlich die korrekte Wahrscheinlichkeit und nicht einen willkürlichen Prozentwert liefert. Diesen Vorgang nennt man "Normierung der Zeigerlängen".

**Zu 3.**: Wenn der Phasenschieber auf einen Wert zwischen 0 und $\pi$ eingestellt ist, registriert jeder Detektor mit einer bestimmten **Wahrscheinlichkeit** zwischen 0% und 100% ein Photon. Da das Photon sicher von einem der beiden Detektoren registriert wird, ist die Summe der Wahrscheinlichkeiten beider Detektoren 100%.

![](photon03.jpg)

</details>

---

## Experimente mit dem MZI

> Simulation in neuem Fenster starten: <a href="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/photons-particles-waves-de/photons-particles-waves-de.html" target="_blank">Mach-Zehnder-Interferometer</a>

<iframe frameborder="0" src="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/photons-particles-waves-de/photons-particles-waves-de.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

[Quelle: QuVis](https://www.st-andrews.ac.uk/physics/quvis/)

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf den Tab "Anleitung" und dort nacheinander auf die Punkte 1 bis 5. **Lese** jeweils den Text durch.

2. **Klicke** auf den Tab "Simulation", dort auf "Steuerung" und **simuliere** die drei Gedankenexperimente "Klassische Teilchen", "Elektromagnetische Wellen" und "Einzelne Photonen". **Sage** jeweils das Verhalten der beiden Detektoren voraus und **überprüfe** deine Voraussage, indem du "Asymptotische Intensitäten" aktivierst.

</details>

---