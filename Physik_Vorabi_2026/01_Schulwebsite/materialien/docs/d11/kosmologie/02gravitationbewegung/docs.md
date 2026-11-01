## Simulation des fallenden Apfels

Mit dem Newtonschen Gravitationsgesetz und der Einsicht, dass eine Kraft den Bewegungszustand eines Körpers ändert, kann man das Verhalten der Himmelskörper vorhersagen. 

Die Bewegung unter dem Einfluss von Gravitation kann berechnet werden. Vor der Zeit moderner Computer war dieses Unterfangen unsäglich aufwändig. Berechnungen mussten monatelang von Hand durchgeführt werden. Computer verkürzen heute die Zeit für notwendige Berechnungen auf einen Bruchteil der früher dafür benötigten Zeit.

In diesem Kapitel wird der freie Fall eines Apfel modelliert, mit der Annahme, dass sich während des Falls die Gravitation nicht messbar ändert.

---

### Schritt 1: Apfel fällt mit konstanter Geschwindigkeit

Die Erde wird als Rechteck dargestellt und der Apfel durch einen Kreis.

- **Downloade** das Programm [jg11_wpk_fallender_apfel_01.p5xml](/docs/d11/kosmologie/02gravitationbewegung/jg11_wpk_fallender_apfel_01.p5xml ':ignore') und **öffne** es im [p5js-Blockly-Editor](https://www.informatik.gym-wst.de/apps/p5jsblocklyeditor).

- **Erweitern** Sie das Programm so, dass der Apfel mit konstanter Geschwindigkeit auf die Erde fällt.

![Apfel und Erde](apfel01.png)

Aus dem Physikunterricht ist die Formel für die Geschwindigkeit bekannt:

$$
  v = \frac{s}{t}
$$

Wenn der Apfel von einer Startposition seine Bewegung startet die nicht Null ist, dann addiere den während der Zeit zurückgelegten Weg zur Startposition.

---

### Schritt 2: Apfel fällt mit konstanter Beschleunigung

Löst man die Formel $ v = \frac{s}{t} $ nach dem Weg $s$ auf, so folgt:

$$
  s = v \cdot t
$$

Legt man für alle beteiligten Größen Variablen fest und vergrößert den Wert der Zeitvariablen in jedem Frame um 1, dann kann die Bewegung des Apfels mit konstanter Geschwindigkeit modelliert werden: 

- **Downloade** das Programm [jg11_wpk_fallender_apfel_02.p5xml](/docs/d11/kosmologie/02gravitationbewegung/jg11_wpk_fallender_apfel_02.p5xml ':ignore') und **öffne** es im [p5js-Blockly-Editor](https://www.informatik.gym-wst.de/apps/p5jsblocklyeditor).

- **Erweitere** das Programm so, dass der Apfel mit konstanter **Beschleunigung** auf die Erde fällt.

![Apfel fällt mit konstanter Geschwindigkeit](apfel02.png)

Aus dem Physikunterricht sind die Formeln für eine beschleunigte Bewegung bekannt:

$$
  a = \frac{v}{t}
$$

$$
  s = 0.5 \cdot a \cdot t^2
$$

Wenn der Apfel von einer Startposition seine Bewegung startet die nicht Null ist, dann addiere die den während der Zeit zurückgelegten Weg zur Startposition.

<details>

  <summary>Lösungsvorschlag</summary>
  
- [jg11_wpk_fallender_apfel_03.p5xml](/docs/d11/kosmologie/02gravitationbewegung/jg11_wpk_fallender_apfel_02.p5xml ':ignore')

</details>

---

## Übung: Freier Fall im Sonnensystem

- **Erweitere** die Simulation so, dass im direkten Vergleich nebeneinander der freie Fall simuliert wird, wie dieser bei gleichem Zeitraffer auf mind. 5 Himmelskörpern unseres Sonnensystems beobachtet werden könnte. 

- **Beschrifte** jeden Apfel mit dem Namen des solaren Himmelskörpers und der dortigen Fallbeschleunigung. 

Die Daten für die Fallbeschleunigung auf verschiedenen Planeten im Sonnensystem gibt es in der Formelsammlung.

---