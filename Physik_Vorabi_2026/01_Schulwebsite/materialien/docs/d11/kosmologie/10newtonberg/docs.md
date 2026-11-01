## Newton-Berg

Die **Gravitation** bestimmt die Bewegung der Objekte im Kosmos. Eine Möglichkeit der Modellierung von Gravitationswirkungen ist das **Newtonsche Gravitationsgesetz**:

$$
 F_{G} = G \, \cfrac{m_1 \cdot m_2}{r^2}
$$

- $F_{G} = \text{Kraft zwischen zwei Massen in Newton (N)}$  
- $G = \text{Gravitationskonstante}$  
- $m_1, m_2 = \text{Masse der beiden Körper in Kilogramm (kg)}$  
- $r = \text{Abstand der beiden Körper in Meter (m)}$

Im newtonschen Gravitationsgesetz steht die **Gravitationskonstante** als Faktor. Also ist die Gravitationskraft proportional zur Gravitationskonstanten:

$$
    F_{G} \sim G
$$

In einem anderen Universum, in welchem die Gravitationskonstante doppelt so größ wäre, als in unserem, wäre die Gravitationskraft, bei ansonsten gleichen Parametern, doppelt so groß. 

Auch die Masse der beteiligten Objekte steht als Faktor im Gravitationsgesetz. Also ist die Gravitationskraft jeweils proportional zur Masse der Körper die aufeinander eine Gravitationskraft bewirken:

$$
    F_{G} \sim m
$$

---

## Gravitation zwischen Sonnen

In der ersten Simulation werden Sonnen, die eine bestimmte Masse haben, in einen ansonsten leeren Kosmos gesetzt. Die Sonnen werden an ihrem Ort festgesetzt, die Gravitationskraft hat also keine Beschleunigung zur Folge. 

> Simulation in neuem Fenster starten: <a href="/apps/wpkphysik/gravlab1/gravlab1.html" target="_blank">Gravitation zwischen Sonnen</a>

<iframe src="/apps/wpkphysik/gravlab1/gravlab1.html" width="100%" height="650" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Aufgaben</summary>
  
**A01:** **Setze** in die leere Simulation eine einzige Sonne, indem du auf **Sonne einfügen** klickst und **bewege** diese. Es sind **keine** Kraftvektoren zu sehen. Warum?

**A02:** **Setze** eine zweite Sonne in den Kosmos und **bewege** diese. **Beobachte** die Richtung und den Betrag der Gravitationskräfte. **Warum** wird die Gravitationskraft schnell sehr klein, wenn sich die beiden Sonnen voneinander entfernen und warum wird die Gravitationskraft sehr groß, wenn sich der Abstand der Sonnen stark verkleinert? **Erkläre** damit, warum Sonnen Milliarden von Jahre stabil und ohne auseinanderzufallen durch den Kosmos fliegen können.

**A03:** **Entferne** alle Sonnen und **setze** zwei Sonnen mit deutlich unterschiedlichen Massen in den Kosmos. **Warum** sind die Kraftpfeile gleich lang, d.h. warum ist die wirkende Kraft für beide Sonnen gleich groß, obwohl diese unterschiedliche Massen haben?

**A04:** **Setze** drei Sonnen etwa gleicher Masse in den Kosmos. **Welche** Bedeutung haben die grauen Pfeile? **Klicke** bei drei vorhandenen Sonnen auf **resultierende Kraft**. **Wie** kann man die resultierende Kraft, die insgesamt auf eine Sonnen wirkt, aus den grauen Pfeilen konstruieren? **Klicke** auf **Kräfteaddition anzeigen**, um einen Hinweis zu bekommen.

**A05:** **Entwickle** eine Formel, mit deren Hilfe man berechnen kann, wie viele Kraftpfeile (ohne resultierende Kraftpfeile und ohne Hilfspfeile) bei $n$ Sonnen insgesamt vorhanden sind.

</details>

<details>

  <summary>Lösungsvorschlag</summary>
  
**Zu A01:** Damit wir eine Aussage darüber machen können, ob eine Gravitationskraft wirkt, müssen zwei Sonnen vorhanden sein, damit wir die Wirkung der Gravitationskraft messen können. Ohne eine zweite Sonne können wir keine Wirkung beobachten und können daher keine Aussage über das Vorhandenseine einer wirkenden Kraft machen.

**Zu A02:** Die wirkenden Gravitationskräfte sind jeweils auf den Mittelpunkt der anderen Sonne gerichtet. Für die wirkende Gravitationskraft gilt, dass der Betrag der Kraft antiproportional zum Quadrat des Abstands zwischen den Sonnen ist:

$$
    F_{G} \sim \frac{1}{r^2}
$$

Wenn die Entfernung zwischen den Sonnen halbiert wird, verdoppelt sich die wirkende Kraft. In der mathematischen Modellierung gilt daher, dass die wirkende Gravitationskraft beliebig groß wird, wenn man den Abstand zwischen den Sonnen beliebig klein denkt. Zwischen den Massen, aus denen eine Sonne aufgebaut ist, wirkt eine große Gravitationskraft, da der Abstand zwischen den Massen sehr klein ist. Daher sind Sonnen dauerhaft stabil.

**Zu A03:** Die wirkende Gravitationskraft zwischen zwei Äpfeln ist so gering, dass sie nur schwer messbar ist. Die wirkende Kraft zwischen der Erde und einem Apfel ist so groß, dass der Apfel deutlich sichtbar in Richtung Erde beschleunigt wird. Der Betrag der Kraft des Apfels auf die Erde ist genauso groß. Wegen $F = m \cdot a$ und folglich

$$
    a = \frac{F}{m}
$$

ist die Beschleunigung, welche die Erde wegen der zwischen ihr und dem Apfel wirkenden Kraft erfährt, so klein, dass man keine Wirkung auf die Erde beobachten kann.

**Zu A04:** Die grauen Pfeile modellieren die wirkende Kraft zwischen jeweils zwei Sonnen. Da auf jede Sonne gleichzeitig zwei verschiedenen Kräfte wirken kann man die resultierende Kraft bestimmen, indem man die Parallelogrammkonstruktion für die resultierende Kraft anwendet.

**Zu A05:** Bei $n$ Sonnen gibt es bei jeder Sonne $n - 1$ Kraftpfeile. Also gibt es insgesamt 

$$
    n \cdot (n - 1)
$$

Kraftpfeile.

</details>

---

## Der Newton-Berg

Newton erdachte ein Gedankenexperiment, das er im Kapitel **A Treatise of the System of the World** in seinen Principia erklärte:

> Let AFB represent the surface of the earth, C its centre, VD, VE, VF, the curve lines which a body would describe, if projected in an horizontal direction from the top of an high mountain successively with more and more velocity (p. 400); and, because the celestial motions are scarcely retarded by the little or no resistance of the spaces in which they are performed, to keep up the parity of cases, let us suppose either that there is no air about the earth, or at least that it is endowed with little or no power of resisting; and for the same reason that the body projected with a less velocity describes the lesser arc VD, and with a greater velocity the greater arc VE, and, augmenting the velocity, it goes farther and farther to F and G, if the velocity was still more and more augmented, it would reach at last quite beyond the circumference of the earth, and return to the mountain from which it was projected.

![A Treatise of the System of the World (Isaac Newton)](Principia1846-513.png?cropResize=500,500)

Quelle: [Wikisource](https://en.wikisource.org/wiki/Page:Newton%27s_Principia_(1846).djvu/519)  

---

### Rechnung zum Newton-Berg

Wir betrachten einen Satelliten der Masse $m_S$. 

- Solange keine Kraft auf den Satelliten wirkt, bewegt sich dieser nach dem 1. Newtonschen Grundgesetz geradlinig mit konstanter Geschwindigkeit. Dafür müsste der Satellit alleine im Kosmos sein, denn alle Körper üben aufeinander die Gravitationskraft aus. 

- Wir denken uns also einen vollständig leeren Kosmos, in dem sich einsam ein Satellit bewegt. 

- Da es keine Objekte gibt, an denen der Satellit vorbeifliegen könnte, können wir nicht unterschieden, ob sich der Satellit bewegt oder ruht, wir können ihn uns also auch als ruhend vorstellen.

Jetzt setzen wir in die Nähe des Satelliten einen Planeten, so dass beide relativ zueinander ruhen. Was wird passieren? 

- Zwischen dem Planeten und dem Satelliten wirkt jetzt die Gravitationskraft und der Satellit würde in Richtung des Planeten beschleunigt werden, genauso wie der Planet in Richtung des Satelliten beschleunigt wird.

Nach dem Newtonschen Gravitationsgesetz ist die Kraft zwischen der Erde und dem Satelliten für beide gleich groß, aber entgegengesetzt gerichtet. 

- Aus der Formel $F_G = m \cdot a$ folgt $a = \frac{F_G}{m}$, wo die Masse im Nenner steht, weswegen der Satellit stärker beschleunigt wird als der Planet, da der Planet eine sehr viel größere Masse hat, als der Satellit. 

- Bei genügend großer Masse des Planeten ist seine Beschleunigung so klein, dass sie praktisch nicht gemessen werden kann.

Wenn der Satellit jetzt eine Anfangsgeschwindigkeit relativ zum Planeten besitzt, dann bewirkt die Gravitationskraft eine Beschleunigung des Satelliten, welche seine Flugbahn verändert. Wir nehmen nun an, dass sich der Satellit anfänglich parallel zur Oberfläche des Planeten bewegt. 

Newtonsches Gedankenexperiment: **Wie groß muss die Geschwindigkeit des Satelliten sein, damit er diesen auf einer Kreisbahn umrunden kann?**

Diese Geschwindigkeit soll jetzt berechnet werden. Ein Körper der Masse $m$ bewegt sich auf einer Kreisbahn mit dem Radius $r$ und einer Bahngeschwindigkeit $v$ wenn er mit der Zentripetalkraft $F_{ZP}$ auf seine Bahn gezwungen wird:

$$
 F_{ZP} = \frac{m \cdot v^2}{r}
$$

Die Zentripetalkraft ist im Fall des Satelliten die Gravitationskraft $F_G = \frac{G \cdot m_E \cdot m_S}{r^2}$, die zwischen dem Satelliten und der Erde wirkt. Also gilt:

$$
    \begin{align}
        F_{ZP} &= F_G \\
        \frac{m_S \cdot v^2}{r} &= \frac{G \cdot m_E \cdot m_S}{r^2} \quad | :m_S\\
        \frac{v^2}{r} &= \frac{G \cdot m_E}{r^2} \quad | \cdot r \\
        v^2 &= \frac{G \cdot m_E}{r} \quad | \sqrt {}\\
        v &= \sqrt{\frac{G \cdot m_E}{r}} \\
    \end{align}
$$

Die Geschwindigkeit, die notwendig ist, damit der Satellit einen Planeten auf einer Kreisbahn umfliegen kann, wird berechnet mit der Formel:

$$
    v = \sqrt{\frac{G \cdot m_E}{r}}
$$

- $v = \text{Bahngeschwindigkeit des Satelliten}$  
- $G = \text{Gravitationskonstante}$  
- $m_E = \text{Masse der Erde}$  
- $r = \text{Abstand zwischen Mittelpunkt der Erde und Satellit}$  

Sucht man zu einer gegebenen Geschwindigkeit $v$ des Satelliten die notwendige Entfernung $r$ zum Erdmittelpunkt, kann man diese Formel nach $r$ auflösen:

$$
    \begin{align}
        v^2 &= \frac{G \cdot m_E}{r} \quad | \cdot r, \, : v^2 \\
        r &= \frac{G \cdot m_E}{v^2}
    \end{align}
$$

Die Entfernung $r$ zum Erdmittelpunkt, mit der ein Satellit die Erde umrunden muss, damit er diese mit der Bahngeschwindigkeit $v$ auf einer Kreisbahn umfliegt, kann berechnet werden mit der Formel:

$$
    r = \frac{G \cdot m_E}{v^2}
$$

---

### Aufgabe

**Berechne** mit den realistischen Daten (die im Internet oder der Formelsammlung zu finden sind ) die Lösung für das Newtonsche Gedankenexperiment - also die notwendige Bahngeschwindigkeit $v$ eines Satelliten parallel zur Erdoberfläche, der in einer Höhe von 10 km die Erde umrunden soll. Dazu nehmen wir an, dass der Luftwiderstand in einer Höhe von 10 km gleich Null ist.

---

## Simulation zum Newton-Berg

> Simulation in neuem Fenster starten: <a href="/apps/wpkphysik/gravlab2/gravlab2.html" target="_blank">Newton-Berg</a>

<iframe src="/apps/wpkphysik/gravlab2/gravlab2.html" width="100%" height="650" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Aufgaben</summary>
  
**A01:** **Klicke** ohne die Parameter zu ändern auf **Animation starten**. Der Satellit fällt geradlinig auf die Erde. **Erkläre** das Verhalten.

**A02:** **Erhöhe** schrittweise die Anfangsgeschwindigkeit des Satelliten (die parallel zur Erdoberfläche gerichtet ist). **Warum** verändert sich die Flugbahn des Satelliten?

**A03:** **Berechne** mit Hilfe der oben hergeleiteten Formel für die Startparameter Gravitationskonstante = 1; Masse der Erde = 600 000 ME, Radius = 150 Pixel die Anfangsgeschwindigkeit des Satelliten, so dass dieser in guter Näherung auf einer Kreisbahn die Erde umrundet. **Bestätige** in der Simulation die berechnete Anfangsgeschwindigkeit des Satelliten. Der Messwert **maximale Kreisabweichung** gibt dabei die Abweichung von der Startentfernung des Satelliten zum Erdmittelpunkt an.

**A04:** **Setze** die Masse des Satelliten auf 100 und die Geschwindigkeit auf 50. **Finde** eine Entfernung, bei welcher der Satellit in guter Näherung eine Kreisbahn fliegt. **Bestätige** diese Entfernung durch eine Rechnung mit Hilfe der oben hergeleiteten Formel.

**A05:** Mit der in Aufgabe A04 gefundenen Entfernung, **setze** die Masse des Satelliten zuerst auf 1000 und dann auf den Maximalwert 2010. **Dokumentiere**, welche Flugbahn jeweils erwartet wird. **Vergleiche** deine Erwartung mit der Simulation. **Erkläre** die Flugbahn von Satellit und Erde.

</details>

---