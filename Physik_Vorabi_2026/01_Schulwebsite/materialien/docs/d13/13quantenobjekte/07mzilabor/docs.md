## MZI-Einzelphotonenlabor

> **Bezug zum Kerncurriculum:**  
> - Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer mit einzelnen Quantenobjekten unter den Gesichtspunkten Komplementarität und Nichtlokalität interpretieren.

---

## Aufgaben 

Wir denken uns ein ideales Mach-Zehnder-Interferometer:

- Alle Wege zwischen Photonenquelle und Detektoren sind exakt gleich lang.
- Jedes Photon erreicht einen der Detektoren.

In der Simulation erfolgt die Änderung der Phase gegen den Uhrzeigersinn:

- An einem **Strahlteiler** ändert sich die relative Phase des Wahrscheinlichkeitszeigers bei einer Reflektion um $\tfrac{\pi}{2}$, also um eine viertel Drehung. Bei einer Transmission bleibt die relative Phase unverändert.

- An einem **Spiegel** ändert sich die relative Phase des Wahrscheinlichkeitszeigers um $\pi$, also um eine halbe Drehung.

- In einem **Glasblock** (Phasenschieber) ändert sich die relative Phase um den angegebenen Wert.

**Aufgabe 1**: Die Detektionswahrscheinlichkeit am **Detektor 1** soll 100% betragen, wobei beide Phasenschieber einen von Null verschiedenen Wert haben sollen.

**Aufgabe 2**: Die Detektionswahrscheinlichkeit am **Detektor 2** soll 100% betragen, wobei beide Phasenschieber einen von Null verschiedenen Wert haben sollen.

**Aufgabe 3**: Die Detektionswahrscheinlichkeit am **Detektor 1** soll 50% betragen und die Detektionswahrscheinlichkeit am **Detektor 2** soll 50% betragen, wobei beide Phasenschieber einen von Null verschiedenen Wert haben sollen.

**Aufgabe 4**: Die Detektionswahrscheinlichkeit am **Detektor 1** soll 15% betragen und die Detektionswahrscheinlichkeit am **Detektor 2** soll 85% betragen, wobei beide Phasenschieber einen von Null verschiedenen Wert haben sollen.

**Aufgabe 5**: Die Detektionswahrscheinlichkeit am **Detektor 1** soll 40% betragen und die Detektionswahrscheinlichkeit am **Detektor 2** soll 70% betragen, wobei beide Phasenschieber einen von Null verschiedenen Wert haben sollen.

> Simulation in neuem Fenster starten: <a href="/apps/qp/15_mzi_einzelphotonenlabor/mziphotonenlabor.html" target="_blank">MZI - Einzel-Photonenlabor</a>

<iframe frameborder="0" src="/apps/qp/15_mzi_einzelphotonenlabor/mziphotonenlabor.html" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Lösungsvorschlag</summary>
  
**Zu A1**: Wenn Detektor 1 alle Photonen detektieren soll (100% Wahrscheinlichkeit), müssen die Wahrscheinlichkeitszeiger bei Detektor 1 gleichphasig sein und die Wahrscheinlichkeitszeiger bei Detektor 2 müssen gegenphasig sein. Eine mögliche Lösung ist: Phasenschieber 1 = 1.25 x Pi, Phasenschieber 2 = 0.25 x Pi.

![](aufgabe01.jpg)

**Zu A2**: Wenn Detektor 2 alle Photonen detektieren soll (100% Wahrscheinlichkeit), müssen die Wahrscheinlichkeitszeiger bei Detektor 2 gleichphasig sein und die Wahrscheinlichkeitszeiger bei Detektor 1 müssen gegenphasig sein. Eine mögliche Lösung ist: Phasenschieber 1 = 0,25 x Pi, Phasenschieber 2 = 2,25 x Pi.

![](aufgabe02.jpg)

**Zu A3**: Wenn die Detektionswahrscheinlichkeit am **Detektor 1** 50% betragen soll und die Detektionswahrscheinlichkeit am **Detektor 2** 50% betragen soll, müssen die resultierenden Wahrscheinlichkeitszeiger bei Detektor 1 und bei Detektor 2 die gleiche Länge haben. Eine mögliche Lösung ist: Phasenschieber 1 = 0,5 x Pi, Phasenschieber 2 = 1 x Pi.

![](aufgabe03.jpg)

**Zu A4**: Wenn die Detektionswahrscheinlichkeit am **Detektor 1** 15% betragen soll und die Detektionswahrscheinlichkeit am **Detektor 2** 85% betragen soll, muss das Quadrat der Länge des resultierenden Wahrscheinlichkeitszeigers bei Detektor 1 den Wert 0,15 liefern und das Quadrat der Länge des resultierenden Wahrscheinlichkeitszeigers bei Detektor 2 muss den Wert 0,85 liefern. Eine mögliche Lösung ist: Phasenschieber 1 = 0,5 x Pi, Phasenschieber 2 = 0,75 x Pi.

![](aufgabe04.jpg)

**Zu A5**: Die Aufgabe ist nicht lösbar. Ein Photon wird immer nur an einem der Detektoren detektiert. Daher muss die Summe der Wahrscheinlichkeiten von Detektor 1 und 2 immer gleich 100% sein. In der Aufgabenstellung ist die Summe 110%, weswegen die Aufgabe nicht lösbar ist.

</details>

---

## Herausforderungen

In der Simulation erfolgt die Änderung der Phase gegen den Uhrzeigersinn:

- An einem **Strahlteiler** ändert sich die relative Phase des Wahrscheinlichkeitszeigers bei einer Reflektion um $\pi/2$, also um eine viertel Drehung. Bei einer Transmission bleibt die relative Phase unverändert.

- An einem **Spiegel** ändert sich die relative Phase des Wahrscheinlichkeitszeigers um $\pi$, also um eine halbe Drehung.

- In einem **Glasblock** (Phasenschieber) ändert sich die relative Phase um den angegebenen Wert.

**Aufgabe 1**: **Klicke** auf "Optischer Tisch 1" und dann auf alle Fragezeichen, um dich mit dem Aufbau des virtuellen Mach-Zehnder-Interferometers vertraut zu machen. **Beachte**, dass hier Strahlteiler verwendet werden, bei denen ein Phasensprung von $\pi$ bei der Reflektion erfolgt.

**Aufgabe 2**: **Klicke** auf "Optischer Tisch 2" und **versuche** bei einer eingestellten Konfiguration die Detektionswahrscheinlichkeit der beiden Detektoren vorherzusagen.

**Aufgabe 3**: **Klicke** auf "Herausforderungen" und **löse** die Aufgaben.

> Simulation in neuem Fenster starten: <a href="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/single-photon-lab-de/single-photon-lab-de.html" target="_blank">Experimente mit einzelnen Photonen</a>

<iframe frameborder="0" src="https://www.st-andrews.ac.uk/physics/quvis/de/simulations/sims/single-photon-lab-de/single-photon-lab-de.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

[Quelle: QuVis](https://www.st-andrews.ac.uk/physics/quvis/)

<details>

  <summary>Lösungsvorschlag</summary>
  
**Zu Aufgabe 3.1**: 

![](herausforderung01.jpg)

**Zu Aufgabe 3.2**:

![](herausforderung02.jpg)

**Zu Aufgabe 3.3**:

![](herausforderung03.jpg)

**Zu Aufgabe 3.4**:

![](herausforderung04.jpg)

**Zu Aufgabe 3.5**:

![](herausforderung05.jpg)

</details>

---