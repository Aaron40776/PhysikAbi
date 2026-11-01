## P3.10 Michelson-Interferometer

---

## E01: Messung kleiner Weglängen

**E01.1:** Eine Person in deiner Praktikumsgruppe stellt eine beliebige Wellenlänge ein, ohne dass der Rest der Praktikumsgruppe die Daten sieht. Die gleiche Person verändert dann die Position des Spiegels und notiert die Anzahl H-D-H Übergänge. Den anderen Arbeitsgruppenmitgliedern wird die Wellenlänge und die Anzahl der H-D-H-Übergänge mitgeteilt, die dann die Verschiebung $\Delta d$ des des Spiegels berechnen. Der Aufgabensteller kontrolliert die Ergebnisse. 

Wechselt euch ab!

> Simulation in neuem Fenster starten: <a href="/apps/suw/15_michelsoninterferometer/michelsoninterferometer.html" target="_blank">Michelson-Interferometer</a>

<iframe frameborder="0" src="/apps/suw/15_michelsoninterferometer/michelsoninterferometer.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

## E02: Bestimmung der Brechzahl eines Gases

Die Lichtgeschwindigkeit im Vakuum sei $c$. In einem Gas hat Licht eine geringere Lichtgeschwindigkeit. Das Verhältnis der Lichtgeschwindigkeiten $c_1$ und $c_2$ in zwei verschiedenen Gases (z.B. Gas 1 und Gas 2) nennt man relative Brechzahl $n_\text{Gas 1 zu Gas 2}$ und es gilt 

$$
   n_\text{Gas 1 zu Gas 2} = \frac{c_1}{c_2}
$$

Wenn man den Übergang vom Vakuum zu einem Gas betrachtet mit $c$ als Lichtgeschwindigkeit im Vakuum, dann vereinfacht sich diese Formel zu:

$$
   n_\text{Gas} = \frac{c}{c_\text{Gas}}
$$

Stellt man einen transparenten Gasbehälter in den Lichtweg eines Spiegelarms in einem Michelson-Interferometer, dann ändert ein Gas im Gasbehälter die Lichtgeschwindigkeit auf dieser Strecke. Dadurch benötigt das Laserlicht länger um den Schirm zu erreichen und die optische Weglänge wird dadurch größer. Die Folge ist, dass sich der Gangunterschied zwischen den beiden Wellenzügen verändert und damit auch das Interferenzbild auf dem Schirm.

![](interferometerpraktikum.png)

Eine Anwendungsidee dieses Aufbaus ist die Identifizierung eines unbekannten Gases. Wenn der Brechungsindex eines Gases bei einem bestimmten Druck bekannt ist, dann kann man z.B. die Küvette mit dem Gas auf den bestimmten Druck befüllen. Mit einer Vakuum-Pumpe entfernt man dann das Gas wieder, so dass der Druck auf einen sehr kleinen Wert sinkt. Während des Abpumpens zählt man z.B. die Übergänge Hell-Dunkel-Hell im Interferenzbild des Michelson-Interferometers. Mit einer geeigneten Formel kann man dann den Brechungsindex des eingefüllten Gases berechnen und mit Hilfe der Literaturwerte das eingefüllte Gas identifizieren.

Bevor das so durchgeführt werden kann, muss erst einmal eine geeignete Formel hergeleitet werden. Wenn die Küvette evakuiert ist, bewegt sich das Licht in der Küvette mit der Vakuumlichtgeschwindigkeit $c$, bei einer gefüllten Küvette mit der Geschwindigkeit $c_\text{Gas}$. Für den Zeitunterschied $\Delta t$ gilt dann:

$$
  \begin{align}
    \Delta t &= t_\text{Gas} - t_\text{Vakuum} \\
    \Delta t &= \frac{2 \cdot l}{c_\text{Gas}} - \frac{2 \cdot l}{c_\text{Vakuum}}
  \end{align}
$$

Mit dieser Zeitdifferenz folgt für den optischen Gangunterschied zwischen den Wellenzügen die auf dem Schirm interferieren:

$$
  \begin{align}
    \Delta s &= c_\text{Vakuum} \cdot \Delta t \\
    \Delta s &= c_\text{Vakuum} \cdot \left( \frac{2 \cdot l}{c_\text{Gas}} - \frac{2 \cdot l}{c_\text{Vakuum}} \right)\\
    \Delta s &= 2 \cdot l \cdot \left( \frac{c_\text{Vakuum}}{c_\text{Gas}} - \frac{c_\text{Vakuum}}{c_\text{Vakuum}} \right) \\
    \Delta s &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right)
  \end{align}    
$$

Wenn sich der Wegunterschied $\Delta s$ um die Wellenlänge $\lambda$ ändert, beobachtet man auf dem Schirm einen Übergang von Hell über Dunkel zu Hell oder von Dunkel über Hell zu Dunkel. Bei $N$ gezählten Übergängen gilt also $\Delta s = N \cdot \lambda$.

Damit gilt insgesamt:

$$
  \begin{align}
    \Delta s &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right) \\
    N \cdot \lambda &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right) \\
    n_\text{Gas} - 1 &= \frac{N \cdot \lambda}{2 \cdot l} \\
    n_\text{Gas} &= 1 + \frac{N \cdot \lambda}{2 \cdot l}
  \end{align}    
$$

---

**E02.1:** **Wähle** in der folgenden Simulation ein Gas. Der Druck in der Küvette beim gewählten Gas ist zu Beginn der Simulation 1,01 Bar. **Verringere** den Druck auf 0,01 Bar und **zähle** dabei die Übergänge H-D-H oder D-H-D. **Nutze** die Formel

$$
  n_\text{Gas} = 1 + \frac{N \cdot \lambda}{2 \cdot l}
$$
 
Die Wellenlänge des verwendeten Laser ist $\lambda = 633 \, \text{nm}$ ab. Die Länge der Küvette in der Simulation ist $l = 4 \, \text{cm}$.

**Identifiziere** anhand der Tabelle für alle 8 Füllungen das jeweils eingefüllte Gas. **Dokumentiere** die Messwerte, Rechnung und Zuordnung.

> Simulation in neuem Fenster starten: <a href="/apps/suw/16_gasdetektion/gasdetektion.html" target="_blank">Gas-Detektion</a>

<iframe frameborder="0" src="/apps/suw/16_gasdetektion/gasdetektion.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

## Protokoll

**Erstelle** mit einem Textverarbeitungsprogramm deiner Wahl das Praktikumsprotokoll, **exportiere** es als PDF-Dokument und **gib** es in der vereinbarten Weise ab.

**Benenne** die Datei in der Form: **kursnummer_P1.1_nachname_vorname.pdf**. 

---
