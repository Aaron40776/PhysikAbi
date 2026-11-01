## Michelson-Interferometer

> **Bezug zum Kerncurriculum:**  
> - Ich kann Interferenzphänomene für folgende „Zwei-Wege-Situationen“ beschreiben und deuten: Michelson-Interferometer.  
> - Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden.
> - Ich kann die technische Verwendung des Michelson-Interferometers zum Nachweis kleiner Längenänderungen erläutern.
> - Ich kann ein Experiment zur Bestimmung der Wellenlänge mit dem Michelson-Interferometer beschreiben.

---

## Aufbau eines Michelson-Interferometers

Licht ist eine elektromagnetische Welle. Wenn man eine Lichtquelle nutzt, die kohärentes Licht aussendet (alle Wellenzüge haben gleiche Frequenz, gleiche Amplitude und eine feste Phasenbeziehung), kann man zwei Wellenzüge des Lichts an einem Ort interferieren lassen und beobachtet dort Maxima und Minima, je nachdem wie groß der Gangunterschied der Wellenzüge ist.

Die von den meisten Lichtquellen ausgesandten Wellenzüge sind nicht kohärent, denn die Lichtquelle sendet die Wellenzüge in unregelmäßigen Zeitabständen aus, die Intensität und damit die Amplitude schwankt zufällig und es werden meistens gleichzeitig sehr unterschiedliche Frequenzen ausgesendet. 

Ein Beispiel für eine Lichtquelle, die nicht kohärentes Licht aussendet, ist eine Glühbirne. Schickt man die nicht kohärenten Wellenzüge einer Glühbirne auf einen Punkt, beobachtet man dort keine Maxima oder Minima, denn die Wellenzüge sind zu verschieden.

Ein **Laser** ist eine Lichtquelle, die in guter Näherung kohärentes Licht aussendet. In einem **Michelson-Interferometer** teilt man einen vom Laser ausgesandten Wellenzug mit Hilfe eines Strahlteilers (50% werden nach oben reflektiert und 50% gehen gerade durch) auf und schickt diese dann mit Hilfe von Spiegeln auf zwei verschiedenen Wegen auf einen Schirm. Auf dem Schirm interferieren die beiden Wellenzüge. 

![](michelson01.png)

> Bei der Reflektion am Strahlteiler oder an den Spiegeln erfährt der reflektierte Wellenzug einen Phasensprung um 180° = $\pi$ (aus einem Wellenberg wird bei der Reflektion ein Wellental). Es gibt verschiedene Bauweisen für Spiegel und Strahlteiler mit unterschiedlichen Phasensprüngen, wir modellieren hier die Reflektion immer mit einem Phasensprung von 180° = $\pi$.

Man beobachtet folgende Interferenzsituationen auf dem Schirm:

- Wenn der **Wegunterschied** der beiden Wellenzüge ein **ganzzahliges Vielfaches der Wellenlänge** ist, dann beobachtet man auf dem Schirm ein **Maximum**, der Schirm ist am Interferenzort **hell**. 

- Ist der **Wegunterschied** der beiden Wellenzüge ein **ungeradzahliges Vielfaches der halben Wellenlänge**, dann beobachtet man ein **Minimum** auf dem Schirm, der Schirm ist am Interferenzort **dunkel**. 

- Für andere Wegunterschiede beobachtet man eine mittlere Helligkeit auf dem Schirm.

Den Wegunterschied zwischen den beiden Wellenzügen kann man mit Hilfe eines beweglichen Spiegels einstellen.

![](michelson01.png)

Das entscheidende Kriterium für die Interferenzsituation auf dem Schirm ist beim Michelson-Interferometer der vom Licht zurückgelegte Weg. 

Das in der Schule verwendete Laserlicht eines Helium-Neon-Lasers hat eine Wellenlänge von $633 \, \text{nm} = 633 \cdot 10^{-9} \, \text{m}$. 

Für den Zusammenhang zwischen der Lichtgeschwindigkeit $c = 299 792 458 \rm{\frac{m}{s}}$, der Wellenlänge $\lambda$ und der Frequenz $f$ gilt:

$$
  c = \lambda \cdot f
$$

Für die Frequenz des Laserlichts gilt dann:

$$
  f = \frac{c}{\lambda} = \frac{299 792 458 \, \frac{\text{m}}{\text{s}}}{633 \cdot 10^{-9} \, \text{m}} = 4,736 \cdot 10^{14} \, \text{Hz}
$$

Die Wellenzüge des Laserlichts bewegen sich also extrem schnell, die Wellenlänge in einem Wellenzug ist extrem kurz und die Oszillation ist extrem schnell.

Um die Interferenzsituation zu modellieren, wird im Folgenden das **Zeigermodell** verwendet:

- Jedem Wellenzug wird ein virtueller Zeiger mit einer bestimmten Länge zugeordnet. Die Länge steht für die Amplitude der Schwingung der Welle.

- Sobald ein Wellenzug seinen Weg zum Interferenzort begonnen hat, beginnt der zugeordnete Zeiger mit der Frequenz der Welle zu rotieren.

- Sobald ein Wellenzug am Interferenzort angekommen ist, stoppt der zugeordnete Zeiger seine Rotation.

- Wenn beide Wellenzüge am Interferenzort angekommen sind, also beide Zeiger aufgehört haben zu rotieren, wird mit Hilfe der Parallelogrammregel aus den beiden virtuellen Zeigern die Position und Länge des resultierenden Zeigers ermittelt.

Am Interferenzort können folgende Situationen beobachtet werden:

- Wenn die Länge des resultierenden Zeiger etwa doppelt so groß ist, wie die eines virtuellen Zeigers beobachtet man am Interferenzort ein **Maximum**. 

- Wenn die Länge des resultierenden Zeigers etwa Null ist, beobachtet man am Interferenzort ein **Minimum**.

- Sonst beobachtet man eine mittlere Amplitude A und damit eine mittlere Intensität I ($I \sim A^2$).

---

### Simulation

Der Laser sendet einen Wellenzug aus, der am Strahlteiler aufgeteilt wird. Die Wellenzüge werden in der Simulation durch rote Kreise symbolisiert, denn das Laserlicht mit einer Wellenlänge von 633 nm sehen wir als **rotes Licht**. Die roten Kreise zeigen an, wie sich die Wellenzüge ausbreiten.

Für die Simulation wird die Situation in extremer Zeitlupe modelliert:

- In der Realität bewegt sich das rote Laserlicht mit der Lichtgeschwindigkeit ($c = 299 792 458 \rm{\frac{m}{s}}$). In der Simulation wird die Bewegung extrem verlangsamt simuliert, so dass man dem Licht bei seiner Ausbreitung zusehen kann. 

- In der Realität oszilliert die elektromagnetische Welle mit $10^{14} \, \text{Hz}$. In der Simulation rotieren die den Wellenzügen zugeordneten virtuellen Zeiger extrem verlangsamt, so dass man sie beobachten kann. 

> Simulation in neuem Fenster starten: <a href="/apps/suw/15b_michelsonzeiger/michelsonzeiger.html" target="_blank">Interferenz am Michelson-Interferometer</a>

<iframe frameborder="0" src="/apps/suw/15b_michelsonzeiger/michelsonzeiger.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten und **klicke** auf "Laserwellenzug aussenden". **Beobachte** die Bewegung der Kreise, welche die Wellenzüge modellieren und die Rotation der zugeordneten Zeiger.  

2. **Verändere** die Verschiebung des beweglichen Spiegels, damit die Weglänge des rechten Wellenzugs verlängert wird. **Beobachte** die Auswirkung auf die Interferenzsituation am Schirm. 

3. **Suche** systematisch einen mathematischen Zusammenhang bei den Verschiebungen des beweglichen Spiegels, für die beiden Interferenzsituationen **Maximum** und **Minimum**. 

</details>

<details>

  <summary>Beobachtungen</summary>
  

**Zu 1.**: Die virtuellen Zeiger springen bei der Reflektion an einem Spiegel oder bei der Reflektion am Strahlteiler um eine halbe Umdrehung (Phasensprung um 180° oder $\pi$). Jeder virtuelle Zeiger rotiert mit einer konstanten Frequenz solange, bis der Wellenzug am Interferenzort (Schirm) angekommen ist. Am Schirm modelliert der resultierende Zeiger die Interferenzsituation eines Maximums, da der Weg beider Wellenzüge genau gleich lang war.

![](michelson02.jpg)

**Zu 2.**: Wenn die beiden Wellenzüge unterschiedliche Weglängen haben, beobachtet man je nach Wegunterschied ein Minimum, eine mittlere Intensität oder ein Maximum. 

mittlere Intensität:
![](michelson03.jpg)

Minimum:
![](michelson04.jpg)

Maximum:
![](michelson05.jpg)

**Zu 3.**: Bei einer Verschiebung des beweglichen Spiegels um die Strecke $\Delta d$ wird der vom Wellenzug zurückgelegte Weg um $2 \cdot \Delta d$ länger, da man den Weg zum verschobenen Spiegel hin und wieder zurück berücksichtigen muss. Wenn die Verschiebung $\Delta d$ ein **Vielfaches der halben Wellenlänge** ist, dann ist der Wegunterschied der beiden Wellenzüge ein Vielfaches der Wellenlänge und man beobachtet auf dem Schirm ein **Maximum**.

Wenn die Verschiebung $\Delta d$ ein **ungeradzahliges Vielfaches einer viertel Wellenlänge** ist, dann ist der Wegunterschied der beiden Wellenzüge ein ungeradzahliges Vielfaches einer halben Wellenlänge und man beobachtet auf dem Schirm ein **Minimum**.

</details>

Bei einer Verschiebung des beweglichen Spiegels um die Strecke $\Delta d$ wird der vom Wellenzug zurückgelegte Weg um $2 \cdot \Delta d$ länger, da man den Weg zum verschobenen Spiegel hin und wieder zurück berücksichtigen muss. 

Wenn die Verschiebung $\Delta d$ ein **Vielfaches der halben Wellenlänge** ist, dann ist der Wegunterschied der beiden Wellenzüge ein Vielfaches der Wellenlänge und man beobachtet auf dem Schirm ein **Maximum**.
 
Wenn die Verschiebung $\Delta d$ ein **ungeradzahliges Vielfaches einer viertel Wellenlänge** ist, dann ist der Wegunterschied ein ungeradzahliges Vielfaches einer halben Wellenlänge und man beobachtet auf dem Schirm ein **Minimum**.

---

## Messung kleiner Längenänderungen im Michelson-Interferometer

Die Wellenlänge des Laserlichts ist extrem klein (633 nm). Im Vergleich dazu ist es nicht möglich, den vom Licht tatsächlich zurückgelegten Weg zu messen, damit man den Wegunterschied der beiden Wellenzüge bestimmen kann.

In einem realen Experiment betrachtet man deswegen nicht den **Wegunterschied** der beiden Wellenzüge. Man betrachtet nur den **relativen Unterschied** der zurückgelegten Wege der beiden Wellenzüge und nennt diesen den **Gangunterschied** $\Delta s$ der Wellenzüge:

- Man stellt die Verschiebung des beweglichen Spiegels so ein, dass man auf dem Schirm ein **Maximum** beobachtet. 

- Sobald man auf dem Schirm ein Maximum sieht, kennt man zwar den von den beiden Wellenzügen zurückgelegten Weg nicht, weiß aber sicher, dass in dieser Spiegelposition der **Wegunterschied** der beiden Wellenzüge ganz genau ein Vielfaches der Wellenlänge ist.

- Den Wegunterschied legt man auf Null fest und nennt ihn **Gangunterschied** $\Delta s$ der beiden Wellenzüge.

- Wenn man den beweglichen Spiegel soweit verschiebt, dass man wieder ein Maximum beobachtet, weiß man, dass der Gangunterschied $\Delta s$ der beiden Wellenzüge um eine Wellenlänge $\lambda$ größer geworden ist.

- Verschiebt man den beweglichen Spiegel weiter und zählt dabei, wie oft man auf dem Schirm ein Maximum beobachtet hat, weiß man, um wie viele Wellenlängen der Gangunterschied größer wurde.

> Simulation in neuem Fenster starten: <a href="/apps/suw/15c_verschiebungzeiger/verschiebungzeiger.html" target="_blank">Verschiebung beim Michelson-Interferometer</a>

<iframe frameborder="0" src="/apps/suw/15c_verschiebungzeiger/verschiebungzeiger.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten. **Verschiebe** den beweglichen Spiegel, bis ein **Maximum** beobachtet wird. **Klicke** dann auf "Gangunterschied 0 festlegen".

2. **Verschiebe** den Spiegel weiter. **Beobachte** den Zusammenhang zwischen der Anzahl der gezählten Maxima (ohne das erste Maximum) und der Verschiebung des beweglichen Spiegels.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Sobald ein Maximum zu sehen ist, wird der Gangunterschied $\Delta s = 0$ festgelegt. 

![](michelson06.jpg)

**Zu 2.**: Man zählt die Maxima, die man beobachtet (ohne das erste Maximum). Bei z.B. 6 gezählten Maxima, weiß man, dass der Gangunterschied $\Delta s = 6 \cdot \lambda$ ist. Da das Licht zweimal den Weg der Verschiebung zurücklegt gilt für den Zusammenhang zwischen der Verschiebung und der Anzahl der Maxima:

$$
  \Delta s = 2 \cdot d = N \cdot \lambda
$$

![](michelson07.jpg)

</details>

Wenn man den beweglichen Spiegel so verschiebt, dass man auf dem Schirm ein Maximum beobachtet, legt man den Gangunterschied $\Delta s = 0$ fest. 

Wenn man den Spiegel weiter verschiebt und dann wieder ein Maximum beobachtet, ist der Gangunterschied $\Delta s = \lambda$. 

Wenn man den Spiegel so weit verschiebt, dass man weitere $N$ Maxima beobachtet, gilt für den Gangunterschied $\Delta s = N \cdot \lambda$.

Damit sich der Gangunterschied $\Delta s$ um $\lambda$ ändert, wird der bewegliche Spiegel um $\frac{\lambda}{2}$ verschoben, denn das Licht bewegt sich zum beweglichen Spiegel hin und wieder zurück. 

Wenn man den Spiegel so weit verschiebt, dass man weitere $N$ Maxima beobachtet, wurde der Spiegel um $\Delta d = N \cdot \frac{\lambda}{2}$ verschoben. **Das gleiche gilt auch, wenn man die Beobachtung bei einem Minimum beginnt.**

Für den Zusammenhang zwischen der Verschiebung des Spiegels $\Delta d$, der Wellenlänge $\lambda$ und der Anzahl $N$ der beobachteten Interferenzbildänderungen (Hell-Dunkel-Hell oder Dunkel-Hell-Dunkel) gilt:
 
$$
  \Delta d = N \cdot \frac{\lambda}{2}
$$

---

## Simulation: Michelson-Interferometer

Ein Michelson-Interferometer kann dazu verwendet werden, um kleinste Längenänderungen zu messen, die in der Größenordnung der Wellenlänge des verwendeten Lichts liegen. Im Fall des roten Lichts eines Helium-Neon-Lasers bei einer Wellenlänge von $\lambda = 633 \, \text{nm}$ können Längenänderungen im Mikrometer- bis Nanometer-Bereich gemessen werden.

Man befestigt einen beweglichen Spiegel an der Strecke, die gemessen werden soll und lässt Laserlicht der Wellenlänge $\lambda$ durch eine Michelson-Interferometer-Anordnung laufen. Am Schirm/Detektor zählt man die Anzahl $N$ der beobachteten Maxima (ohne das erste Maximum) und kann mit Hilfe der Formel 

$$
  \Delta d = N \cdot \frac{\lambda}{2}
$$

die Verschiebung des Spiegels berechnen.

> Simulation in neuem Fenster starten: <a href="/apps/suw/15_michelsoninterferometer/michelsoninterferometer.html" target="_blank">Michelson-Interferometer</a>

<iframe frameborder="0" src="/apps/suw/15_michelsoninterferometer/michelsoninterferometer.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
**Klicke** auf "Experiment Start/Stop", um die Simulation zu starten. **Verändere** die Position des beweglichen Spiegels und **beobachte** die Auswirkung auf das Schirmbild. Wenn die "Brennweite" der Abbildungslinse verändert wird, kann das Schirmbild vergrößert dargestellt werden.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Vergrößerung des Schirmbilds mit einer geeigneten Brennweite der Abbildungslinse:

![](michelson08.jpg)

</details>

---

## Anwendung: Brechzahl eines Gases

In einem Gas hat Licht eine geringere Lichtgeschwindigkeit als im Vakuum. Das Verhältnis der Lichtgeschwindigkeiten $c_1$ und $c_2$ in zwei verschiedenen Gasen (z.B. Gas 1 und Gas 2) nennt man relative Brechzahl $n_\text{Gas 1 zu Gas 2}$ und es gilt 

$$
   n_\text{Gas 1 zu Gas 2} = \frac{c_1}{c_2}
$$

Wenn man den Übergang vom Vakuum zu einem Gas betrachtet, mit $c$ als Lichtgeschwindigkeit im Vakuum, dann vereinfacht sich diese Formel zu:

$$
   n_\text{Gas} = \frac{c}{c_\text{Gas}}
$$

Stellt man einen transparenten Gasbehälter in den Lichtweg eines Spiegelarms in einem Michelson-Interferometer, dann ändert ein Gas im Gasbehälter die Lichtgeschwindigkeit auf dieser Strecke. Dadurch benötigt das Laserlicht länger, um den Schirm zu erreichen und die optische Weglänge wird dadurch größer. Die Folge ist, dass sich der Gangunterschied $\Delta s$ zwischen den beiden Wellenzügen verändert und damit auch das Interferenzbild auf dem Schirm.

![](interferometerpraktikum.png)

Eine Anwendungsidee dieses Aufbaus ist die Identifizierung eines unbekannten Gases. Wenn der Brechungsindex eines Gases bei einem bestimmten Druck bekannt ist, kann man z.B. die Küvette mit dem Gas auf den bestimmten Druck befüllen. Mit einer Vakuum-Pumpe entfernt man dann das Gas wieder, so dass der Druck auf einen sehr kleinen Wert sinkt. Während des Abpumpens zählt man z.B. die Übergänge Hell-Dunkel-Hell im Interferenzbild des Michelson-Interferometers. Mit einer geeigneten Formel kann man dann den Brechungsindex des eingefüllten Gases berechnen und mit Hilfe der Literaturwerte das eingefüllte Gas identifizieren.

Wenn die Küvette evakuiert ist, bewegt sich das Licht in der Küvette mit der Vakuumlichtgeschwindigkeit $c$, bei einer gefüllten Küvette mit der Geschwindigkeit $c_\text{Gas}$. Für den Zeitunterschied $\Delta t$ gilt dann:

$$
  \begin{align}
    \Delta t &= t_\text{Gas} - t_\text{Vakuum} \\
    \Delta t &= \frac{2 \cdot l}{c_\text{Gas}} - \frac{2 \cdot l}{c_\text{Vakuum}}
  \end{align}
$$

Mit dieser Zeitdifferenz folgt für den optischen Gangunterschied $\Delta s$ zwischen den Wellenzügen, die auf dem Schirm interferieren:

$$
  \begin{align}
    \Delta s &= c_\text{Vakuum} \cdot \Delta t \\
    \Delta s &= c_\text{Vakuum} \cdot \left( \frac{2 \cdot l}{c_\text{Gas}} - \frac{2 \cdot l}{c_\text{Vakuum}} \right)\\
    \Delta s &= 2 \cdot l \cdot \left( \frac{c_\text{Vakuum}}{c_\text{Gas}} - \frac{c_\text{Vakuum}}{c_\text{Vakuum}} \right) \\
    \Delta s &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right)
  \end{align}    
$$

Wenn sich der Gangunterschied $\Delta s$ um die Wellenlänge $\lambda$ ändert, beobachtet man auf dem Schirm einen Übergang von Hell über Dunkel zu Hell oder von Dunkel über Hell zu Dunkel. Bei $N$ gezählten Übergängen gilt also $\Delta s = N \cdot \lambda$.

Damit gilt insgesamt:

$$
  \begin{align}
    \Delta s &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right) \\
    N \cdot \lambda &= 2 \cdot l \cdot \left( n_\text{Gas} - 1 \right) \\
    n_\text{Gas} - 1 &= \frac{N \cdot \lambda}{2 \cdot l} \\
    n_\text{Gas} &= 1 + \frac{N \cdot \lambda}{2 \cdot l}
  \end{align}    
$$

#### Interaktives Experiment

> Simulation in neuem Fenster starten: <a href="/apps/suw/16_gasdetektion/gasdetektion.html" target="_blank">Gasdetektion</a>

<iframe frameborder="0" src="/apps/suw/16_gasdetektion/gasdetektion.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten. **Wähle** ein Gas. Der Druck in der Küvette beim gewählten Gas ist zu Beginn der Simulation 1,01 Bar. **Klicke** auf "Abpumpen", so dass sich der simulierte Gasdruck auf 0,01 Bar verringert. **Zähle** dabei die Übergänge H-D-H oder D-H-D. 

2. **Berechne** mit der Formel $n_\text{Gas} = 1 + \frac{N \cdot \lambda}{2 \cdot l}$ die Brechzahl des Gases.

3. **Identifiziere** anhand der angegebenen Tabelle für alle 8 Füllungen das jeweils eingefüllte Gas.

Die Wellenlänge des verwendeten Laser beträgt $\lambda = 633 \, \text{nm}$. Die Länge der Küvette in der Simulation ist $l = 4 \, \text{cm}$.

</details>

<details>

  <summary>Lösungsvorschlag</summary>
  
Argon: n = 1,000281 (Gas 1)

Acetylen: n = 1,000606 (Gas 2)

Kohlenmonoxid: n= 1,000338 (Gas 3)

Chlorgas: n = 1,000773 (Gas 4)

Distickstoffmonoxid: n = 1,000516 (Gas 5)

Helium: n = 1,000036 (Gas 6)

Wasserstoff: n = 1,000132 (Gas 7)

Kohlendioxid: n = 1,000451 (Gas 8)

</details>

---

## Anwendung: LIGO-Michelson-Interferometer

Vor einigen Jahren wurden das erste Mal die von Albert Einstein in seiner allgemeinen Relativitätstheorie vorhergesagten Gravitationswellen experimentell nachgewiesen. Als Messgeräte wurden dazu zwei Michelson-Interferometer eingesetzt.

Folgende Internetseiten bieten Informationen zu den LIGO-Interferometern:

- [Video: Was sind Gravitationswellen?](https://www.youtube.com/watch?v=iphcyNWFD10)

- [Video: Was ist LIGO?](https://vimeo.com/88437726)

- [Internetseite: Laser Interferometer Gravitational-Wave Observatory](https://www.ligo.caltech.edu/)

- [Internetseite: Videos und Dokumentationen](https://www.ligo.caltech.edu/page/recommended-reading)

---