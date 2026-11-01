## Interferenz

> **Bezug zum Kerncurriculum:**  
> - Ich kann Interferenzphänomene beschreiben und deuten.
> - Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden.

---

## Ausbreitung von Wellen im Raum

Wellen wie Schallwellen, Wasserwellen, elektromagnetische Wellen,... breiten sich im Raum aus. Wir betrachten jetzt eine Situation, in der **zwei Wellensender** vorhanden sind. 

Wenn jeder der beiden Sender eine Welle aussendet, dann treffen sich in einem gewählten Raumpunkt zwei Wellenzüge. Der Oszillator in diesem Raumpunkt wird von den beiden ankommenden Wellenzügen beeinflusst, so dass seine Oszillation (Schwingungsbewegung) eine Folge der Überlagerung der beiden Wellen in diesem Punkt ist. 

> [!NOTE]
> Die Überlagerung von zwei Wellenzügen in einem Raumpunkt nennt man **Interferenz der Wellenzüge**.

Wenn Wellensender ihre Wellenzüge aussenden, breiten sich diese in dem Raum aus, der für die Oszillation zur Verfügung steht:

- Bei einer Seilwelle breitet sich die Welle entlang des Seils aus.

- Eine Wasserwelle breitet sich auf der Wasseroberfläche aus.

- Eine Schallwelle breitet sich in einem Medium aus, bei dem Moleküle um ihre Ruhelage schwingen können (Gas, Flüssigkeit, Festkörper).

- Eine elektromagnetische Welle (z.B. Handy-Funk, WLAN-Signal, Licht) kann sich auch im leeren Raum ausbreiten, da die oszillierenden elektrischen und magnetischen Felder kein Trägermedium brauchen. 

Die Oszillatoren einer Welle (z.B. Seilatome, Luftmoleküle, elektrische und magnetische Felder,...) schwingen um ihre Ruhelage, bleiben im zeitlichen Mittel aber an ihrer Position. Benachbarte Oszillatoren sind aneinander gekoppelt, weswegen Energie von einem Oszillator auf den nächsten übertragen wird. Da jeder Oszillator im zeitlichen Mittel seine Position nicht verändert, breitet sich nur die Schwingungsenergie im Raum aus. 

- Bei einer **Seilwelle** breitet sich die Schwingung entlang des Seils, also in einer Raumrichtung aus. Wenn keine Energie durch Reibung verloren geht, bleibt die Schwingungsenergie erhalten und die Oszillatoren schwingen alle mit gleicher Amplitude. Eine solche Welle nennt man eine **eindimensionale Welle**.

![](strecke.png)

- Bei einer **Wasserwelle** breitet sich die Schwingung auf der Wasseroberfläche, also in zwei Raumrichtungen, aus. Wenn der Wellensender pro Sekunde eine bestimmte Energiemenge aussendet (Sender-Leistung $P$), verteilt sich die Energiemenge auf alle Oszillatoren, die kreisförmig in einem Abstand $r$ um den Sender angeordnet sind. Für den Umfang $U$ eines Kreises mit dem Radius $r$ gilt: $U = 2 \pi \cdot r$. Die Anzahl der Oszillatoren, auf welche sich die Schwingungsenergie verteilt, nimmt also proportional zum Abstand zur Quelle zu.

![](kreis.png)

- Bei einer **elektromagnetischen Welle** (z.B. Licht) kann sich die Schwingung in den gesamten Raum, also in drei Raumrichtungen ausbreiten. Wenn eine Lichtquelle (z.B. eine LED) pro Sekunde eine bestimmte Energiemenge in alle Raumrichtungen abstrahlt, verteilt sich die Energie auf alle Oszillatoren, die kugelförmig in einem Abstand $r$ um die Lichtquelle angeordnet sind. Für die Oberfläche $O$ einer Kugel mit dem Radius $r$ gilt: $O = 4 \pi \cdot r^2$. Die Energiemenge, die pro Sekunde eine bestimmte Fläche durchdringt (z.B. 1 Joule pro Sekunde und pro Quadratzentimeter), nennt man die **Intensität $I$ der Welle**. Da die Oberfläche der Kugel quadratisch mit dem Abstand größer wird, nimmt die **Intensität $I$ der Welle**, also die Energiemenge, die sich pro Sekunde auf einen Quadratzentimeter verteilt, quadratisch mit dem Abstand $r$ ab. Es gilt: $I \sim \frac{1}{r^2}$.

![](kugeln.png)

Die **Intensität** ist proportional zum Quadrat der **Amplitude** der Welle: $I \sim A^2$. Also gilt für die Amplitude der Welle abhängig vom Abstand zur Punktquelle:

$$
\begin{align}
  A^2 &\sim I \sim \frac{1}{r^2} \\
  A &\sim \sqrt{\frac{1}{r^2}} \\
  A &\sim \frac{1}{r}
\end{align}
$$

> [!NOTE]
> Die Amplitude der Schwingung einer kugelförmigen Welle, die von einer Punktquelle in alle drei Raumrichtungen ausgesendet wird, halbiert sich, wenn man den Abstand zur Punktquelle verdoppelt.

---

## Modellierung der Interferenz von Wellen

Zwei Wellenzüge, die von zwei Wellensendern ausgesandt wurden, transportieren Energie durch den Raum. Wir betrachten jetzt einen beliebigen, aber fest gewählten Ort im Raum, an dem sich die beiden Wellenzüge treffen. An dem gewählten Raumpunkt gibt es **einen realen Oszillator**, der in seiner Bewegung von den beiden ankommenden Wellenzügen beeinflusst wird. Die resultierende Bewegung des realen Oszillators kann kompliziert sein. Um das Verhalten des Oszillators modellieren zu können, gehen wir wie folgt vor:

- In einem Raumpunkt **denken** wir uns für jeden Wellenzug, der von den beiden Wellensendern ausgesandt wurde, einen eigenen **Oszillator**, der unabhängig vom jeweils anderen Wellenzug schwingt. Wir nennen den Oszillator **eines Wellenzugs** einen **virtuellen Oszillator**, da dieser nur in unserer Vorstellung existiert (im Raumpunkt oszilliert immer nur der reale Oszillator). In einem Raumpunkt denken wir uns also **zwei virtuelle Oszillatoren**.

- Die Oszillation der beiden **virtuellen Oszillatoren** in einem Raumpunkt setzen wir zu einer resultierenden Oszillation des **realen Oszillators** zusammen. Diese Überlagerung der beiden Schwingungen nennen wir **Interferenz der beiden Wellenzüge im Raumpunkt**.

- Nach der Zusammensetzung der Oszillation der beiden virtuellen Oszillatoren zu einem resultierenden Oszillator, beschreibt der resultierende Oszillator die **reale Oszillation der Welle** in dem betrachteten Raumpunkt.

Wir betrachten im Folgenden zwei Wellenzüge, die von zwei Sendern ausgesandt wurden, die beide mit **gleicher Amplitude, gleicher Frequenz und gleicher Phase** schwingen. 

Abhängig von der Stärke der Kopplung der Oszillatoren breitet sich eine Welle schneller oder langsamer durch den Raum aus. Für den Zusammenhang zwischen der **Ausbreitungsgeschwindigkeit** $c$ der Welle, der **Wellenlänge** $\lambda$ und der **Frequenz** der Oszillatoren $f$ gilt: $c = \lambda \cdot f$. Die Wellenlänge $\lambda$ einer Welle kann berechnet werden, wenn man die Ausbreitungsgeschwindigkeit $c$ und die Frequenz $f$ des Oszillators beim Wellensender kennt:

$$
  \lambda = \frac{c}{f}
$$

Wenn man die Wellenlänge der beiden Wellenzüge kennt, kann man die Interferenz an einem bestimmten Raumpunkt vorhersagen. Für jeden Wellenzug gilt, dass sich im Abstand einer Wellenlänge $\lambda$ die Schwingung der Oszillatoren wiederholt:

![](interferenz01.png)

Wenn der Weg zwischen dem Wellensender und dem Interferenzort bei dem ersten Wellenzug genau 10 Wellenlängen lang ist und der Weg zwischen dem Wellensender und dem Interferenzort beim zweiten Wellenzug 15 Wellenlängen lang ist, dann wissen wir, dass die virtuellen Oszillatoren der beiden Wellenzüge am Interferenzort im Gleichtakt schwingen müssen. Das gilt immer dann, wenn die Differenz der Länge der Wellenzüge eine volle Wellenlänge lang ist, denn dann trifft am Interferenzort ein Wellenberg auf einen Wellenberg bzw. ein Wellental auf ein Wellental.

Um die Interferenz richtig vorhersagen zu können, genügt es also, wenn man nur die Differenz der Entfernung zwischen den beiden Wellensendern und dem Interferenzort betrachtet. Diese Entfernung nennt man **Gangunterschied** $\Delta s$ der beiden Wellenzüge.

Wenn beide Quelloszillatoren mit gleicher Frequenz, gleicher Amplitude und gleicher Anfangsphase schwingen, dann gelten folgende Interferenzbedingungen:

> [!NOTE]
> Wenn der **Gangunterschied $\Delta s$** der beiden Wellenzüge am Interferenzort **ein ganzzahliges Vielfaches der Wellenlänge** $\lambda$ ist, also 
> $$ \Delta s = n \cdot \lambda $$
> mit $n = 0, 1, 2,...$, dann **schwingen die virtuellen Oszillatoren am Interferenzort im Gleichtakt** und man beobachtet ein **Maximum** am Interferenzort.

Wenn der Weg zwischen dem Wellensender und dem Interferenzort bei dem ersten Wellenzug genau 10 Wellenlängen lang ist und der Weg zwischen dem Wellensender und dem Interferenzort beim zweiten Wellenzug 10,5 Wellenlängen lang ist, dann wissen wir, dass die virtuellen Oszillatoren der beiden Wellenzüge am Interferenzort entgegengesetzt zueinander schwingen müssen. Das gilt also immer dann, wenn die Differenz der Länge der Wellenzüge eine halbe Wellenlänge lang ist, denn dann trifft am Interferenzort ein Wellenberg auf ein Wellental.

> [!NOTE]
> Wenn der **Gangunterschied** $\Delta s$ der beiden Wellenzüge am Interferenzort ein **ungeradzahliges Vielfaches der halben Wellenlänge** $\lambda$ ist, also 
> 
> $$ \Delta s = (2 \cdot n + 1) \cdot \frac{\lambda}{2} $$
> 
> mit $n = 0, 1, 2,...$, dann **schwingen die virtuellen Oszillatoren am Interferenzort entgegengesetzt zueinander** und man beobachtet ein **Minimum** am Interferenzort.

---

## Simulation: Interferenz

> Simulation in neuem Fenster starten: <a href="/apps/suw/10_interferenz/interferenz.html" target="_blank">Interferenz</a>

<iframe frameborder="0" src="/apps/suw/10_interferenz/interferenz.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten und **klicke** auf "Welle Start/Stop", um die Oszillation zu starten. **Verändere** die Position des Interferenzortes so, dass die schwarze Linie, welche den Gangunterschied anzeigt, über einer halben Wellenlänge (kurze blaue Linie) steht. **Beobachte** die Oszillation am Interferenzort.

2. **Verändere** die Position des Interferenzortes so, dass die schwarze Linie, welche den Gangunterschied anzeigt, über einer vollen Wellenlänge (lange blaue Linie) steht. **Beobachte** die Oszillation am Interferenzort.

3. **Stelle** den "Ort von Oszi 1" auf 0, den "Ort von Oszi 2" auf 400 und die "y-Koordinate" vom Interferenzort auf 200. **Verändere** die "x-Koordinate" vom Interferenzort. **Beobachte** die Oszillation am Interferenzort.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Wenn der **Gangunterschied** der beiden Wellenzüge ein **ungeradzahliges Vielfaches der halben Wellenlänge** ist (die schwarze Linie, die den Gangunterschied anzeigt, steht über einer halben Wellenlänge), beobachtet man am Interferenzort ein **Minimum**: die virtuellen Oszillatoren schwingen entgegengesetzt zueinander und der reale Oszillator schwingt kaum.

![](interferenz02.jpg)

**Zu 2.**: Wenn der **Gangunterschied** der beiden Wellenzüge ein **Vielfaches der Wellenlänge** ist (die schwarze Linie, die den Gangunterschied anzeigt, steht über einer vollen Wellenlänge), beobachtet man am Interferenzort ein **Maximum**: die virtuellen Oszillatoren schwingen im Gleichtakt und der reale Oszillator schwingt mit deutlich größerer Amplitude als die virtuellen Oszillatoren.

![](interferenz03.jpg)

**Zu 3.**: Die schwarze Linie, welche den Gangunterschied anzeigt, steht über dem Oszillationsort von Oszi 2 und zeigt damit an, dass der **Gangunterschied** der beiden Wellenzüge gleich Null ist. Da sich der Interferenzort jetzt genau in der Mitte zwischen den Wellenquellen befindet, ist der Gangunterschied der Wellenzüge für jede x-Position gleich Null und an jedem Interferenzort, der gleich weit von den Wellenquellen entfernt ist, beobachtet man ein **Maximum**.

![](interferenz04.jpg)

</details>

---

## Modellierung im Zeigermodell

Wenn zwei Sender jeweils einen Wellenzug in den Raum aussenden, interferieren die beiden Wellenzüge an einem bestimmten Raumpunkt. Auf dem Weg vom Sender zum Interferenzort kann man sich Modell-Oszillatoren denken, die um ihre Ruhelage schwingen. Am Interferenzort kann die Schwingung der virtuellen Modell-Oszillatoren zur resultierenden Schwingung des realen Modell-Oszillators kombiniert werden. 

Der reale Modell-Oszillator am Interferenzort **modelliert** den physikalischen Vorgang am Interferenzort: 

- Bei einer Schallwelle schwingen Luftmoleküle. Wenn ein Mikrofon am Interferenzort angebracht wird, registriert man einen Ton.

- Bei einer Wasserwelle schwingen Wassermoleküle. Wenn eine Boje am Interferenzort schwimmt, kann man deren Auf- und Abbewegung filmen.

- Bei einer elektromagnetischen Welle (z.B. Licht) schwingen elektrische und magnetische Felder. Ein Fotodetektor (z.B. Handykamera) misst die zeitlich gemittelte Intensität am Interferenzort.

Die Schwingung eines Oszillators kann mit Hilfe eines **rotierenden Zeigers** modelliert werden. Dieses Modell kann auf die Modellierung der Situation am Interferenzort zweier Wellenzüge übertragen werden:

- Für jeden virtuellen Oszillator lassen wir einen Zeiger rotieren. Die **Länge des Zeigers** entspricht der **Amplitude der Schwingung** des Oszillators und die **Winkelgeschwindigkeit eines Zeigers** wird aus der Frequenz der Schwingung berechnet: $\omega = 2 \pi \cdot f$.

- Die beiden Zeiger der virtuellen Oszillatoren werden mit Hilfe der **Parallelogrammregel addiert** (im Mathematikunterricht werden Sie im Thema Vektorgeometrie lernen, wie man die Summe der Zeiger berechnen kann).

- Der **resultierende Zeiger** modelliert die Schwingung des **realen Oszillators** am Interferenzort.

---

### Simulation: Zeiger

> Simulation in neuem Fenster starten: <a href="/apps/suw/19_oszillatorinterferenz/oszillatorinterferenz.html" target="_blank">Interferenz zweier virtueller Oszillatoren</a>

<iframe frameborder="0" src="/apps/suw/19_oszillatorinterferenz/oszillatorinterferenz.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Lösungsvorschlag</summary>
  
1. **Klicke** auf "Experiment Start/Stop", um die Simulation zu starten und **klicke** auf "Start/Stop", um die Oszillation zu starten. **Verändere** die anderen Parameter nicht (beide Phasen sollten auf 0 sein). **Beobachte** die Bewegung der Oszillatoren (auf- und abbewegende Kreise) in der Mitte der Simulation.

2. **Setze** die Phase des virtuellen Oszillators 2 auf $\pi = 3,14 \,\, \widehat{=} \,\, 180°$ und **lasse** die Phase des virtuellen Oszillators 1 auf 0. **Beobachte** die Oszillation.

3. **Setze** die Phasen der beiden virtuellen Oszillatoren auf zwei verschiedene, beliebige Werte. **Beobachte** die Oszillation.

4. **Verändere** die Frequenz der beiden virtuellen Oszillatoren so, dass beide unterschiedlich schnell oszillieren. **Beobachte** die Auswirkung auf die Oszillation des realen Oszillators.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Die virtuellen Oszillatoren bewegen sich periodisch auf- und ab. Wenn die beiden Zeiger in gleicher Phase rotieren (Phasendifferenz = 0), dann liefert die Addition der Amplituden der beiden virtuellen Oszillatoren die Amplitude des realen Oszillators. Die Amplitude des realen Oszillators ist deutlich größer als die Amplitude der virtuellen Oszillatoren. Man nennt Überlagerung zweier Zeiger, die gleichphasig rotieren **Verstärkung** oder **konstruktive Interferenz**.

![](virtoszi01.jpg)

Wenn die Amplitude der beiden virtuellen Oszillatoren maximal ist und beide virtuelle Oszillatoren mit gleicher Frequenz und gleicher Phase schwingen, liefert die Überlagerung ein **Maximum**.

![](virtoszi02.jpg)

**Zu 2.**: Wenn die Phasen der beiden Oszillatoren um $\pi = 3,14 \,\, \widehat{=} \,\, 180°$ zueinander verdreht sind, oszillieren die beiden virtuellen Oszillatoren genau entgegengesetzt zueinander, d.h. die beiden virtuellen Zeiger rotieren mit entgegengesetzter Phase. Die resultierende Amplitude des realen Oszillators verringert sich im Vergleich zu den virtuellen Oszillatoren. Man nennt diesen Vorgang **Minimum** oder **destruktive Interferenz**.

![](virtoszi03.jpg)

Wenn die Amplitude der beiden virtuellen Oszillatoren maximal ist und beide virtuelle Oszillatoren mit gleicher Frequenz und einer um $\pi$ zueinander versetzten Phase schwingen, liefert die Überlagerung eine **Auslöschung**, d.h. die resultierende Amplitude ist Null.

![](virtoszi04.jpg)

**Zu 3.**: Wenn die beiden virtuellen Oszillatoren relativ zueinander mit einer zwischen 0 und $\pi$ (Bogenmaß) bzw. 0° und 180° (Gradmaß) versetzten Phase schwingen (d.h. die beiden Zeiger rotieren mit einer festen Phasendifferenz zwischen 0° und 180°), dann liefert die Überlagerung eine Amplitude des realen Oszillators zwischen dem Minimum und dem Maximum.

![](virtoszi05.jpg)

**Zu 4.**: Wenn die Frequenz der beiden virtuellen Oszillatoren verschieden ist, beobachtet man, dass sich die Amplitude (maximale Auslenkung) des realen Oszillators ständig ändert (d.h. die beiden Zeiger rotieren mit zwei unterschiedlichen Winkelgeschwindigkeiten). Man kann ein regelmäßiges Muster erkennen. Diese regelmäßige Änderung des Schwingungsverhaltens des realen Oszillators nennt man eine **Schwebung**.

![](virtoszi06.jpg)

</details>

Die Überlagerung der virtuellen Oszillatoren liefert folgende **Interferenz-Situationen**:
 
- Wenn beide virtuellen Oszillatoren mit gleicher Frequenz, gleicher Amplitude und gleicher Phase schwingen, liefert die Überlagerung eine **Verstärkung**, die man **Maximum** oder **konstruktive Interferenz** nennt. Im Zeigermodell rotieren in einer solchen Situation zwei gleich lange Zeiger, ohne Phasendifferenz und mit gleicher Winkelgeschwindigkeit.
 
- Wenn beide virtuellen Oszillatoren mit gleicher Frequenz, gleicher Amplitude und einer um  $\pi = 3,14 \,\, \widehat{=} \,\, 180°$ zueinander versetzten Phase schwingen, liefert die Überlagerung ein **Minimum**, das man **Auslöschung** oder **destruktive Interferenz** nennt. Im Zeigermodell rotieren in einer solchen Situation zwei gleich lange Zeiger mit einer Phasendifferenz von 180° und mit gleicher Winkelgeschwindigkeit.
 
- Wenn beide virtuellen Oszillatoren mit gleicher Frequenz, gleicher Amplitude und einer **Phasendifferenz** (Differenz der beiden Phasen) schwingen, die zwischen 0° und 180° (Gradmaß) bzw. 0 und $\pi$ (Bogenmaß) liegt, liefert die Überlagerung eine Amplitude, die zwischen dem **Minimum** und dem **Maximum** liegt. Im Zeigermodell rotieren in einer solchen Situation zwei gleich lange Zeiger mit einer festen Phasendifferenz zwischen 0° und 180° und mit gleicher Winkelgeschwindigkeit.
 
- Wenn beide virtuellen Oszillatoren mit **unterschiedlicher Frequenz** schwingen, beobachtet man, dass sich die Amplitude (maximale Auslenkung) des realen Oszillators ständig, aber nach einem regelmäßigen Muster, ändert. Diese regelmäßige Änderung des Schwingungsverhaltens des realen Oszillators nennt man eine **Schwebung**. In einer solchen Situation rotieren zwei gleich lange Zeiger mit einer sich ständig ändernden Phasendifferenz, da die Zeiger mit zwei unterschiedlichen Winkelgeschwindigkeiten rotieren.

---

## Interferenzanalyse

> Simulation in neuem Fenster starten: <a href="/apps/suw/21_interferenzanalyse/interferenzanalyse.html" target="_blank">Interferenzanalyse</a>

<iframe frameborder="0" src="/apps/suw/21_interferenzanalyse/interferenzanalyse.html" width="100%" height="650" scrolling="no" allowfullscreen></iframe>

Die Interferenzbedingungen können auch im Zeigerbild formuliert werden. Wenn die beiden Wellensender mit gleicher Frequenz, gleicher Phase und gleicher Amplitude schwingen, dann beobachtet man an einem bestimmten Interferenzort folgendes:

> [!NOTE]
> Wenn der **Gangunterschied $\Delta s$** der beiden Wellenzüge am Interferenzort **ein ganzzahliges Vielfaches der Wellenlänge** $\lambda$ ist, also 
> 
> $$ \Delta s = n \cdot \lambda $$
>
> mit $n = 0, 1, 2,...$, dann **rotieren die virtuellen Zeiger am Interferenzort in gleicher Phase** und man beobachtet ein **Maximum** am Interferenzort.

> [!NOTE]
> Wenn der **Gangunterschied** $\Delta s$ der beiden Wellenzüge am Interferenzort ein **ungeradzahliges Vielfaches der halben Wellenlänge** $\lambda$ ist, also 
>
> $$  \Delta s = (2 \cdot n + 1) \cdot \frac{\lambda}{2} $$
> 
> mit $n = 0, 1, 2,...$, dann **rotieren die virtuellen Zeiger am Interferenzort in entgegengesetzter Phase** und man beobachtet ein **Minimum** am Interferenzort.

Die Interferenzsituation an **jedem beliebigen Interferenzort** kann mit Hilfe des Zeigermodells bestimmt werden. Dazu bestimmt man die relative Phasenverschiebung zwischen den virtuellen Oszillatoren am Interferenzort wie folgt vor:

- Für jeden Sender denkt man sich am Ort des Senders einen rotierenden Zeiger. Die Winkelgeschwindigkeit des Zeigers kann man aus der Frequenz des Senders berechnen: $\omega = 2 \pi \cdot f$. Die Länge des Zeigers entspricht der Amplitude $A$ der Schwingung an der Quelle.

- Wenn ein Wellenzug ausgesendet wird, beginnt der dem Wellenzug zugeordnete Zeiger mit der Winkelgeschwindigkeit $\omega$ zu rotieren und zwar solange, bis der Wellenzug den Interferenzort im Abstand $x$ erreicht hat. Die Rotationszeit $t$ des Zeigers kann man berechnen, wenn man die Phasengeschwindigkeit $c$ der Welle kennt: $c = \frac{x}{t}$ also $t = \frac{x}{c}$.

- Für jeden Sender berechnet man auf diese Weise die Reisezeit $t$, bis der Wellenzug den Interferenzort erreicht hat und lässt den zugeordneten Zeiger mit der Winkelgeschwindigkeit $\omega$ genau solange rotieren. 

- Wenn man die relative Phasenverschiebung der virtuellen Oszillatoren am Interferenzort ermittelt hat, addiert man die beiden phasenverschobenen Zeiger mit Hilfe der Parallelogrammregel. Die Länge des resultierenden Zeigers gibt die Amplitude des realen Oszillators am Interferenzort an.

---

### Simulation: Interferenz von Wellen

Reale Wellen bestehen aus unfassbar vielen Oszillatoren, die um ihre Ruhelage schwingen. In Luft sind pro Kubikzentimeter etwa $2,55 \cdot 10^{19}$ Luftmoleküle vorhanden, die bei einer Schallwelle zu Schwingungen angeregt werden. Wenn wir reale Wellen modellieren, betrachten wir nur einen kleinen Ausschnitt einer Raumwelle und verwenden dabei viele vereinfachende Annahmen. Trotzdem kann eine gute Näherung einen Eindruck vermitteln, wie die reale Situation ist.

<iframe frameborder="0" src="https://phet.colorado.edu/sims/html/wave-interference/latest/wave-interference_de.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

Quelle: [PhET](https://phet.colorado.edu/de/simulation/wave-interference)

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf **Interferenz** und **stelle** folgende Parameter ein: Kasten rechts: **Wasserwelle** (Symbol Wasserhahn). **Klicke** dann auf die grünen Knöpfe an den beiden Wasserhähnen. **Beobachte** die Ausbreitung der Wasserwellen und deren Interferenz (Dunkel = Wellental, Hell = Wellenberg).

2. **Stelle** folgende Parameter ein: Kasten rechts: **Schallwelle** (Symbol Lautsprecher). **Klicke** auf die grünen Knöpfe an den Lautsprechern und rechts auf "Beide". **Beobachte** die Ausbreitung der Schallwellen und deren Interferenz im Raum (Dunkel = Wellental, Hell = Wellenberg).

3. **Stelle** folgende Parameter ein: Kasten rechts: **Lichtwelle** (Symbol Laserpointer). **Aktiviere** rechts im Kasten "Bildschirm" und "Intensität". **Klicke** dann auf die grünen Knöpfe an den Lichtquellen. **Beobachte** die Ausbreitung der Lichtwellen und deren Interferenz im Raum (Dunkel = Wellental, Hell = Wellenberg).

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Interferenz zweier Wasserwellen

![](intwellen01.jpg)

**Zu 2.**: Interferenz zweier Schallwellen

![](intwellen02.jpg)

**Zu 3.**: Interferenz zweier Lichtwellen

![](intwellen03.jpg)

</details>

---