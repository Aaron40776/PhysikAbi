## Schwingkreis

---

> **Bezug zum Kerncurriculum:**
> - Ich kann Spulen als Energiespeicher in Analogie zu Kondensatoren beschreiben.
> - Ich kann die Gleichung für die Energie des magnetischen Feldes einer Spule nennen.
> - Ich kann in diesem Zusammenhang die Vorgänge beim Ein- und Ausschalten von Spulen durch Selbstinduktion erläutern.
> - Ich kann die Induktivität als Bauteileigenschaft aus einer Energiebetrachtung definieren.
> - Ich kann den Aufbau eines elektromagnetischen Schwingkreises beschreiben.

---

## Selbstinduktion

Im folgenden Experiment werden zwei baugleiche Glühbirnen zusammen mit einem Widerstand parallel an eine Spannungsquelle angeschlossen. In einem der Teilstromkreise befindet sich zusätzlich zur Glühbirne und dem Widerstand noch eine Spule mit Eisenkern.

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_spule_einschalten.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

Quelle: [Iain Sharp](https://github.com/sharpie7/circuitjs1)

<details>

  <summary>Durchführung</summary>
  
- **Schalte** den Stromkreis ein, indem du den Schalter unten rechts durch einen Klick mit der linken Maustaste schließt. 

- **Beobachte** dann die Anzeige der Stromstärke bei beiden Glühbirnen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Bei der unteren Glühbirne hat die Stromstärke nach kurzer Zeit das Maximum erreicht und wird dann langsam mit zunehmendem thermischen Widerstand der Glühbirne etwas geringer.

Bei der oberen Glühbirne mit in Reihe geschalteter Spule steigt die Stromstärke deutlich langsamer an. 

</details>

<details>

  <summary>Erklärung</summary>
  
- Beim Einschalten des Stromkreises **verändert** sich die Stromstärke $I$ in der Spule und damit auch das Magnetfeld $B$ in der Spule.

- Nach dem Induktionsgesetz wird in der Spule eine Spannung induziert, wenn sich das Magnetfeld in der Spule ändert. 

- Diese Induktionsspannung wird **Selbstinduktionsspannung** genannt. 

Es kann das Induktionsgesetz angewendet werden:

$$
  U_\text{ind} = - N \cdot B \cdot \frac{d A}{d t} - N \cdot \frac{d B}{d t} \cdot A
$$

Der erste Teil des Terms fällt weg, da sich die vom Magnetfeld durchsetzte Fläche $A$ nicht ändert und damit $\frac{d A}{d t} = 0$ ist. 

Zur Beschreibung der Selbstinduktionsspannung bleibt also folgender Ausdruck:

$$
  U_\text{ind} = - N \cdot \frac{d B}{d t} \cdot A
$$

Würde die **Selbstinduktionsspannung** das gleiche Vorzeichen haben wie die angelegte Spannung, würde dadurch der Stromfluss in dem Teilstromkreis verstärkt werden, so dass aus Nichts Energie erzeugt würde. 

Nach dem Energieerhaltungssatz kann das nicht sein, so dass die **Lenzsche Regel** gilt und die Selbstinduktionsspannung ein Vorzeichen haben muss, das entgegengesetzt zur angelegten Spannung ist.

Addiert man dann die angelegte Spannung und die Selbstinduktionsspannung, bekommt man im oberen Teilstromkreis einen effektiven Spannungswert, der geringer ist als die angelegte Spannung, da die Vorzeichen der beiden Spannungen entgegengesetzt zueinander sind. Wegen $I = \frac{U}{R}$ und vergleichbar großen Widerständen steigt die Stromstärke im oberen Stromkreis langsamer an als im unteren.

Wenn sich die Stromstärke nach einiger Zeit langsamer ändert, verändert sich auch das Magnetfeld in der Spule langsamer, d.h. $\frac{d B}{d t}$ wird kleiner und damit verringert sich auch die Selbstinduktionsspannung in der Spule, bis sie schließlich Null ist, sobald die Zielstromstärke erreicht wurde. 

Die Stromstärke im oberen Teilstromkreis nähert sich damit der Stromstärke im unteren Teilstromkreis an.

</details>

---

## Induktivität L

Für das Magnetfeld einer langen Spule gilt:

$$
  B(t) = \mu_0 \cdot \mu_r \cdot \frac{N \cdot I(t)}{l}
$$

Setzt man diesen Zusammenhang in das Induktionsgesetz ein, folgt:

$$
  U_\text{ind}(t) = - N \cdot \frac{d B(t)}{d t} \cdot A = - N \cdot \frac{d \left( \mu_0 \cdot \mu_r \cdot \frac{N \cdot I(t)}{l} \right) }{d t} \cdot A
$$

Die konstanten Parameter können aus der Ableitung ausgeklammert werden, da sie den Wert der Ableitung nicht ändern:

$$
  U_\text{ind}(t) = - N \cdot \mu_0 \cdot \mu_r \cdot N \cdot A \cdot \frac{1}{l} \cdot \frac{d I(t)}{d t} = - \mu_0 \cdot \mu_r \cdot \frac{ N^2 \cdot A }{l} \cdot \frac{d I(t)}{d t}
$$

Die konstanten Parameter werden zu einer neuen Größe zusammengefasst, der **Induktivität** $L$. Für eine lange Spule gilt für die **Induktivität** $L$:

$$
  L = \mu_0 \cdot \mu_r \cdot \frac{ N^2 \cdot A }{l} \qquad [L] = 1 \frac{\text{V} \cdot \text{s}}{\text{A}} = 1 \, \text{Henry} = 1 \, \text{H}
$$

Damit kann man für eine lange Spule mit der **Induktivität** $L$ die **Selbstinduktionsspannung** wie folgt beschreiben:

$$
  U_\text{ind}(t) = - \mu_0 \cdot \mu_r \cdot \frac{ N^2 \cdot A }{l} \cdot \frac{d I(t)}{d t} = - L \cdot \frac{d I(t)}{d t} 
$$

oder noch kürzer:

$$
  U_\text{ind}(t) = - L \cdot \frac{d I(t)}{d t} = - L \cdot \dot {I(t)}
$$

---

## Spule als Energiespeicher

Eine Spule kann in einem Stromkreis als **Energiespeicher** eingesetzt werden.

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_spule_einschalten.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

Quelle: [Iain Sharp](https://github.com/sharpie7/circuitjs1)

<details>

  <summary>Durchführung</summary>
  
- **Schalte** den Schalter ein und **warte** ab, bis die Stromstärke in der oberen Teilschaltung sich der unteren angenähert hat. 

- **Öffne** dann wieder den Schalter und **beobachte** die Anzeige der Stromstärke bei beiden Glühbirnen.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Obwohl der Schalter den Stromkreis öffnet, fließt im Teilstromkreis der beiden Glühbirnen für kurze Zeit weiterhin ein elektrischer Strom.

</details>

<details>

  <summary>Erklärung</summary>
  
- Wenn der Schalter geöffnet wird, beginnt in der Spule die Stromstärke zu sinken. 

- Sobald sich die Stromstärke verändert, beginnt das Magnetfeld in der Spule schwächer zu werden.

- Ein sich änderndes Magnetfeld hat eine Selbstinduktionsspannung zur Folge, die der Ursache entgegengesetzt orientiert ist. 

- Beim Abnehmen des elektrischen Stroms setzt die Spule die im Magnetfeld gespeicherte Energie frei und erzeugt dazu eine Spannung, welche die Abnahme der Stromstärke verlangsamt.

Für die Energiemenge, die eine Spule der Induktivität $L$ bei einer Stromstärke $I$ speichert, gilt:

$$
  E_{mag} = {1 \over 2} \cdot L \cdot {I^2}
$$

</details>

---

### Modellierung

Sobald der durch eine Spule fließende Strom abgeschaltet wird, wird das Magnetfeld in der Spule immer kleiner. Das sich verändernde Magnetfeld hat eine **Selbstinduktionsspannung** $U_\text{ind}(t)$ zur Folge:

$$
  U_\text{ind}(t) = - L \cdot \frac{d I}{d t} = - L \cdot \dot {I}
$$

Die Selbstinduktionsspannung $U_\text{ind}(t)$ hat zur Folge, dass durch die Spule ein Selbstinduktionsstrom $I(t)$ fließt.

Das Produkt aus elektrischer Spannung $U$ und elektrischer Stromstärke $I$ ist die elektrische Leistung $P$, welche angibt, wie viel Energie $E$ pro Sekunde von magnetischer Feldenergie in elektrische Energie umgewandelt wird. 

Da sich die elektrische Spannung $U$ und die elektrische Stromstärke $I$ beim Ausschalten einer Spule ständig ändern, kann man die Leistung nur in einem beliebig kleinen Intervall $dt$ genau angeben:

$$
\begin{align}
  P(t) &= \frac{dE_\text{mag}}{dt} \\
      &= U_\text{ind}(t) \cdot I(t)
\end{align}
$$

Damit folgt:

$$
\begin{aligned}
  \frac{dE_\text{mag}}{dt} &= U_\text{ind}(t) \cdot I(t) \\
  dE_\text{mag} &= U_\text{ind}(t) \cdot I(t) \cdot dt
\end{aligned}
$$

In einem beliebig kleinen Zeitintervall $dt$ wird in der Spule, deren Magnetfeld $B$ abnimmt, die Energiemenge $dE_\text{mag}$ von magnetischer Feldenergie in elektrische Energie umgewandelt:

- Sobald die Spule vom Netzteil getrennt wurde, beginnt die Stromstärke $I$ in der Spule zu sinken.

- Der Vorgang beginnt zum Zeitpunkt $t(I_0)$ mit maximaler Spulenstromstärke $I_0$ und endet zum Zeitpunkt $t(0)$, wenn die Stromstärke den Wert 0 erreicht.

- Summiert man alle Energiemengen $dE_\text{mag}$ für jedes beliebig kleine Zeitintervall $dt$ auf, erhält man die Energiemenge $E_\text{mag}$, welche im Magnetfeld $B$ der Spule bei einer elektrischen Stromstärke $I_0$ gespeichert war. 

In einem beliebig kleinen Zeitintervall $dt$ kann die elektrische Stromstärke $I$ als konstant angenommen werden.

$$
  E_\text{mag} = \int_{t(I_0)}^{t(0)} U_\text{ind}(t) \cdot I \, dt
$$

Die Induktionspannung $U_\text{ind}(t)$ wird ersetzt mit $U_\text{ind}(t) = - L \cdot \frac{d I}{d t}$:

$$
  E_\text{mag} = \int_{t(I_0)}^{t(0)} U_\text{ind}(t) \cdot I \, dt = \int_{t(I_0)}^{t(0)} \left( - L \cdot \frac{d I}{d t} \right) \cdot I \, dt
$$

Da $L$ eine Konstante ist, kann sie aus dem Integral herausgezogen werden:

$$
  E_\text{mag} = - L \int_{t(I_0)}^{t(0)} I \cdot \frac{d I}{d t} \, dt
$$

Die Stromstärke ändert sich während des Zeitintervalls $dt$. Wir ersetzen das beliebig kleine Zeitintervall $dt$ mit einer beliebig kleinen Änderung der Stromstärke $dI$. Damit wird die Energie $E_\text{mag}$ über die Änderung $dI$ der elektrischen Stromstärke aufsummiert. Die Integrationsgrenzen ändern sich daher auch: wir summieren nicht mehr vom Zeitpunkt $t(I_0)$ bis zum Zeitpunkt $t(0)$, sondern von der elektrischen Stromstärke $I_0$ bis zur Stromstärke $0$:

$$
  E_\text{mag} = - L \int_{I_0}^{0} I \, dI = - L \left[ \tfrac{1}{2} \cdot I^2 \right]_{I_0}^{0}
$$

Einsetzen der Grenzen ergibt:

$$
  E_\text{mag} = - L \left( \tfrac{1}{2} \cdot 0^2 - \tfrac{1}{2} \cdot I_0^2 \right) = - L \cdot (- \tfrac{1}{2} \cdot I_0^2) = \tfrac{1}{2} L I_0^2
$$

Damit wurde die Formel erfolgreich hergeleitet.

Wenn eine Spule mit der Induktivität $L$ von einem elektrischen Strom mit der Stromstärke $I$ durchflossen wird, ist in der Spule die magnetische Energie $E_\text{mag}$ gespeichert:

$$
  E_\text{mag} = \tfrac{1}{2} L I^2
$$

---

## Kondensator als Energiespeicher

In einem Kondensator der Kapazität $C$ ist bei einer Spannung $U$ die elektrische Energiemenge $E_\text{el} = \tfrac{1}{2} \cdot C \cdot U^2$ gespeichert.

Für einen Kondensator mit der Kapazität $C$ gilt, dass bei einer Spannung $U$ die Ladungsmenge $Q$ gespeichert werden kann:

$$
  C = \frac{Q}{U}
$$

Wenn man gedanklich eine kleine Ladungsmenge $q$ von der einen Platte zur anderen Platte bringt, ändert sich die Spannung $U$ im Kondensator:

$$
  U(q) = \frac{q}{C}
$$

Wenn bei einer Spannung $U$ eine Ladungsmenge $q$ von der einen Seite des Kondensators zur anderen Seite des Kondensators gebracht werden soll, muss dafür die Energiemenge $E_\text{el}$ aufgebracht werden:

$$
  \begin{align}
    U &= \frac{E_\text{el}}{q} \\
    E_\text{el} &= U \cdot q
  \end{align}
$$

Um die im Kondensator gespeicherte Energie $E_\text{el}$ zu bestimmen, denken wir uns einen entladenen Kondensator mit der Kapazität $C$, bei welchem solange eine beliebig kleine Ladungsmenge $dq$ von der einen Seite des Kondensators zur anderen Seite transportiert wird, bis der Kondensator aufgeladen und die Spannung $U = \frac{Q}{C}$ erreicht ist.

Um bei einer Spannung $U(q)$ eine beliebig kleine Ladungsmenge $dq$ auf die andere Seite zu bringen, muss dafür die Energiemenge $E_\text{el}$ aufgewendet werden. Diese Energie ist dann im Kondensator gespeichert:

$$
  dE_\text{el} = U(q) \cdot dq
$$

Die Gesamtenergie $E_\text{el}$ wird bestimmt, indem man für den gesamten Aufladevorgang alle Energiebeträge aufsummiert:

$$
  E_\text{el} = \int_{0}^{Q} U(q) \cdot dq
$$

Mit $U(q) = \frac{q}{C}$ folgt:

$$
\begin{align}
  E_\text{el} &= \int_{0}^{Q} U(q) \cdot dq \\
    &= \int_{0}^{Q} \frac{q}{C} \cdot dq \\
    &= \frac{1}{C} \int_{0}^{Q} q \cdot dq \\
    &= \frac{1}{C} \left[ \tfrac{1}{2} \cdot q^2 \right]_0^Q \\
    &= \frac{1}{C} \left[ \tfrac{1}{2} \cdot Q^2 - \tfrac{1}{2} \cdot 0^2 \right] \\
    &= \frac{1}{C} \cdot \tfrac{1}{2} \cdot Q^2 \\
    &= \tfrac{1}{2} \cdot \frac{Q^2}{C}
\end{align}
$$

Mit $Q = C \cdot U$ folgt:

$$
\begin{align}
  E_\text{el} &= \tfrac{1}{2} \cdot \frac{Q^2}{C} \\
    &= \tfrac{1}{2} \cdot \frac{(C \cdot U)^2}{C} \\
    &= \tfrac{1}{2} \cdot \frac{C^2 \cdot U^2}{C} \\
    &= \tfrac{1}{2} \cdot C \cdot U^2
\end{align}  
$$

Damit ist die Formel erfolgreich hergeleitet worden.

> [!NOTE]
>Für die **elektrische Energie** im Kondensator gilt: $E_{el} = {1 \over 2} \cdot C \cdot U^2$

---

## Elektrischer Schwingkreis

In einer Schaltung, in der ein Kondensator und eine Spule eingebaut sind, kann Energie zwischen Kondensator und Spule hin- und herschwingen.

Für die **elektrische Energie** im Kondensator gilt:

$$
 E_{el} = {1 \over 2} \cdot C \cdot U^2 
$$

Für die **magnetische Energie** in der Spule gilt:

$$
  E_{mag} = {1 \over 2} \cdot L \cdot {I^2}
$$

Es entsteht ein **elektrischer Schwingkreis**:

- Die Energie pulsiert zwischen Kondensator und Spule hin- und her.

- Aufgrund der Energieverluste in den Widerständen der Bauteile wird Energie an die Umgebung in Form von Wärme abgegeben. In einem realen Schwingkreis muss eine periodisch arbeitende Energiequelle diesen Energieverlust ausgleichen, wenn die Schwingung erhalten bleiben soll.

---

### Simulation: elektrischer Schwingkreis

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_lrc.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

Quelle: [Iain Sharp](https://github.com/sharpie7/circuitjs1)

<details>

  <summary>Durchführung</summary>
  
- **Schalte** den Schalter ein, so dass durch die Spule elektrischer Strom fließt und der Kondensator aufgeladen wird.

- **Öffne** dann wieder den Schalter und **beobachte** das Verhalten des Stromkreises.

</details>

<details>

  <summary>Beobachtungen</summary>
  
Die in der Spule gespeicherte magnetische Energie und die im Kondensator gespeicherte elektrische Energie lässt Elektronen zwischen der Spule und dem Kondensator hin- und herfließen. 

Der Widerstand wandelt elektrische Energie in Wärmeenergie um, so dass der Stromfluss nach kurzer Zeit aufhört.

</details>

---