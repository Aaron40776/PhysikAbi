## Kern-Potenzialtopfmodell

> **Bezug zum Kerncurriculum:**
>
> - Ich kann die Quantisierung der Gesamtenergie von Nukleonen im eindimensionalen Potenzialtopf beschreiben.
> - Ich kann die Größenordnung der Energie bei Kernprozessen mithilfe des Potenzialtopfmodells abschätzen.

---

## Nukleonen im Atomkern

Protonen und Neutronen, zusammen **Nukleonen** genannt, werden im Atomkern durch die starke Kernkraft gebunden. Diese Kraft wirkt nur über sehr kurze Entfernungen. Außerhalb des Kerns ist ein Nukleon daher nicht mehr gebunden, im Kerninneren kann es sich annähernd frei bewegen.

Das lässt sich stark vereinfacht durch einen **eindimensionalen Potenzialtopf** beschreiben:

- Die Breite $L$ entspricht näherungsweise dem Durchmesser des Atomkerns.
- An den Rändern des Topfs können nur stehende Materiewellen entstehen.
- Das Modell betrachtet jeweils ein Nukleon und berücksichtigt weder die genaue räumliche Form des Kerns noch die Wechselwirkungen mit den anderen Nukleonen.

> [!NOTE]
> Der reale Kernpotenzialtopf besitzt keine unendlich hohen Wände. Seine Tiefe beträgt ungefähr $50\,\mathrm{MeV}$. Der Potenzialtopf mit unendlich hohen Wänden erklärt aber anschaulich, warum Nukleonen nur bestimmte Energien besitzen können.

---

## Quantisierte Energien

Ein Nukleon besitzt wie ein Elektron eine de-Broglie-Wellenlänge. Damit an beiden Rändern des Topfs Knoten liegen, muss gelten:

$$
L=n\cdot\frac{\lambda}{2}, \qquad n=1,2,3,\ldots
$$

Nur Wellenlängen, für die eine ganze Zahl von halben Wellenlängen in den Kern passt, sind erlaubt. Mit $p=\frac{h}{\lambda}$ folgen die möglichen Impulse

$$
p_n=\frac{h\cdot n}{2L}.
$$

Für die Energie relativ zum Boden des Potenzialtopfs ergibt sich mit $E_\text{kin}=\frac{p^2}{2m_\text{N}}$:

$$
E_n=\frac{h^2}{8m_\text{N}L^2}\cdot n^2.
$$

Dabei ist $m_\text{N}$ näherungsweise die Masse eines Nukleons. Die Formel zeigt:

- Die Energie ist quantisiert: Zwischenwerte sind nicht möglich.
- Höhere Quantenzahlen bedeuten höhere Energie.
- Bei kleinerem Kern nimmt der Abstand der Energieniveaus zu, denn $E_n\sim\frac{1}{L^2}$.

Für Energieunterschiede zwischen zwei Niveaus gilt:

$$
\Delta E=E_m-E_n=\frac{h^2}{8m_\text{N}L^2}\left(m^2-n^2\right).
$$

---

## Größenordnung der Kernenergien

Die Durchmesser von Atomkernen liegen in der Größenordnung von einigen Femtometern:

$$
1\,\mathrm{fm}=10^{-15}\,\mathrm{m}.
$$

Für einen Kern mit $L=10\,\mathrm{fm}$ ergibt sich für ein Nukleon näherungsweise

$$
E_1=\frac{h^2}{8m_\text{N}L^2}\approx 2{,}0\,\mathrm{MeV}.
$$

Der Energieabstand zwischen dem ersten und dem zweiten Niveau beträgt somit

$$
\Delta E_{1\to2}=E_2-E_1=3E_1\approx 6\,\mathrm{MeV}.
$$

Solche Energien sind typisch für Kernprozesse. Zum Vergleich: Energien bei Übergängen in der Atomhülle liegen meist bei einigen Elektronenvolt. Es gilt

$$
1\,\mathrm{MeV}=10^6\,\mathrm{eV}.
$$

Kernenergien sind also typischerweise etwa millionenfach größer als Energien in der Atomhülle. Das ist eine Folge der sehr kleinen räumlichen Ausdehnung des Kerns.

---

## Aufgabe: Energieabstand abschätzen

Ein Nukleon wird in einem eindimensionalen Potenzialtopf der Breite $L=8{,}0\,\mathrm{fm}$ modelliert.

1. Berechne die Energie $E_1$ des Grundzustands in MeV.
2. Bestimme den Energieabstand $\Delta E_{1\to2}$.
3. Begründe, weshalb der Energieabstand größer ist als beim Beispiel mit $L=10\,\mathrm{fm}$.

Verwende $h=6{,}63\cdot10^{-34}\,\mathrm{Js}$, $m_\text{N}=1{,}67\cdot10^{-27}\,\mathrm{kg}$ und $1\,\mathrm{eV}=1{,}60\cdot10^{-19}\,\mathrm{J}$.

<details>

  <summary>Lösungsvorschlag</summary>

Für den Grundzustand gilt:

$$
\begin{align}
E_1&=\frac{h^2}{8m_\text{N}L^2}\\
&=\frac{(6{,}63\cdot10^{-34}\,\mathrm{Js})^2}{8\cdot1{,}67\cdot10^{-27}\,\mathrm{kg}\cdot(8{,}0\cdot10^{-15}\,\mathrm{m})^2}\\
&\approx4{,}0\cdot10^{-13}\,\mathrm{J}\\
&\approx3{,}2\,\mathrm{MeV}.
\end{align}
$$

Der Abstand zum zweiten Niveau ist:

$$
\Delta E_{1\to2}=E_2-E_1=3E_1\approx9{,}6\,\mathrm{MeV}.
$$

Da $E_n\sim\frac{1}{L^2}$ gilt, führt die kleinere Breite $L$ zu größeren Energien und größeren Energieabständen.

</details>

