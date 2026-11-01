## Aufgabe 1

Erzeugt man bei Verwendung eines Gitters auf einem Schirm ein Interferenzbild, dann gilt für die **Maxima**:
 
$$
 n \cdot \lambda = g \cdot \sin \left[ \arctan \left(\frac{a_n}{e} \right) \right]
$$
 $n = 1, 2, 3, ...$   
 $\lambda = $ Wellenlänge des verwendeten Lichtstrahl   
 $g = $ Gitterkonstante (Abstand zweier benachbarter Gitteröffnungen)   
 $a_n = $ Abstand zwischen 0. Maximum und n-tes Maximum   
 $e = $ Abstand zwischen Gitter und Schirm

**Leite** diese Gleichung **begründet** mit Hilfe geeigneter Skizzen **her**.

<details>

  <summary>Lösungsvorschlag</summary>
  
Das von der Lichtquelle kommende Licht trifft auf das Gitter. Jede Gitteröffnung wird nach dem **huygenschen Prinzip** als Ausgangspunkt einer **Elementarwelle** angesehen, die das Gitter **gleichphasig** verlassen. Auf dem Schirm interferieren die Elementarwellen, so dass dort **Maxima** (helle Stellen) und **Minima** (dunkle Stellen) zu beobachten sind.

Anstelle der gesamten Elementarwellen betrachten wir im Folgenden vereinfachend den vom Gitter ausgehenden Lichtstrahl in Richtung des 0. Maximums und den Lichtstrahl in Richtung des 1. Maximums. Diese Lichtstrahlen bilden zusammen mit dem Schirm ein rechtwinkeliges Dreieck (siehe **Abbildung 1**).

![](suw_doppelspalt_01.png)

Relativ zum Winkel $\alpha$, unter dem man auf dem Schirm ein Maximum beobachtet, ist $a_n$ die **Gegenkathete** und $e$ die **Ankathete**. Damit gilt:
$$
\tan(\alpha) = \frac{\text{Gegenkathete}}{\text{Ankathete}} = \frac{a_n}{e} \Leftrightarrow \alpha = \arctan \left( \frac{a_n}{e} \right)
$$

Im Unterricht wird dieses Experiment mit UV-, sichtbarem und Infrarot-Licht durchgeführt. Damit ein deutliches 1. Maximum zu beobachten ist, muss die Gitterkonstante $g$ (Abstand der Mittelpunkte zweier Gitteröffnungen) etwa $1/500 \: mm$ groß sein. Die Entfernung zweier benachbarter Gitteröffnungen ist im Vergleich zum Abstand Gitter-Schirm sehr klein. Je kleiner der Abstand zweier benachbarter Gitteröffnungen ist, desto **paralleler** werden die Lichtstrahlen, die sich in einem Punkt treffen (siehe **Abbildung 2**). 

![](suw_doppelspalt_02.png)

Wir können also in guter **Näherung** annehmen, dass bei einer Gitterkonstante von nur einem Bruchteil eines Millimeters, **zwei benachbarte Lichtstrahlen**, die von nebeneinanderliegenden Gitteröffnungen ausgehen und sich in einem Punkt auf dem Schirm treffen, **in guter Näherung als parallel angesehen** werden können.

Da die Elementarwellen das Gitter gleichphasig verlassen, interferieren zwei Lichtstrahlen in einem Punkt auf dem Schirm konstruktiv, wenn für deren Gangunterschied $\Delta s$ gilt, dass dieser ein ganzzahliges Vielfaches der Wellenlänge $\lambda$ ist. Für Maxima gilt also: $\Delta s = n \cdot \lambda$ mit $n = 1, 2,...$.

In **Abbildung 3** sind stark vergrößert zwei Lichtstrahlen skizziert, die von zwei benachbarten Gitteröffnungen ausgesandt werden. Aufgrund der **Näherung aus Schritt 4** gilt, dass diese Lichtstrahlen den Schirm in einem Punkt treffen. Die Lichtstrahlen verlassen das Gitter unter dem Winkel $\alpha$, daher ist der Weg zu dem Interferenzpunkt auf dem Schirm verschieden lang. Die Differenz der beiden verschiedenen Weglängen wird als Gangunterschied $\Delta s$ bezeichnet.

![](suw_doppelspalt_03.png)

Wie **Abbildung 3** zeigt, ist der Winkel $\alpha$ zwischen Lichtstrahl und optischer Achse in dem rechtwinkeligen Dreieck zu finden, das die Gitterkonstante $g$, den Gangunterschied $\Delta s$ und das Lot auf den Lichtstrahl bilden. Relativ zum Winkel $\alpha$ ist $g$ die Hypothenuse und $\Delta s$ die Gegenkathete. Damit gilt:

$$
\sin(\alpha) = \frac{\text{Gegenkathete}}{\text{Hypothenuse}} = \frac{\Delta s}{g}
$$

**Zusammenfassend gilt:**

$$
\begin{align}
\sin(\alpha) &= \frac{\Delta s}{g} \Leftrightarrow \Delta s = g \cdot \sin(\alpha) \\
\alpha &= \arctan \left( \frac{a_n}{e} \right) \\
\Delta s &= n \cdot \lambda
\end{align}
$$

Woraus folgt:

$$
\Delta s = g \cdot \sin \left( \arctan \left( \frac{a_n}{e} \right) \right)
$$

und schließlich

$$
n \cdot \lambda = g \cdot \sin \left( \arctan \left( \frac{a_n}{e} \right) \right)
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Aufgabe 2

Erzeugt man bei Verwendung eines Gitters auf einem Schirm ein Interferenzbild, dann gilt bei $g \ll e$ für die **Maxima**:
 
$$
 n \cdot \lambda = g \cdot \frac{a_n}{e}
$$
 $n = 1, 2, 3, ...$   
 $\lambda = $ Wellenlänge des verwendeten Lichtstrahls 
 $g = $ Gitterkonstante (Abstand zweier benachbarter Gitteröffnungen)   
 $a_n = $ Abstand zwischen 0. Maximum und n-tes Maximum   
 $e = $ Abstand zwischen Gitter und Schirm

**Leite** diese Gleichung **begründet** mit Hilfe geeigneter Skizzen **her**.

<details>

  <summary>Lösungsvorschlag</summary>
  
**Der Anfang der Argumentation entspricht der obigen Herleitung.** 

**Ergänzung:** Für sehr kleine Winkel $\alpha$ mit $\alpha < 5°$ gilt in guter Näherung, dass $\sin(\alpha) \approx \tan(\alpha)$ ist. 

Beispiel: $\sin(3°) = 0,05234$ und $tan(3°) = 0,05240$.

Damit gilt für kleine Winkel $\alpha$ in guter Näherung: 

$$
\sin \left( \arctan \left( \frac{a_n}{e} \right) \right) \approx \frac{a_n}{e}
$$

und die Formel 

$$
n \cdot \lambda = g \cdot \sin \left( \arctan \left( \frac{a_n}{e} \right) \right)
$$

vereinfacht sich zu 

$$
n \cdot \lambda = g \cdot \frac{a_n}{e}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Aufgabe 3

Erzeugt man bei Verwendung eines Gitters auf einem Schirm ein Interferenzbild, dann gilt für die **Maxima**:
 
$$
  \lambda = \frac{g}{n} \cdot \sin \left[ \arctan \left(\frac{a_n}{e} \right) \right]
$$
  $n = 1, 2, 3, ...$   
  $\lambda = $ Wellenlänge des verwendeten Lichtstrahl   
  $g = $ Gitterkonstante (Abstand zweier benachbarter Gitteröffnungen)   
  $a_n = $ Abstand zwischen 0. Maximum und n. Maximum   
  $e = $ Abstand zwischen Gitter und Schirm
 
Die **Ausbreitungsgeschwindigkeit $c$** von Licht ist vom Medium abhängig, durch welches sich das Licht bewegt. Die **Frequenz $f$** des Lichts ändert sich beim Übergang von einem Medium in ein anderes nicht. Genauso wie in der Luft lässt sich die Wellenlänge des Lichts in Wasser mit Hilfe eines optischen Gitters bestimmen. Für den Zusammenhang zwischen der Ausbreitungsgeschwindigkeit von Licht in Wasser und in der Luft gilt dann:

$$
  c_W = c_L \cdot \frac{\sin \left[ \arctan \left(\frac{a_W}{e} \right) \right]}{\sin \left[ \arctan \left(\frac{a_L}{e} \right) \right]}
$$

mit $c_W$ = Lichtgeschw. in Wasser, $c_L$ = Lichtgeschw. in Luft, $e$ = Abstand Schirm - Gitter, $a_W$ = Abstand auf Schirm von 0. zu 1. Max. in Wasser, $a_L$ = Abstand auf Schirm von 0. zu 1. Max. in Luft.

**Leite diese Formel begründet her.**

<details>

  <summary>Lösungsvorschlag</summary>
  
Der Zusammenhang bei Licht zwischen der Ausbreitungsgeschwindigkeit $c$, der Frequenz $f$ und der Wellenlänge $\lambda$ wird beschrieben mit: $c = f \cdot \lambda$.

Für Wasser gilt: $c_W = f_W \cdot \lambda_W$. und für Luft gilt: $c_L = f_L \cdot \lambda_L$.

Aus der Aufgabenstellung kann verwendet werden, dass sich die Frequenz des Lichts beim Übergang in ein anderes Medium nicht ändert. Es gilt also 

$$
 f_W = \frac{c_W}{\lambda_W} = \frac{c_L}{\lambda_L} = f_L
$$

Löst man diese Gleichung nach $c_W$ auf, folgt:

$$
 c_W = c_L \cdot \frac{\lambda_W}{\lambda_L}
$$

Mit 

$$
 \lambda_W = \frac{g}{n} \cdot \sin \left[ \arctan \left(\frac{a_W}{e} \right) \right]
$$

und 

$$
 \lambda_L = \frac{g}{n} \cdot \sin \left[ \arctan \left(\frac{a_L}{e} \right) \right]
$$

folgt

$$
 c_W = c_L \cdot \frac{\lambda_W}{\lambda_L} = c_L \cdot \frac{\frac{g}{n} \cdot \sin \left[ \arctan \left(\frac{a_W}{e} \right) \right]}{\frac{g}{n} \cdot \sin \left[ \arctan \left(\frac{a_L}{e} \right) \right]} = c_L \cdot \frac{\sin \left[ \arctan \left(\frac{a_W}{e} \right) \right]}{\sin \left[ \arctan \left(\frac{a_L}{e} \right) \right]}
$$

**Damit ist die Formel begründet hergeleitet worden.**

</details>

---

## Aufgabe 4

Schickt man Mikrowellen auf eine Anordnung von einigen Reihen mit Metallstäben (die Reihen haben einen Abstand $d$), dann kann man unter einem Glanzwinkel $\alpha$ mit einem geeigneten Detektor Maxima feststellen.
 
**Leite** begründet mit Hilfe einer geeigneten Skizze eine Formel für den Zusammenhang zwischen der Wellenlänge $\lambda$ der Mikrowellenstrahlung und dem Glanzwinkel $\alpha$ **her**.

<details>

  <summary>Lösungsvorschlag</summary>
  
Die Situation wird mit Hilfe der folgenden Skizze veranschaulicht:

![](bragg_modell_01.png)

Zur Vereinfachung der Rechnung wird im folgenden wieder die Näherung verwendet, dass bei einem hinreichend großen Abstand zwischen dem Hindernis und dem Detektor die interferierenden Wellenzüge als näherungsweise parallel angenommen werden können. Dann können die Sätze der Trigonometrie am rechtwinkeligen Dreieck angewendet werden.

Wie in Abbildung 1 gezeigt wird, legt der Lichtstrahl 2 aufgrund der versetzten Reihen von Metallstäben bis zum Detektor einen weiteren Weg als der Lichtstrahl 1 zurück. Der Gangunterschied beträgt insgesamt $\Delta s$.

Nach dem Huygensschen Prinzip senden die Metallstäbe gleichphasige Elementarwellen aus. Ist der Gangunterschied zweier gleichphasiger Wellenzüge ein ganzzahliges Vielfaches der Wellenlänge $\lambda$, verstärken sie sich zu einem Maximum (konstruktive Interferenz). Es gilt dann

$$
\Delta s = n \cdot \lambda \:\:\: \text{mit} \:\:\: n = 1, 2,...
$$

Den Glanzwinkel $\alpha$, unter dem der Mikrowellenstrahl die Metallstabreihe trifft, findet man in dem rechtwinkeligen Dreieck wieder, das durch das Lot auf den zweiten Lichtstrahl, den Abstand $d$ zwischen den beiden Metallstabreihen und der Hälfte des Gangunterschieds $\Delta s$ gebildet wird (siehe Abbildung 2).

![](bragg_modell_01.png)

Es gilt also

$$
\sin(\alpha) = \frac{\text{Gegenkathete}}{\text{Hypothenuse}} = \frac{\frac{\Delta s}{2}}{d} = \frac{\Delta s}{2 \cdot d}
$$

Mit $\Delta s = n \cdot \lambda$ folgt:

$$
\sin(\alpha) = \frac{n \cdot \lambda}{2 \cdot d}
$$

Formt man diese Gleichung so um, dass $n \cdot \lambda$ auf der linken Seite stehen, folgt

$$
n \cdot \lambda = 2 \cdot d \cdot \sin(\alpha)
$$

**Damit ist der Zusammenhang zwischen der Wellenlänge $\lambda$ und dem Glanzwinkel $\alpha$ erfolgreich hergeleitet worden.**

</details>

---