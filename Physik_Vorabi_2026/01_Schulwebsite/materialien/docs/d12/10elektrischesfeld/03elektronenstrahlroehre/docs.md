## Elektronenstrahlröhre

---

> **Bezug zum Kerncurriculum:**  
> - Ich die Energiebilanz für einen freien geladenen Körper im elektrischen Feld eines Plattenkondensators angeben.
> - Ich kann die Geschwindigkeit eines geladenen Körpers im homogenen elektrischen Feld eines Plattenkondensators mithilfe dieser Energiebilanz ermitteln.
> - Ich kann die Bewegung von freien Elektronen unter Einfluss der Kraft im homogenen elektrischen Querfeld beschreiben.
> - Ich kann vorstrukturiert die Gleichung für die Bahnkurve im homogenen elektrischen Querfeld herleiten.
> - Ich kann die zugehörige Gleichung für die Geschwindigkeit herleiten.

---

## Elektronenstrahlen

![](elektronenstrahl.png)

---

### Glühelektrischer Effekt

![](glueheffekt.png)

---

### Strahlerzeugung

![](strahlerzeugung.png)

---

### Simulation: Elektronenstrahl

> <a href="/apps/efeld/08_glueheleffekt/glueheleffekt.html" target="_blank">Simulation in neuem Fenster öffnen</a>

<iframe src="/apps/efeld/08_glueheleffekt/glueheleffekt.html" width="850" height="650" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
In der Simulation wird ein Elektron als kleine Kugel der Masse $m$ modelliert, die eine elektrische Ladung der Ladungsmenge $q = 1,602 \cdot 10^{-19} \, \rm{C}$ trägt. 

- **Klicke** auf "Elektronenemission an/aus" und beobachte das Verhalten der Elektronen.

- **Verändere** die Beschleunigungsspannung $U_\rm{B}$ und beobachte die Auswirkung auf die Bewegung der Elektronen.

- **Verändere** die Glühdrahtspannung $U_\rm{H}$ und beobachte die Auswirkung auf die Anzahl der freien Elektronen.

- **Verändere** die Größe der Blendenöffnung und beobachte die Auswirkung auf den Elektronenstrahl, welcher die Lochanode passiert.

</details>

<details>

  <summary>Beobachtung</summary>
  
- Die **Beschleunigungsspannung** $U_\rm{B}$ regelt, wie schnell die Elektronen nach dem Passieren der Lochanode sind. Je höher die Beschleunigungsspannung ist, desto schneller sind die Elektronen.

- Die **Glühdrahtspannung** $U_\rm{H}$ regelt, wie viele Elektronen aus dem Glühdraht pro Sekunde austreten. Je höher die Glühdrahtspannung ist, desto mehr Elektronen treten pro Sekunde aus dem Glühdraht aus.

- Die **Blendenöffnung** regelt, welchen Durchmesser der Elektronenstrahl hat. Je kleiner die Blende ist, desto feiner ist der Elektronenstrahl.

</details>

---

## Elektronenstrahl-Beschleunigung

![](beschleunigung.png)

---

### Simulation: e-Beschleunigung

> <a href="/apps/efeld/07_elektronimpk/elektronimpk.html" target="_blank">Simulation in neuem Fenster öffnen</a>

<iframe src="/apps/efeld/07_elektronimpk/elektronimpk.html" width="850" height="680" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
Wenn die Kondensatorplatten eine elektrische Kraft auf die geladenen Kugel ausüben, wird diese nach dem Newtonschen Grundgesetz $F = m \cdot a$ beschleunigt.

- **Verändere** die Kondensatorspannung und beobachte das Verhalten der Ladung im Plattenkondensator.

- **Vergleiche** das Verhalten der geladenen Kugel mit den Weg-Zeit- und Geschwindigkeit-Zeit-Schaubildern.

</details>

<details>

  <summary>Beobachtung</summary>
  
Die geladene Kugel erfährt bei einer konstant angelegten Spannung eine konstante Beschleunigung, denn die Geschwindigkeitsänderung wird mit einer Geraden beschrieben.

Der Weg, den die geladene Kugel zurücklegt, wird mit einer parabelförmigen Kurve beschrieben.

</details>

---

## Modellierung: Geschwindigkeit

#### Erinnerung an Klasse 11

Vor dem freien Fall hat ein Körper eine bestimmte potentielle Energie (Lageenergie). Die potentielle Energie ist abhängig von seiner Starthöhe über dem Boden:

$$ E_\text{pot} = m \cdot g \cdot h $$

Auf dem Weg von der Startposition zum Boden nimmt der Körper diese potentielle Energiemenge als kinetische Energie auf. Kurz vor dem Aufprall auf dem Boden ist seine kinetische Energie:

$$ E_\text{pot} = E_\text{kin} $$

#### Situation im elektrischen Feld

Im elektrischen Feld des geladenen Plattenkondensators wird das Elektron von der negativ geladenen Platte abgestoßen
und von der positiv geladenen Platte angezogen. Das Elektron "fällt" von der negativ geladenen Platte auf die positiv geladene Platte.

Die potentielle Energiemenge, welche das Elektron aufnehmen kann, ist bestimmt durch seine Ladung q und die angelegte Beschleunigungsspannung U:

$$ E_\text{el} = q \cdot U_\text{B} $$

In der Beschleunigungsstrecke zwischen Glühdraht und Lochanode nimmt das Elektron diese potentielle Energiemenge als kinetische Energie auf:

$$ E_\text{el} = E_\text{kin} $$

mit $E_\text{el} = U_\text{B} \cdot q$ und $E_\text{kin} = \frac{1}{2} \cdot m_\text{e} \cdot v^2$ ($q$ ist die Ladung und $m_\text{e}$ ist die Masse **eines** Elektrons).

Einsetzen liefert:

$$
U_\text{B} \cdot q = \frac{1}{2} \cdot m_\text{e} \cdot v^2
$$

also

$$
U_\text{B} = \frac{m_\text{e} \cdot v^2}{2 \cdot q}
$$

Um einen Elektronenstrahl mit der Geschwindigkeit $v$ zu erzeugen, muss man die Elektronen mit der Beschleunigungsspannung $U_\text{B} = \frac{m_\text{e} \cdot v^2}{2 \cdot q}$ beschleunigen (gilt nur für Geschwindigkeiten von deutlich weniger als 10% der Lichtgeschwindigkeit, sonst müssen relativistische Effekte berücksichtigt werden).

Die Gleichung

$$
E_\text{kin} = E_\text{el}
$$

mit $E_\text{kin} = \frac{1}{2} \cdot m_\text{e} \cdot v^2$ und $E_\text{el} = U_\text{B} \cdot q$ kann auch nach der Geschwindigkeit $v$ aufgelöst werden:

$$
\require{action}
\def\click{\rlap{\enclose{box}{\small\text{Zeige nächsten Schritt}}}\hphantom{\longest}}
\def\={\phantom{ {} = {} }}
\def\longest{\sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}}}
\toggle
  {\begin{aligned}[t] 
    \frac{1}{2} \cdot m_\text{e} \cdot v^2 &= U_\text{B} \cdot q \\
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    \frac{1}{2} \cdot m_\text{e} \cdot v^2 &= U_\text{B} \cdot q \\ 
    v^2 &= \frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}} \\ 
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    \frac{1}{2} \cdot m_\text{e} \cdot v^2 &= U_\text{B} \cdot q \\ 
    v^2 &= \frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}} \\ 
    v &= \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} 
  \end{aligned}}
\endtoggle
$$

Wenn der Elektronenstrahl mit der Beschleunigungsspannung $U_\text{B}$ beschleunigt wird, erreichen die Elektronen eine Geschwindigkeit von 

$$ v = \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} $$

---

## Modellierung: Flugbahn

Wenn der Elektronenstrahl die Lochanode passiert hat, nehmen wir vereinfachend an:

- dass in x-Richtung keine Kraft mehr auf ihn wirkt und

- er sich mit konstanter Geschwindigkeit in x-Richtung bewegt. 

Platziert man einen Kondensator parallel zur x-Richtung, dann kann der Elektronenstrahl durch die in die y-Richtung wirkende elektrische Kraft abgelenkt werden. 

Für die **Ablenkung in y-Richtung** gilt folgende Formel:

$$
y(x) = \frac{U_\text{y}}{4 \cdot d \cdot U_\text{B}} \cdot x^2
$$

- $y(x)$ = $y$-Koordinate des Elektronenstrahls an der Stelle $x$ im Ablenkkondensator
- $d$ = Abstand der Kondensatorplatten
- $U_\text{y}$ = Spannung zwischen den Platten des Ablenkkondensators
- $U_\text{B}$ = Beschleunigungsspannung zwischen Glühdraht und Lochanode in $x$-Richtung
- $x$ = $x$-Koordinate des Elektronenstrahls im Ablenkkondensator

![](efeld_estrahlroehre_01.svg)

---

### Simulation: Elektronenstrahlröhre

> <a href="/apps/efeld/04_estrahlroehre/estrahlroehre.html" target="_blank">Simulation in neuem Fenster öffnen</a>


<iframe src="/apps/efeld/04_estrahlroehre/estrahlroehre.html" width="100%" height="600" frameborder="0" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Klicke** auf "Elektronenemission an/aus", um einen Elektronenstrahl zu erzeugen.

- **Verändere** die Spannung am Ablenkkondensator, indem du "PK-Spannung" veränderst und beobachte die Auswirkung auf den Elektronenstrahl.

- **Aktiviere** "Messdaten anzeigen". 

- **Berechne** mit der angegebenen Formel und den Messdaten die y-Auslenkung bei einem bestimmten x-Wert. 

- **Vergleiche** deine Berechnung mit der Berechnung der Simulation und dem Auftreffpunkt in der Simulation.

</details>

---

## Herleitung der Formel

![](efeld_estrahlroehre_04.svg)

#### 1) Bewegung des Elektrons in x-Richtung

Der Elektronenstrahl erreicht den Ablenkkondensator mit der Geschwindigkeit 

$$
v_\text{x} = \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}}
$$

In $x$-Richtung wirkt auf das Elektron keine Kraft. Daher bewegt sich das Elektron in **$x$-Richtung** mit der **konstanten Geschwindigkeit** 

$$
v_\text{x} = \frac{x}{t}
$$

Zum Zeitpunkt $t$ befindet sich das Elektron dann am Ort $x = v_\text{x} \cdot t$.

#### 2) Kraftwirkung auf das Elektron im Ablenkkondensator

Innerhalb des Ablenkkondensators wird ein Elektron von der negativ geladenen Platte abgestoßen und von der positiv geladenen Platte angezogen. 

In $y$-Richtung wirkt die Kraft $F_\text{el}$. Für die elektrische Feldstärke $E$ gilt: 

$$
E = \frac{F_\text{el}}{q}
$$

mit $q$ = Ladung eines Elektrons und damit 

$$
F_\text{el} = q \cdot E
$$

Die elektrische Feldstärke $E$ kann mit Hilfe der Spannung $U_\text{y}$ beschrieben werden: 

$$
E = \frac{U_\text{y}}{d}
$$

Also gilt insgesamt für die auf das Elektron wirkende **elektrische Kraft $F_\text{el}$** im Ablenkkondensator: 

$$
F_\text{el} = q \cdot E = q \cdot \frac{U_\text{y}}{d}
$$

oder

$$
F_\text{el} = \frac{U_\text{y} \cdot q}{d}
$$

#### 3) Beschleunigung in y-Richtung

Aufgrund der in $y$-Richtung wirkenden Kraft $F_\text{el}$ wird das Elektron in $y$-Richtung beschleunigt. Da sich die beschleunigende Kraft $F_\text{el}$ innerhalb des Plattenkondensators nicht ändert, ist die **Beschleunigung** $a_\text{y}$ des Elektrons in **$y$-Richtung konstant** und es gilt das Newtonsche Grundgesetz:

$$
F = m \cdot a
$$

und hier speziell 

$$
F_\text{el} = m_\text{e} \cdot a_\text{y}
$$

Für die Beschleunigung $a_\text{y}$ gilt also mit $F_\text{el} = \frac{U_\text{y} \cdot q}{d}$:

$$
a_\text{y} = \frac{F_\text{el}}{m_\text{e}} = \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d}
$$

#### 4) Zurückgelegter Weg in y-Richtung

Bei einer beschleunigten Bewegung in $y$-Richtung gilt für den Ort $y$:

$$
y = \frac{1}{2} \cdot a_\text{y} \cdot t^2
$$

Ersetzt man $a_\text{y}$ mit $a_\text{y} = \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d}$, folgt:

$$
y = \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot t^2
$$

#### 5) $y$-Ablenkung in Abhängigkeit vom Ort $x$

Aus $v_\text{x} = \frac{x}{t}$ folgt 

$$
t = \frac{x}{v_\text{x}}
$$

Damit ersetzt man $t$ in der Formel für die Auslenkung $y$:

$$
\require{action}
\def\click{\rlap{\enclose{box}{\small\text{Zeige nächsten Schritt}}}\hphantom{\longest}}
\def\={\phantom{ {} = {} }}
\def\longest{\frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot \left( \frac{x}{v_\text{x}} \right) ^2}
\toggle
  {\begin{aligned}[t] 
    y &= \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot t^2 \\ 
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    y &= \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot t^2 \\   
    y &= \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot \left( \frac{x}{v_\text{x}} \right) ^2 \\  
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    y &= \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot t^2 \\   
    y &= \frac{1}{2} \cdot \frac{U_\text{y} \cdot q}{m_\text{e} \cdot d} \cdot \left( \frac{x}{v_\text{x}} \right) ^2 \\   
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot v_x^2} \cdot x^2
  \end{aligned}}
\endtoggle
$$

Für die Geschwindigkeit $v_\text{x}$ wissen wir, dass gilt: 

$$
v_\text{x} = \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}}
$$

Damit wird das $v_\text{x}$ in der Formel für die Auslenkung $y$ ersetzt:

$$
\require{action}
\require{cancel}
\def\click{\rlap{\enclose{box}{\small\text{Zeige nächsten Schritt}}}\hphantom{\longest}}
\def\={\phantom{ {} = {} }}
\def\longest{\frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} \right) ^2} \cdot x^2}
\toggle
  {\begin{aligned}[t] 
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} \right) ^2} \cdot x^2 \\
    &\=\click
  \end{aligned}}
  {\begin{aligned}[t] 
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} \right) ^2} \cdot x^2 \\
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}} } \cdot x^2 \\ 
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} \right) ^2} \cdot x^2 \\
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}} } \cdot x^2 \\ 
    y &= \frac{U_\text{y} \cdot \cancel{q} \cdot \cancel{m_\text{e}}}{4 \cdot \cancel{m_\text{e}} \cdot d \cdot U_\text{B} \cdot \cancel{q}} \cdot x^2 \\
    &\=\click
  \end{aligned}}
  
  {\begin{aligned}[t] 
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \left( \sqrt{\frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}}} \right) ^2} \cdot x^2 \\
    y &= \frac{U_\text{y} \cdot q}{2 \cdot m_\text{e} \cdot d \cdot \frac{2 \cdot U_\text{B} \cdot q}{m_\text{e}} } \cdot x^2 \\
    y &= \frac{U_\text{y} \cdot \cancel{q} \cdot \cancel{m_\text{e}}}{4 \cdot \cancel{m_\text{e}} \cdot d \cdot U_\text{B} \cdot \cancel{q}} \cdot x^2 \\
    y &= \frac{U_\text{y}}{4 \cdot d \cdot U_\text{B}} \cdot x^2
  \end{aligned}}
\endtoggle
$$

und in der funktionalen Schreibweise:

$$
y(x) = \frac{U_\text{y}}{4 \cdot d \cdot U_\text{B}} \cdot x^2
$$

> [!NOTE]
>Damit ist die Formel begründet hergeleitet worden.

---