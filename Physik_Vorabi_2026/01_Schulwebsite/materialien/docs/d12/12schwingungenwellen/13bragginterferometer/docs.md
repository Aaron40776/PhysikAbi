## Bragg-Interferometer

> **Bezug zum Kerncurriculum:**  
> - Ich kann ein Experiment zur Bestimmung der Wellenlänge von Röntgenstrahlung mit Bragg-Reflexion beschreiben.
> - Ich kann ein Verfahren zur Aufnahme eines Röntgenspektrums erläutern.
> - Ich kann die Bragg-Gleichung selbstständig und begründet herleiten.

---

## Bragg-Interferenz

Das **Bragg-Interferometer** basiert auf der sogenannten **Bragg-Reflexion** von Wellen:

- Dabei treffen elektromagnetische Wellen auf eine regelmäßige Anordnung von Hindernissen. 

- Die Hindernisse sind dabei dreidimensional in Reihen nebeneinander, übereinander und hintereinander angeordnet (z.B. regelmäßig angeordnete Metallstäbe, ein Kristall bestehend aus einer regelmäßigen Anordnung von Kristallatomen,...).

Wenn ein elektromagnetischer Wellenzug das Hindernis erreicht, regt das elektromagnetische Wechselfeld der Welle die Elektronen im Hindernis zu Schwingungen an. 

Die beschleunigten Elektronen senden sofort wieder elektromagnetische Wellen in alle Raumrichtungen aus. Die in alle Raumrichtungen ausgesandten Wellen interferieren. 

Die ankommenden elektromagnetischen Wellenzüge werden vom Hindernis nach dem Reflexionsgesetz reflektiert, d.h. der Reflexionswinkel ist gleich dem Einfallswinkel.

Wenn man ein Hindernis wählt, bei welchem die Reflexionsorte (z.B. Metallstäbe oder Atome) regelmäßig angeordnet sind, dann werden Wellenzüge, die parallel auf das Hindernis treffen, so reflektiert, dass sie nach dem Hindernis wieder parallel zueinander orientiert sind. Unter bestimmten Winkeln kann man dann bei den reflektierten Wellenzügen **Maxima** und **Minima** beobachten.

> Simulation in neuem Fenster starten: <a href="/apps/suw/25_bragginterferenz/bragginterferenz.html" target="_blank">Bragg-Interferenz</a>

<iframe frameborder="0" src="/apps/suw/25_bragginterferenz/bragginterferenz.html" width="100%" height="570" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop" und dann auf "2 Wellenzüge aussenden". **Beobachte** die beiden rotierenden Zeiger, die den Wellenzügen zugeordnet sind (Rot und Orange) und den resultierenden Zeiger am Interferenzort (Blau).

2. **Variiere** den Glanzwinkel unter dem die Wellenzüge auf das Hindernis auftreffen und **beobachte** jeweils die Auswirkung auf die Interferenz.

3. **Verändere** bei der Wellenlänge 75 den Glanzwinkel von 0 bis 90° und **beobachte** das Interferenzbild. **Stelle** die Wellenlänge auf einen sehr kleinen Wert und einen sehr großen Wert ein, **nimm** das Interferenzbild auf und **vergleiche** die Interferenzbilder miteinander. **Stelle** eine Hypothese auf, welcher Gitterabstand zu welcher Wellenlänge gewählt werden sollte, damit auswertbare Interferenzbilder entstehen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Modellierung der Interferenz:

- Beide Zeiger rotieren mit der gleichen Geschwindigkeit, da die beiden Wellenzüge gleiche Wellenlänge und damit gleiche Frequenz haben.

- Beide Wellenzüge breiten sich mit der gleichen Phasengeschwindigkeit aus, da alle elektromagnetischen Wellen im gleichen Medium immer gleich schnell sind. 

- Bei einer elektromagnetischen Welle ist die Phasengeschwindigkeit die Lichtgeschwindigkeit (ca. 300.000 km/s) und die Zeiger rotieren extrem schnell. Damit man die Situation nachvollziehen kann, läuft die Simulation in extremer Zeitlupe. 

- Sobald ein Sender einen Wellenzug ausgesandt hat, lässt man den Zeiger, der dem Wellenzug zugeordnet ist, so lange rotieren, bis der Wellenzug den Interferenzort erreicht hat. Der rote und der orangene Kreis, die jeweils vom Sender zum Interferenzort unterwegs sind, modellieren die Bewegung des Wellenzugs mit der Phasengeschwindigkeit $c$.

- Der untere Weg zum Interferenzort ist länger als der obere Weg. Der Gangunterschied der beiden Wellenzüge ist die grün markierte Strecke. Der untere Wellenzug muss also einen längeren Weg zum Interferenzort zurücklegen, als der obere, weswegen der orangene Zeiger länger rotiert.

- Sobald beide Zeiger zur Ruhe gekommen sind, addiert man die beiden Zeiger und der blaue Zeiger zeigt die resultierende Amplitude am Interferenzort an. Wenn man das Quadrat der Zeigerlänge bildet, kann man die Intensität, die ein Messgerät messen würde, berechnen.

- In der Zeichnung werden die interferierenden Wellenzüge parallel modelliert, damit die bald folgende Mathematik einfach bleibt. Natürlich treffen sich die interferierenden Wellenzüge in einem Punkt.

![](bragg01.jpg)

![](bragg02.jpg)

**Zu 2.**: Bei bestimmten Glanzwinkeln beobachtet man ein **Maximum**. Das ist dann der Fall, wenn der Gangunterschied ein Vielfaches der Wellenlänge $\lambda$ ist. Im Zeigermodell bedeutet das, dass der Zeiger sich genau eine volle Umdrehung weiterdreht, während der Wellenzug den Gangunterschied durchfliegt. Damit liegen beide Zeiger wieder genau übereinander, so dass der resultierende Zeiger doppelte Amplitude hat.

![](bragg03.jpg)

Bei bestimmten Glanzwinkeln beobachtet man ein **Minimum**. Das ist dann der Fall, wenn der Gangunterschied ein ungeradzahliges Vielfaches der halben Wellenlänge $\lambda$ ist. Im Zeigermodell bedeutet das, dass der Zeiger sich ein ungeradzahliges Vielfaches einer halben Umdrehung weiterdreht, während der Wellenzug den Gangunterschied durchfliegt. Damit liegen beide Zeiger genau gegenüber, so dass der resultierende Zeiger eine Null-Amplitude hat.

![](bragg04.jpg)

**Zu 3.**: Interferenzbild für eine Wellenlänge, die deutlich kleiner als der Gitterabstand ist:

![](bragg06.jpg)

Interferenzbild für eine Wellenlänge, die etwa gleich groß wie der Gitterabstand ist:

![](bragg05.jpg)

Interferenzbild für eine Wellenlänge, die deutlich größer als der Gitterabstand ist:

![](bragg07.jpg)

</details>

Bei der **Bragg-Interferenz** muss die **Wellenlänge der elektromagnetischen Wellen zum Gitterabstand des Hindernisses passen**, damit auswertbare Interferenzbilder entstehen:
 
- wenn die Wellenlänge deutlich kleiner als der Gitterabstand ist, liegen die Maxima so nah beieinander, dass sie mit Messgeräten nicht mehr unterschieden werden können,

- wenn die Wellenlänge deutlich größer als der Gitterabstand ist, kann man nur das 0. Maximum beobachten.

---

## Modellierung der Bragg-Interferenz

Wir nehmen vereinfachend an, dass die interferierenden Wellenzüge parallel zueinander verlaufen. Dadurch vereinfacht sich die Geometrie, mit deren Hilfe man die Interferenzsituation modellieren kann. 

Der Gangunterschied $\Delta s$ der beiden elektromagnetischen Wellenzüge kann mit Hilfe der Trigonometrie im rechtwinkeligen Dreieck in Zusammenhang mit dem Gitterabstand $d$ und dem Glanzwinkel $\alpha$ gebracht werden.

Dazu werden an die betrachteten Reflektionsorte zwei rechtwinkelige Dreiecke gezeichnet. 

![](bragg_modell_01.png)

Wie man der Skizze entnehmen kann, folgt aus dem Nebenwinkelsatz, dass der Glanzwinkel $\alpha$ auch im rechtwinkeligen Dreieck vorkommt.

![](bragg_modell_02.png)

Das Dreieck, das aus der Hypotenuse $d$ und dem halben Gangunterschied $\frac{\Delta s}{2}$ gebildet wird, ist ein rechtwinkeliges Dreieck. Es gilt: 

$$
\sin(\alpha) = \frac{\text{Gegenkathete}}{\text{Hypotenuse}} = \frac{\frac{\Delta s}{2}}{d} = \frac{\Delta s}{2 \cdot d}
$$

Für den Gangunterschied $\Delta s$ der beiden Wellenzüge gilt also:

$$
  \Delta s  = 2 \cdot d \cdot \sin(\alpha)
$$

Wenn die beiden Wellenzüge kohärent sind und der Gangunterschied ein ganzzahliges Vielfaches der Wellenlänge $\lambda$ ist, dann beobachtet man am Interferenzort ein **Maximum** (konstruktive Interferenz). Es gilt dann:

$$
  \Delta s = n \cdot \lambda \:\:\: \text{mit} \:\:\: n = 0, 1, 2,...
$$

Wenn die beiden Wellenzüge kohärent sind und der Gangunterschied ein ungeradzahliges Vielfaches der halben Wellenlänge $\lambda$ ist, dann beobachtet man am Interferenzort ein **Minimum** (destruktive Interferenz). Es gilt dann:

$$
  \Delta s = (2 n + 1) \cdot \frac{\lambda}{2} \:\:\: \text{mit} \:\:\: n = 0, 1, 2,...
$$

> [!NOTE]
> Bei der **Bragg-Reflexion** einer elektromagnetischen Welle der Wellenlänge $\lambda$ an einem dreidimensionalen Hindernis mit dem Gitterabstand $d$ beobachtet man ein **Maximum**, wenn für den Gangunterschied $\Delta s$ gilt:
> 
> $$ \Delta s = n \cdot \lambda = 2 \cdot d \cdot \sin(\alpha) $$

Für die Winkel, unter welchen ein Maximum beobachtet werden kann, gilt:

$$
  \alpha = \arcsin \left( \frac{n \cdot \lambda}{2 \cdot d} \right)
$$

---

## Bragg-Interferometrie

Der Arcussinus ist nur für Argumente zwischen -1 und 1 definiert, da der Sinus eines Winkels nur Werte zwischen -1 und 1 liefert. 

Aus der hergleiteten Formel $ \alpha = \arcsin \left( \frac{n \cdot \lambda}{2 \cdot d} \right) $ folgt, dass nur dann unter einem Winkel $\alpha$ Interferenz beobachtet werden kann, wenn der Quotient $\frac{n \cdot \lambda}{2 \cdot d}$ einen Wert zwischen -1 und 1 annimmt.

Da die Parameter $n$, $\lambda$, und $d$ im physikalischen Zusammenhang immer positiv sind, kann der Quotient $\frac{n \cdot \lambda}{2 \cdot d}$ nur positive Werte annehmen. 

Wir können in unserer Betrachtung die negativen Werte also weglassen. Damit der $\arcsin \left( \frac{n \cdot \lambda}{2 \cdot d} \right)$ definiert ist, muss also gelten, dass:

$$
  0 \leq \frac{n \cdot \lambda}{2 \cdot d} \leq 1
$$

Löst man diese Ungleichung nach $\lambda$ auf, folgt:

$$
  0 \leq \lambda \leq \frac{2 \cdot d}{n}
$$

Man kann nur dann ein 1. Maximum mit $n = 1$ beobachten, wenn die Wellenlänge $\lambda$ kleiner als $2 \cdot d$ ist. 

Für Maxima höherer Ordnung muss die Wellenlänge noch kleiner werden, da der Nenner mit größerem $n$ größer und damit der Bruch kleiner wird. 

**Mikrowellen** haben eine Wellenlänge im **Zentimeterbereich**. Man könnte also ein Hindernis entwerfen, dessen Metallstangen wenige Zentimeter entfernt voneinander stehen, um ein 1. Maximum beobachten zu können.

**Röntgenstrahlen** haben eine Wellenlänge im **Pikometerbereich** ($10^{-12}$). Diese Wellenlänge ist so kurz, dass man ein 1. Maximum klar messen kann, wenn das Hindernis Reflexionsorte in extrem kurzem Abstand hat. 

Das ist z.B. bei Kristallen der Fall, wenn man die Atome als Hindernis verwendet. Die Atome können die elektromagnetischen Wellen wie kleine Antennen aufnehmen, beginnen dann zu schwingen und senden wieder wie ein kleiner Sender elektromagnetische Wellen aus.

Mit Hilfe der Bragg-Reflexion kann man:

- die Wellenlänge $\lambda$ unbekannter Röntgenstrahlung ermitteln, wenn man den Gitterabstand $d$ in einem Kristall kennt:

$$
  \lambda = 2 \cdot d \cdot \sin(\alpha)
$$

- den Gitterabstand $d$ eines unbekannten Kristalls ermitteln, wenn man die Wellenlänge $\lambda$ der verwendeten Röntgenstrahlung kennt:

$$
  d = \frac{\lambda}{2 \cdot \sin(\alpha)}
$$

und jeweils das 1. Maximum der reflektierten Wellenzüge misst.

Bisher haben wir bei der Betrachtung der Bragg-Reflexion **zwei Wellenzüge** betrachtet, die miteinander **interferieren**. Die resultierenden Interferenzbilder ähneln denen eines Doppelspalts, bei dem relativ breite Maxima entstehen:

![](bragg05.jpg)

Zum Vergleich folgt das Interferenzbild eines Doppelspalst mit Licht:

![](02spalt.jpg)

Bei der Bragg-Reflexion an einem **Einkristall** (ein idealer Kristall mit einer perfekten Anordnung der Atome) werden **sehr viele Wellenzüge reflektiert** und interferieren miteinander. Das Interferenzbild verändert sich dann so, wie Sie es im Kapitel "Vom Doppelspalt zum Gitter" gelernt haben.

Interferenzbild von sichtbarem Licht bei einem Gitter mit 100 Spaltöffnungen:

![](100spalt.jpg)

Die Maxima sind scharf und zwischen den Maxima misst man praktisch keine Intensität, da die Wellenzüge destruktiv interferieren.

**Anwendung:** Erzeugung monochromatischer Röntgenstrahlung

Wenn man **polychromatisches Röntgenlicht** (Röntgenlicht mit sehr vielen unterschiedlichen Frequenzen) an einem Kristall reflektiert, dann sind die beobachteten Maxima scharf. Die Folge ist, dass für hinreichend kleine Glanzwinkel nur das Maximum genau einer Wellenlänge beobachtet wird. 

Wenn man das Licht dann geeignet weiterleitet, hat man Röntgenlicht mit nur genau einer Wellenlänge zur Verfügung. Damit hat man **monochromatisches Röntgenlicht** erzeugt.

Bei größeren Winkeln kann es sein, dass Maxima höherer Ordnung beobachtet werden können, die dann die Maxima anderer Wellenlängen überlagern. Daher sollte der Glanzwinkel nicht zu groß gewählt werden.

---

## Drehkristall-Experiment

Eine weitere Anwendung der Bragg-Reflexion ist die **Analyse eines Röntgenspektrums**. Schickt man Röntgenlicht auf einen Drehkristall, kann man die Intensität der einzelnen Wellenlängen messen, da bei jedem Glanzwinkel das Maximum von nur einer einzigen Wellenlänge liegt. Auch hier gilt, dass die Winkel klein genug bleiben sollten.

In der **Röntgenröhre** werden Elektronen mit Hilfe einer Beschleunigungsspannung auf hohe kinetische Energien beschleunigt. Sie prallen innerhalb der Röhre auf eine **Metallanode** und werden dort abgebremst. 

Abgebremste Elektronen senden die Energie, die sie bei der Bremsung verlieren, in Form von elektromagnetischen Wellen aus. Die meisten elektromagnetischen Wellen haben eine Wellenlänge im Bereich der Wärmestrahlung, so dass die Anode sehr warm wird. 

Manche Elektronen werden aber so stark abgebremst, dass Wellen mit extrem kurzer Wellenlänge ausgesendet werden, die die Metallanode verlassen können. Röntgenlicht wird in alle Raumrichtungen ausgesendet.  

Mit Hilfe eines **Kollimators** werden in eine bestimmte Richtung nur parallele Wellenzüge der Röntgenstrahlung durchgelassen, die anderen Wellenzüge werden aufgenommen (absorbiert).

Die parallelen Wellenzüge treffen auf einen Kristall (z.B. NaCl = Natrium-Chlorid, LiF = Lithium-Fluorid) und werden dort reflektiert. Auf der anderen Seite des Kristalls beobachtet man mit Hilfe eine Detektors unter demselben Winkel, in dem die Wellenzüge auf den Kristall getroffen sind (Glanzwinkel), ein Maximum. 

Die Bragg-Gleichung liefert die Wellenlänge der Röntgenstrahlung, welche das beobachtete Maximum erzeugt:

$$
  \lambda = 2 \cdot d \cdot \sin(\alpha)
$$

Mit Hilfe eines geeigneten Detektors (z.B. ein Geiger-Müller-Zählrohr), kann man die Intensität der Röntgenstrahlung bestimmen, die das Maximum erzeugt.

---

### Simulation: Drehkristallexperiment

> Simulation in neuem Fenster starten: <a href="/apps/suw/26_drehkristall/drehkristall.html" target="_blank">Drehkristall-Versuch</a>

<iframe frameborder="0" src="/apps/suw/26_drehkristall/drehkristall.html" width="100%" height="570" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Klicke** auf "Experiment Start/Stop". **Verändere** den Glanzwinkel und **beobachten**, wie sich der Drehkristall und der Detektor relativ zueinander drehen.

2. **Aktiviere** "Graph für NaCl-Kristall" und **verändere** den Glanzwinkel.

3. **Aktiviere** gleichzeitig "Graph für LiF-Kristall" und **vergleiche** die beiden Graphen. **Stelle** eine begründete Hypothese auf, warum sich die beiden Graphen bei gleicher Röntgenröhre unterscheiden.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Wenn der Kristall um einen Glanzwinkel $\alpha$ gedreht wird, muss der Detektor um einen doppelt so großen Winkel gedreht werden, damit der unter dem Glanzwinkel reflektierte Strahl den Detektor erreicht.

![](bragg08.jpg)

**Zu 2.**: Bei jedem Glanzwinkel beobachtet man eine andere Intensität der reflektierten Strahlung. Da man für jeden Winkel ein 1. Maximum beobachtet, kann man aus dem Winkel die Wellenlänge bestimmen. Man sieht, dass das Spektrum einer Röntgenröhre nicht gleichmäßig verläuft. Warum das so ist, lernen Sie im Thema "Atomhülle". Rechts im Spektrum können Sie das 2. und 3. Maximum beobachten, welche bereits andere Wellenlängen überlagert.

![](bragg09.jpg)

**Zu 3.**: Die beiden Graphen haben ähnliche Struktur. Die Graphen sind aber versetzt und die Abstände zwischen den Maxima sind nicht genau gleich. Hypothese: die Gitterkonstanten der beiden Kristallgitter sind nicht gleich, weswegen das 1. Maximum einer Wellenlänge bei einem anderen Glanzwinkel beobachtet wird.

![](bragg10.jpg)

</details>

---
