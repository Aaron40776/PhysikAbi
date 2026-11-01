## Orbital-Modell

> **Bezug zum Kerncurriculum:**
> - Ich kann die Orbitale des Wasserstoffatoms bis n = 2 beschreiben.
> - Ich kann einen Zusammenhang zwischen Orbitalen und Nachweiswahrscheinlichkeiten für Elektronen anschaulich herstellen.
> - Ich kann die „Orbitale“ bis n = 2 in einem dreidimensionalen Potenzialtopf beschreiben.
> - Ich kann die Gemeinsamkeiten zwischen den Orbitalen des Wasserstoffatoms und denen des dreidimensionalen Potenzialtopfs erläutern.
> - Ich kann das Pauliprinzip erläutern.
> - Ich kann die maximale Anzahl der Elektronen im dreidimensionalen Potenzialtopf bis n = 2 bestimmen.

---

## Vom Elektron zum Orbital

Das Orbitalmodell modelliert den **Quantenzustand** eines Elektrons. Wir betrachten hier das Wasserstoffatom als einfachstes Atom mit einem Elektron und einem Proton.

Dem Zustand eines Elektrons im Wasserstoffatom ist die Wellenfunktion $\Psi$ zugeordnet. Das Quadrat des Betrags der Wellenfunktion liefert die **Wahrscheinlichkeitsdichte** $\rho$:

$$
\rho(x,y,z) = \lvert\Psi(x,y,z)\rvert^2
$$

Die **Wahrscheinlichkeitsdichte** $\rho$ gibt an, an welchen Orten im Wasserstoffatom ein Elektron bei vielen gleich durchgeführten Messungen häufig beziehungsweise selten nachgewiesen wird. Die Wahrscheinlichkeit, das Elektron in einem Raumbereich $V$ zu finden, erhält man durch Aufsummieren aller kleinen Beiträge in diesem Bereich:

$$
P(V) = \int_V \lvert\Psi\rvert^2 \, \mathrm{d}V
$$

Ein **Orbital** ist die räumliche Verteilung dieser Wahrscheinlichkeitsdichte für einen bestimmten Quantenzustand.

In Zeichnungen von Orbitalen sind oft Bereiche abgebildet, in welchen sich das Elektron mit hoher Wahrscheinlichkeit, zum Beispiel $90\,\%$, nachweisen lässt.

**Beispiel:** Bei vielen Ortsmessungen am gleichen Wasserstoffatom im Zustand $1s$ findet man eine kugelförmige $1s$-Wahrscheinlichkeitswolke.

---

### Wasserstoff-Orbitale bis n = 2

Das Wasserstoffatom besitzt ein Proton im Kern und ein Elektron. Die mögliche Gesamtenergie hängt im vereinfachten Modell nur von der Hauptquantenzahl $n$ ab:

$$
E_n = -13{,}6\,\mathrm{eV} \cdot \frac{1}{n^2}
$$

Das Minuszeichen bedeutet: Das Elektron ist an den Kern gebunden.

Für $n = 1$ gilt $E_1 = -13{,}6\,\mathrm{eV}$, für $n = 2$ gilt $E_2 = -3{,}4\,\mathrm{eV}$. Um ein Elektron aus dem Grundzustand zu lösen, müssen daher mindestens $13{,}6\,\mathrm{eV}$ zugeführt werden.

Neben $n$ beschreibt die Nebenquantenzahl $l$ die Form des Orbitals. Bis $n = 2$ kann man folgende Orbitale beschreiben:

| Hauptquantenzahl | Orbitale | Form der Wahrscheinlichkeitsdichte | Eigenschaften |
| --- | --- | --- | --- |
| $n = 1$ | $1s$ | kugelförmig | keine Knotenfläche im Inneren |
| $n = 2$ | $2s$ | kugelförmig, weiter ausgedehnt | eine kugelförmige Knotenfläche |
| $n = 2$ | $2p_x$, $2p_y$, $2p_z$ | jeweils zwei gegenüberliegende Bereiche | eine Knotenebene durch den Kern |

Die drei $2p$-Orbitale haben im Wasserstoffatom dieselbe Energie. Sie unterscheiden sich nur in ihrer Orientierung im Raum.

> Simulation in neuem Fenster starten: <a href="https://www.falstad.com/qmatom/qmatom.html" target="_blank">Wellenfunktionen des Wasserstoffatoms</a>

<iframe frameborder="0" src="https://www.falstad.com/qmatom/qmatom.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

[Quelle: Paul Falstad](https://www.falstad.com/qmatom/)

---

### Energieaustausch im Wasserstoffatom

Ein Elektron kann nicht beliebige Energien annehmen. Absorbiert es ein Photon mit der passenden Energie, wechselt es beispielsweise von $n=1$ nach $n=2$. Bei einem Übergang von $n=2$ nach $n=1$ wird ein Photon emittiert. Es gilt:

$$
\Delta E = h f = \frac{h c}{\lambda}
$$

Für den Übergang $n=1 \rightarrow n=2$ beträgt die notwendige Energie

$$
\Delta E = -3{,}4\,\mathrm{eV} - (-13{,}6\,\mathrm{eV}) = 10{,}2\,\mathrm{eV}.
$$

Bei der Absorption muss das Photon genau diese Energie besitzen. Dadurch entstehen die charakteristischen Spektrallinien des Wasserstoffs. In der folgenden App werden Energieniveaus bei Absorption und Emission visualisiert.

<iframe frameborder="0" src="https://phet.colorado.edu/sims/html/models-of-the-hydrogen-atom/latest/models-of-the-hydrogen-atom_de.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

[Quelle: PhET](https://phet.colorado.edu/en/simulations/models-of-the-hydrogen-atom/about)

---

## Dreidimensionaler Potenzialtopf

Ein Wasserstoffatom kann vereinfacht als **dreidimensionaler Potenzialtopf mit unendlich hohen Wänden** modelliert werden:

- Das Elektron darf sich nur im Würfel der Kantenlänge $L$ aufhalten.
- An allen Wänden muss die Wellenfunktion null sein. Damit sind nur stehende Wellen erlaubt.

In der folgenden App kann man den Zusammenhang zwischen Knoten, Wellenlänge und Energie im eindimensionalen Fall erkunden. Im dreidimensionalen Topf gelten die Knotenbedingungen gleichzeitig in drei senkrechten Raumrichtungen.

> Simulation in neuem Fenster starten: <a href="/apps/qp/10_schroeder_qm/squarewell.html" target="_blank">Wellenfunktionen im Potenzialtopf</a>

<iframe frameborder="0" src="/apps/qp/10_schroeder_qm/squarewell.html" width="720" height="620" scrolling="no" allowfullscreen></iframe>

Im dreidimensionalen Potenzialtopf wird ein Zustand durch drei Quantenzahlen beschrieben:

$$
(n_x,n_y,n_z), \qquad n_x,n_y,n_z = 1,2,3,\ldots
$$

Die Wellenfunktion setzt sich aus drei stehenden Wellen zusammen:

$$
\Psi_{n_x,n_y,n_z}(x,y,z) \sim
\sin\left(\frac{n_x\pi x}{L}\right) \cdot
\sin\left(\frac{n_y\pi y}{L}\right) \cdot
\sin\left(\frac{n_z\pi z}{L}\right).
$$

Für die Energie eines Zustands im dreidimensionalen Potenzialtopf gilt:

$$
E_{n_x,n_y,n_z} = \frac{h^2}{8m_eL^2}
\left(n_x^2+n_y^2+n_z^2\right).
$$

---

### Vergleich: Wasserstoffatom und Potenzialtopf

| Gemeinsamkeiten | Unterschiede |
| --- | --- |
| Elektronen werden durch Wellenfunktionen beschrieben. | Im Wasserstoffatom wirkt ein kugelsymmetrisches Coulomb-Potenzial, im Potenzialtopf eine würfelförmige Begrenzung mit unendlich hohen Wänden. |
| Erlaubt sind nur bestimmte Zustände und Energien. | Wasserstofforbitale werden durch $n$, $l$ und die Orientierung beschrieben; im Potenzialtopf durch $n_x$, $n_y$, $n_z$. |
| Knoten sind Bereiche mit $\lvert\Psi\rvert^2=0$. | Die Formen sind verschieden: $s$-Orbitale sind kugelförmig, $p$-Orbitale hantelförmig. Im Potenzialtopf bestimmt die Würfelsymmetrie die Form der Wellenfunktionen. |
| Mehr Knoten in einer Wellenfunktion bedeutet eine höhere Energie. | Die Energieformeln unterscheiden sich, weil die Potenziale verschieden sind. |

Das Potenzialtopfmodell erklärt anschaulich, weshalb sich nur stehende Elektronenwellen und damit nur bestimmte Energien einstellen. Genauere Aussagen über das Wasserstoffatom bekommt man mit Hilfe des Coulomb-Potenzial.

---

## Pauli-Prinzip

Bei Atomen mit mehr als einem Elektron wird die Modellierung deutlich komplizierter. Das **Pauli-Prinzip** liefert einen ersten Zugang zur Modellierung komplexerer Atome:

- Ein räumliches Orbital kann höchstens zwei Elektronen enthalten.
- Die Elektronen eines räumlichen Orbitals müssen sich in ihrem **Spin** unterscheiden, zum Beispiel durch die Bezeichnungen $m_s=+\frac12$ und $m_s=-\frac12$.
- Zwei Elektronen desselben Atoms dürfen nicht in allen Quantenzahlen übereinstimmen.

Beispiel: $1s$-Orbital

- Ein Wasserstoffatom hat die Konfiguration $1s^1$.
- Ein Heliumatom besitzt $1s^2$.
- Ein drittes Elektron muss ein höheres Orbital besetzen.

Die Pfeile in Kästchenschreibweise stehen für die beiden möglichen Spinrichtungen:

$$
1s:\quad \boxed{\uparrow\downarrow}
$$

> Simulation in neuem Fenster starten: <a href="/apps/ap/10_pauliprinzip/" target="_blank">Pauli-Prinzip</a>

<iframe frameborder="0" src="/apps/ap/10_pauliprinzip/" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

## Elektronenzahl im Potenzialtopf

Die maximale Elektronenzahl hängt davon ab, welches physikalische Modell
betrachtet wird. Sowohl im Atom als auch im dreidimensionalen Potenzialtopf
gibt es diskrete Quantenzustände. Wegen des Pauli-Prinzips kann jeder räumliche
Zustand mit zwei Elektronen entgegengesetzten Spins besetzt werden. Die
räumlichen Zustände und ihre Energieordnung werden in beiden Modellen jedoch
unterschiedlich beschrieben.

### Elektronen im Atom: Schalen und Orbitale

Im Atom bezeichnet die Hauptquantenzahl $n$ eine **Schale**:

| Schale | Hauptquantenzahl |
| --- | --- |
| K-Schale | $n=1$ |
| L-Schale | $n=2$ |
| M-Schale | $n=3$ |

Zu einer Schale gehören mehrere räumliche Zustände, die durch die
Nebenquantenzahl $l$ und die magnetische Quantenzahl $m$ weiter unterschieden
werden. Für eine feste Hauptquantenzahl $n$ gibt es insgesamt $n^2$ räumliche
Zustände. Jeder davon kann zwei Elektronen mit

$$
m_s=+\frac12 \qquad \text{und} \qquad m_s=-\frac12
$$

aufnehmen. Daher lautet die maximale Besetzung der $n$-ten Schale:

$$
N_n=2n^2.
$$

Für die ersten beiden Schalen folgt:

| Schale | $n$ | räumliche Zustände | maximale Elektronenzahl |
| --- | --- | --- | --- |
| K-Schale | $1$ | $1$ | $2$ |
| L-Schale | $2$ | $4$ | $8$ |

Bis einschließlich der L-Schale können sich also

$$
2+8=10
$$

Elektronen im Atom befinden. Weitere Informationen zur Schalenbesetzung:
[LEIFIphysik](https://www.leifiphysik.de/atomphysik/quantenmech-atommodell/grundwissen/quantenmechanische-systematisierung-des-periodensystems).

#### Warum passen in die L-Schale acht Elektronen?

Zur L-Schale mit $n=2$ gehören nicht nur ein, sondern vier räumliche Zustände:
ein $2s$-Orbital und drei $2p$-Orbitale. Das $2s$-Orbital kann zwei Elektronen
aufnehmen. Die drei $2p$-Orbitale können zusammen sechs Elektronen aufnehmen.

$$
\underbrace{1\cdot2}_{2s}+\underbrace{3\cdot2}_{2p}=8.
$$

Die L-Schale ist also eine Gruppe mehrerer Zustände, die im vereinfachten
Wasserstoffmodell dieselbe Hauptquantenzahl und damit dieselbe Energie besitzen.

### Teilchen im dreidimensionalen Potenzialtopf

Beim dreidimensionalen Potenzialtopf ist ein räumlicher Zustand nicht durch die
atomare Hauptquantenzahl $n$, sondern durch drei Quantenzahlen gekennzeichnet:

$$
(n_x,n_y,n_z), \qquad n_x,n_y,n_z=1,2,3,\ldots
$$

Sie geben an, wie viele Halbwellen der stehenden Welle in $x$-, $y$- und
$z$-Richtung auftreten. Für einen würfelförmigen Topf der Kantenlänge $L$ gilt

$$
E_{n_x,n_y,n_z}=\frac{h^2}{8m_eL^2}
\left(n_x^2+n_y^2+n_z^2\right).
$$

Die Zustände werden daher nach dem Wert

$$
n_x^2+n_y^2+n_z^2
$$

in Energiegruppen geordnet. Der **Entartungsgrad** $g$ einer Energiegruppe gibt
an, wie viele verschiedene räumliche Zustände dieselbe Energie besitzen. Erst
bei der Elektronenzahl wird der Spin berücksichtigt: Eine Energiegruppe kann
höchstens $2g$ Elektronen aufnehmen.

#### Zustände bis zu den Quantenzahlen $n_x,n_y,n_z=2$

Im Kerncurriculum bedeutet „bis $n=2$“ für den dreidimensionalen
Potenzialtopf: Jede der drei Quantenzahlen darf den Wert $1$ oder $2$ annehmen.
Es werden also nicht nur die zwei niedrigsten Energiegruppen betrachtet. Die Anzahl der möglichen räumlichen Zustände ist

$$
2\text{ Möglichkeiten für }n_x
\cdot 2\text{ Möglichkeiten für }n_y
\cdot 2\text{ Möglichkeiten für }n_z=8.
$$

Diese acht Zustände sind

$$
\begin{align}
&(1,1,1), \qquad (2,1,1), \qquad (1,2,1), \qquad (1,1,2), \\
&(2,2,1), \qquad (2,1,2), \qquad (1,2,2), \qquad (2,2,2).
\end{align}
$$

Der niedrigste Zustand ist

$$
(n_x,n_y,n_z)=(1,1,1).
$$

Für ihn gilt

$$
1^2+1^2+1^2=3.
$$

Es gibt nur diese eine Kombination, also $g=1$. Der Grundzustand kann deshalb
höchstens $1\cdot2=2$ Elektronen aufnehmen.

Die nächsthöhere Energiegruppe besteht aus den drei Zuständen

$$
(2,1,1), \qquad (1,2,1), \qquad (1,1,2).
$$

Für alle drei gilt

$$
2^2+1^2+1^2=6.
$$

Die höhere stehende Welle liegt jeweils in einer anderen Raumrichtung. Es gibt
somit drei verschiedene räumliche Zustände mit gleicher Energie, also $g=3$.
Diese Energiegruppe kann höchstens $3\cdot2=6$ Elektronen aufnehmen.

Die drei Zustände mit zwei Quantenzahlen gleich $2$ gehören zur nächsten
Energiegruppe:

$$
(2,2,1), \qquad (2,1,2), \qquad (1,2,2).
$$

Für sie gilt jeweils

$$
2^2+2^2+1^2=9.
$$

Auch hier ist der Entartungsgrad $g=3$, sodass diese Energiegruppe höchstens
$6$ Elektronen aufnehmen kann. Schließlich gehört der Zustand

$$
(2,2,2)
$$

mit

$$
2^2+2^2+2^2=12
$$

zur vierten Energiegruppe. Er ist nicht entartet ($g=1$) und kann daher
maximal zwei Elektronen aufnehmen.

| Energiegruppe | räumliche Zustände | $g$ | maximale Elektronenzahl |
| --- | --- | --- | --- |
| $n_x^2+n_y^2+n_z^2=3$ | $(1,1,1)$ | $1$ | $2$ |
| $n_x^2+n_y^2+n_z^2=6$ | $(2,1,1)$, $(1,2,1)$, $(1,1,2)$ | $3$ | $6$ |
| $n_x^2+n_y^2+n_z^2=9$ | $(2,2,1)$, $(2,1,2)$, $(1,2,2)$ | $3$ | $6$ |
| $n_x^2+n_y^2+n_z^2=12$ | $(2,2,2)$ | $1$ | $2$ |

Für $n_x,n_y,n_z\leq2$ können im Potenzialtopf somit insgesamt

$$
2+6+6+2=16
$$

Elektronen aufgenommen werden.

> Simulation in neuem Fenster starten: <a href="/apps/ap/11_potenzialtopf/" target="_blank">3D-Potenzialtopf</a>

<iframe frameborder="0" src="/apps/ap/11_potenzialtopf/" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

### Vergleich der Modelle

Die ersten beiden Energiegruppen des Potenzialtopfs entsprechen nicht den
ersten beiden Schalen eines Atoms. Beide Modelle sortieren die Zustände nach
unterschiedlichen Quantenzahlen und Energien.

|  | Atom | Dreidimensionaler Potenzialtopf |
| --- | --- | --- |
| Kennzeichnung eines räumlichen Zustands | $n$, $l$, $m$ | $(n_x,n_y,n_z)$ |
| Energieordnung | im Wasserstoffmodell durch $n$ | durch $n_x^2+n_y^2+n_z^2$ |
| Zustände bis $n=2$ | K- und L-Schale | alle Zustände mit $n_x,n_y,n_z\leq2$ |
| maximale Elektronenzahl bis $n=2$ | $2+8=10$ | $2+6+6+2=16$ |

Anschaulich sind die beiden Modelle verschiedene Sortiersysteme: Im Atom
werden die Elektronen nach Schalen mit der Hauptquantenzahl $n$ geordnet. Im
Potenzialtopf entscheidet die Summe $n_x^2+n_y^2+n_z^2$ über die Energie. Die
Zahlen $10$ und $16$ entstehen deshalb aus unterschiedlichen
Zustandszählungen.

---