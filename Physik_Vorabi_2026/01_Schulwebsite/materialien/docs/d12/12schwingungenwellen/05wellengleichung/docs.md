## Wellengleichung

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann den Zusammenhang zwischen Wellenlänge und Frequenz angeben.
> - Ich kann die zugehörige Gleichung anwenden.
> - Ich kann diesen Zusammenhang mithilfe der Zeigerdarstellung oder der Sinusfunktion begründen.

---

## Sinuskurve einer Schwingung

> Simulation in neuem Fenster starten: <a href="/apps/suw/02_zeigerprojektion/zeigerprojektion.html" target="_blank">Zeigerdarstellung</a>

<iframe frameborder="0" src="/apps/suw/02_zeigerprojektion/zeigerprojektion.html" width="100%" height="590" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Klicke** auf "Starten/Pausieren" und **aktiviere** "Gegenkathete anzeigen". **Lass** die Schwingung 10 s laufen.

- **Beobachte** die Gegenkathete, den oszillierenden roten Kreis und die gezeichnete Kurve. 

</details>

<details>

  <summary>Beobachtungen</summary>
  
Die Projektion des Zeigers (Gegenkathete zum Rotationswinkel) beschreibt die Oszillation des roten Kreises. Trägt man die Auslenkung der Schwingung über der Zeit auf, entsteht eine Sinuskurve. Die gezeichnete Sinuskurve beschreibt die Bewegung **eines** Oszillators, wenn die Zeit abläuft. 

![](wellengleichung01.png)

</details>

> [!NOTE]
> Trägt man die Schwingung **eines harmonisch schwingenden Oszillators** über der Zeit auf, entsteht eine Sinuskurve.

---

## Sinuskurve einer Welle

> Simulation in neuem Fenster starten: <a href="/apps/suw/04_wellenarten/wellenarten.html" target="_blank">Wellenarten</a>

<iframe frameborder="0" src="/apps/suw/04_wellenarten/wellenarten.html" width="100%" height="550" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Klicke** auf "Start/Stop" und **lass** die Welle für 10 s laufen.

- **Pausiere** dann die Simulation.

</details>

<details>

  <summary>Lösungsvorschlag</summary>
  
Viele nebeneinanderliegende Oszillatoren, die senkrecht zur Ausbreitungsrichtung schwingen, bilden gemeinsam zu einem bestimmten Zeitpunkt eine Sinuskurve. Die gezeichnete Sinuskurve beschreibt die Auslenkung **vieler** nebeneinanderliegender Oszillatoren zu **einem** bestimmten Zeitpunkt.

![](wellengleichung02.png)

</details>

> [!NOTE]
> Trägt man die Auslenkung von **vielen** harmonisch schwingenden Oszillatoren einer Welle zu **einem bestimmten Zeitpunkt** über dem Ort der Oszillatoren ab, entsteht eine Sinuskurve.

---

## Modellierung einer harmonischen Welle

Eine **harmonische Welle** ist eine Welle, deren Oszillatoren durch rotierende Zeiger mit konstanter Winkelgeschwindigkeit modelliert werden können. 

Die Schwingung eines jeden einzelnen Oszillators der Welle kann mit folgender Sinusfunktion beschrieben werden:

$$
    s(t) = A \cdot \sin(\omega \cdot t) = A \cdot \sin(2 \pi \cdot f \cdot t) = A \cdot \sin \left( \frac{2 \pi}{T} \cdot t \right )
$$

mit Auslenkung $s$, Amplitude $A$, Winkelgeschwindigkeit $\omega$, Frequenz $f$, Periodendauer $T$, Zeit $t$.

Zwischen den Oszillatoren wirkt eine Kraft, so dass aufgrund der Auslenkung des ersten Oszillators der zweite ausgelenkt wird, deswegen der dritte, ... Man sagt auch, dass sich die Störung bzw. **Phase** ausbreitet. 

Die Geschwindigkeit $c$ (**Phasengeschwindigkeit**), mit der sich die Phase ausbreitet, hängt von der Größe der Kopplungskraft ab. Je größer diese ist, desto schneller breitet sich die Phase aus. 

Wenn die Phase einen Ort $x_1$ erreicht hat, beginnt der Oszillator, der sich an diesem Ort befindet, zu schwingen.

Für die Phasengeschwindigkeit $c$ gilt $c = \frac{x_1}{t_1}$. Diese Gleichung löst man nach der Zeit auf. Ein Oszillator, der sich in der Entfernung $x_1$ vom ersten Oszillator befindet, beginnt nach der Zeit $t_1$ an zu schwingen. Es gilt:

$$
    t_1 = \frac{x_1}{c}
$$

Der Oszillator am Ort $x_1$ schwingt genauso wie der erste Oszillator, aber beginnt seine Schwingung später, nämlich zum Zeitpunkt $t-t_1$, wenn man mit $t$ die Zeit angibt, die vergangen ist, nachdem der erste Oszillator seine Schwingung begonnen hat. Die Schwingungsgleichung für den Oszillator am Ort $x_1$ lautet dann:

$$
    s_\text{x_1}(t) = A \cdot \sin \left(\omega \cdot (t - t_1) \right)
$$

Diese Gleichung soll jetzt so weiter entwickelt werden, dass man damit die Schwingung eines jeden Oszillators der Welle modellieren kann. Dazu wird die Zeit $t_1$, welche die Welle benötigt um einen Ort $x_1$ zu erreichen, ersetzt mit $t_1 = \frac{x_1}{c}$:

$$
    s_\text{x_1}(t) = A \cdot \sin \left(\omega \cdot \left( t - \frac{x_1}{c} \right) \right)
$$

Wenn man diese Gleichung auf jeden Ort $x$ der Welle anwenden möchte, ersetzt man $x_1$ allgemein mit $x$ und fügt $x$ als zweite Variable in das Argument der Auslenkung $s$ ein:

$$
    s(x, t) = A \cdot \sin \left(\omega \cdot \left( t - \frac{x}{c} \right) \right)
$$

Für die Winkelgeschwindigkeit $\omega$ gilt: $\omega = \frac{2 \pi}{T}$, so dass folgt:

$$
    s(x, t) = A \cdot \sin \left( \frac{2 \pi}{T} \cdot \left( t - \frac{x}{c} \right) \right)
$$

Der Abstand zweier Oszillatoren einer Welle, die genau gleich schwingen, nennt man die **Wellenlänge** $\lambda$ der Welle. In der Periodendauer $T$, also der Zeit, die ein Oszillator für eine vollständige Schwingung benötigt, legt die Phase der Welle genau eine Wellenlänge $\lambda$ zurück (siehe folgende Simulation).

Es gilt also:

$$
    c = \frac{\Delta x}{\Delta t} = \frac{\lambda}{T}
$$

und damit gilt für den Zusammenhang zwischen Phasengeschwindigkeit $c$, Periodendauer $T$, Frequenz $f$ und Wellenlänge $\lambda$:

$$
    \lambda = c \cdot T = c \cdot \frac{1}{f} \,\,\,\, \text{oder} \,\,\,\ c = \lambda \cdot f
$$

In der Wellengleichung kann man die innere Klammer mit der Periodendauer $T$ ausmultiplizieren und $c \cdot T$ mit $\lambda$ ersetzen:

$$
\begin{align}
    s(x, t) &= A \cdot \sin \left( \frac{2 \pi}{T} \cdot \left( t - \frac{x}{c} \right) \right) \\
            &= A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{c \cdot T} \right) \right) \\
            &= A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{\lambda} \right) \right)
\end{align}
$$

Mit Hilfe dieser **Wellengleichung** kann die Auslenkung $s(x, t)$ eines Oszillators am Ort $x$ zum Zeitpunkt $t$ berechnet werden:

> [!NOTE]
>
> $$ s(x,t) = A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{\lambda} \right) \right) $$

---

## Visualisierung der Wellengleichung

> Simulation in neuem Fenster starten: <a href="/apps/suw/05_wellengleichung/wellengleichung.html" target="_blank">Wellengleichung</a>

<iframe frameborder="0" src="/apps/suw/05_wellengleichung/wellengleichung.html" width="100%" height="600" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
1. **Wähle** mit der linken Maustaste einen Oszillator der Welle aus. Damit wird **ein Ort $x$** festgelegt. **Klicke** dann auf **Start/Stop** und **beobachte** den gewählten Oszillator. 

2. **Lasse** die Welle einige Sekunden in der Simulation schwingen und **klicke** dann auf **Start/Stop**. Damit wird **ein Zeitpunkt $t$** festgelegt. 

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Die Wellengleichung beschreibt bei **einem** fest gewählten Ort $x$ die **Schwingung des gewählten Oszillators** während die Zeit $t$ abläuft. Dazu setzt man einen festen Wert für einen bestimmten Ort $x$ in die Wellengleichung ein und lässt die Wellengleichung die Werte $s(t)$ für alle Zeiten $t$ ausrechnen.

![](wellengleichung03.png)

**Zu 2.**: Die Wellengleichung beschreibt bei **einem** fest gewählten Zeitpunkt $t$ die **momentane Auslenkung aller Oszillatoren** zum Zeitpunkt $t$. Dazu setzt man einen festen Wert für einen Zeitpunkt $t$ in die Wellengleichung ein und lässt die Wellengleichung die Werte $s(x)$ für alle Orte $x$ ausrechnen.

![](wellengleichung04.png)

</details>

---

## Wellengleichung

Die Wellengleichung kann noch kürzer geschrieben werden:

- Die **Winkelgeschwindigkeit** $\omega$ ist $\omega = \frac{2 \pi}{T}$ und beschreibt die Winkelgeschwindigkeit des Zeigers, mit welchem die Schwingung eines Oszillators beschrieben werden kann.
  
- Die **Wellenzahl** $k$ ist $k = \frac{2 \pi}{\lambda}$ und ist ein Maß dafür, wie dicht die Wellenberge im Raum liegen.

Damit folgt:

$$
\begin{align}
 s(x,t) &= A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{\lambda} \right) \right) \\
 s(x,t) &= A \cdot \sin \left( \frac{2 \pi \cdot t}{T} - \frac{2 \pi \cdot x}{\lambda} \right) \\
 s(x,t) &= A \cdot \sin \left( \frac{2 \pi}{T} \cdot t - \frac{2 \pi}{\lambda} \cdot x \right) \\ 
 s(x,t) &= A \cdot \sin \left( \omega \cdot t - k \cdot x \right) \\  
\end{align}
$$

> [!NOTE]
> **Wellengleichung in Kurzschreibweise**
> $$ s(x,t) = A \cdot \sin \left( \omega \cdot t - k \cdot x \right) $$

- $s$ = Auslenkung des Oszillators von der Ruhelage
- $x$ = Ort des betrachteten Oszillators
- $t$ = Zeitpunkt, an welchem die Welle betrachtet wird
- $A$ = Amplitude, also maximale Auslenkung eines Oszillators
- $\omega$ = Winkelgeschwindigkeit des rotierenden Zeigers
- $k$ = Wellenzahl, die beschreibt, wie viele Wellen auf das Bogenmaß $2 \pi$ passen.

---

### Übungsaufgabe 1

**A1.1**: In einer transversalen mechanischen Welle schwingt der erste Oszillator in einer Minute $42$ mal auf und ab. **Berechne** die Periodendauer $T$ und die Frequenz $f$ des Oszillators.

**A1.2**: In der betrachteten Welle sind benachbarte Oszillatoren so gekoppelt, dass ein Oszillator der $7,2 \, \text{m}$ vom ersten Oszillator entfernt ist, nach $5,0 \, \text{s}$ zu oszillieren beginnt. **Berechne** die Phasengeschwindigkeit $c$ der Welle.

**A1.3**: **Berechne** die Wellenlänge $\lambda$ der Welle.

<details>

  <summary>Lösungsvorschlag</summary>
  
**Zu A1.1**: 

Die Frequenz $f$ gibt die Anzahl der Schwingungen pro Sekunde an:

$$
\begin{align}
    f &= \frac{42}{60 \, \text{s}} = 0,70 \, \tfrac{1}{\text{s}} = 0,70 \, \text{Hz} \\
\end{align}
$$

Die Periodendauer $T$ gibt an, wie lang ein einziger vollständiger Schwingungsvorgang eines Oszillators dauert. $T$ ist also der Kehrwert der Frequenz $f$:

$$
    T = \frac{1}{f} = \frac{1}{0,70 \, \tfrac{1}{\text{s}}}  = 1,43 \, \text{s} \\
$$

---

**Zu A1.2**: 

Die Phasengeschwindigkeit $c$ gibt an, welche Strecke die Störung pro Sekunde zurücklegt:

$$
    c = \frac{7,2 \, \text{m}}{5,0 \, \text{s}} = 1,44 \, \tfrac{\text{m}}{\text{s}} \\
$$

---

**Zu A1.3**: 

Für den Zusammenhang zwischen der Phasengeschwindigkeit $c$, der Frequenz $f$ und der Wellenlänge $\lambda$ gilt: $c = f \cdot \lambda$.

$$
\begin{align}
    c &= f \cdot \lambda \\  
    \lambda &= \frac{c}{f} \\  
    \lambda &= \frac{1,44 \, \tfrac{\text{m}}{\text{s}}}{0,70 \, \tfrac{1}{\text{s}}} = 2,06 \, \text{m} \\
\end{align}    
$$

</details>

---

### Übungsaufgabe 2

**A2.1**: Du stehst am Ufer eines Sees und beobachtest die Schwimmbojen, welche den Nichtschwimmerbereich begrenzen. Aufgrund des Windes gibt es leichte Wellen auf dem See. Zwei Bojen sind etwa $6 \, \text{m}$ voneinander entfernt befestigt. In einer Messzeit von 2 Minuten zählt man 105 vollständige Auf- und Abbewegungen einer Boje. Wenn eine Boje ihren Wellenberg erreicht hat, dauert es $4,1 \, \text{s}$, bis die benachbarte Boje ihren Wellenberg erreicht. **Berechne** die Wellenlänge einer Wasserwelle.

**A2.2**: Wir modellieren den geraden Wellenzug, der durch die Bojen verläuft, vereinfachend als transversale Welle. Für die Auf- und Abbewegung der Bojen schätzt man einen Abstand von $0,4 \, \text{m}$ zwischen Wellenberg und Wellental. **Gib** eine geeignete Wellengleichung an, welche die Wasserwelle modelliert.

<details>

  <summary>Lösungsvorschlag</summary>
  
**Zu A2.1**: 

Die Frequenz $f$ einer Boje ist:

$$
\begin{align}
    f &= \frac{105}{120 \, \text{s}} = 0,875 \, \tfrac{1}{\text{s}} \\
\end{align}
$$

Die Phasengeschwindigkeit $c$ der Wasserwelle beschreibt, mit welcher Geschwindigkeit sich ein Wellenberg durch die Welle bewegt:

$$
    c = \frac{6 \, \text{m}}{4,1 \, \text{s}} = 1,463 \, \tfrac{\text{m}}{\text{s}} \\
$$

Für den Zusammenhang zwischen der Phasengeschwindigkeit $c$, der Frequenz $f$ und der Wellenlänge $\lambda$ gilt: $c = f \cdot \lambda$.

$$
\begin{align}
    c &= f \cdot \lambda \\  
    \lambda &= \frac{c}{f} \\  
    \lambda &= \frac{1,463 \, \tfrac{\text{m}}{\text{s}}}{0,875 \, \tfrac{1}{\text{s}}} = 1,672 \, \text{m} \\
    \lambda &= 1,7 \, \text{m} \\
\end{align}    
$$

> Hinweis: Die angegebenen Werte mit der ungenauesten Angabe haben keine Stelle hinter dem Komma in der wissenschaftlichen Darstellung (6 m, 2 min). Das Ergebnis wird daher mit einer Stelle hinter dem Komma in wissenschaftlicher Darstellung angegeben.

---

**Zu A2.2**: Die allgemeine Form einer Wellengleichung ist:

$$
 s(x,t) = A \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{T} - \frac{x}{\lambda} \right) \right)
$$

Wir sammeln die Größen der Wellen:

- Amplitude $A = 0,4 \, \text{m} \cdot 0,5 = 0,2 \, \text{m}$, da die Amplitude von der Ruhelage aus gemessen wird
- Zeit $t$ ist eine Variable
- Periodendauer $T = \frac{1}{f} = \frac{1}{0,875 \, \tfrac{1}{\text{s}}}  = 1,1 \, \text{s}$
- Ort $x$ ist eine Variable
- Wellenlänge $\lambda = 1,7 \, \text{m}$

Setzt man diese Größen in die allgemeine Wellengleichung ein, so folgt:

$$
 s(x,t) = 0,2 \, \text{m} \cdot \sin \left( 2 \pi \cdot \left( \frac{t}{1,1 \, \text{s}} - \frac{x}{1,7 \, \text{m}} \right) \right)
$$

</details>

