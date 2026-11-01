## Messwerte

- Bei der Durchführung von Experimenten sammelt man **Messwerte**. 

- Auf der Grundlage dieser Messwerte versucht man **Vorhersagen** für zukünftige Experimente ableiten zu können. 

- Dazu werden für ein bestimmtes Experiment Messwerte mit Hilfe einer geeigneten **mathematischen Formel** modelliert. 

---

### Beispiel

Ein **Auto** fährt auf einer geraden, ebenen Strecke. Mit Hilfe einer Zeitmesseinrichtung (z.B. Stoppuhr) und einer Längenmesseinrichtung (z.B. Laserentfernungsmesser) wird zu bestimmten Zeitpunkten seine Position gemessen. 

Dabei notiert man folgende **Messwerte**:

<table>
    <tr>
        <td>Zeit $t$ in s</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td>
    </tr>
    <tr>
        <td>Ort $s$ in m</td><td>0.0</td><td>11</td><td>23</td><td>32</td><td>42</td><td>55</td><td>67</td><td>76</td><td>89</td>
    </tr>
</table>

---

#### Grafische Darstellung der Messwerte

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaACZPAEYaZKpPWJSAXXdffyQYXEwosAVAkFz-CEwicQB3BHFjAE8FHj4ogDMkYEwKvL98EG7A4DAAQRgQYu8BqogYKK8IFCQAWxAoxwAtbkhIC2qPCDqrIgAZJBkQYBKyiohgK5uliE7JMD1cAC9NiCSACyeYziTBWXCSLYKMDHcSdTp9MBRaLpCAJeI5CCoUS1BTqKHtGEQAC+JMq8z8zVeqw2WwA8tDqhBDmtjqdiJdrrcIKVyp4nlzXu8UJ8fn9AcDQeDIRBHNDYfDEcjYgJEhAqJjsbiAJpbMBNRwkklzYn0YkAShEEikkHwSDASBU0TyKM8GvJ0SSySSORdaviAGZfX5ogHPAGMR6gRAAZGXQBWTzx+PBmIUTwUASp6ICTwCCjZgAcnkLAE4svQslbJNIICCLGBMCo7Q7tGsTPZ7NEYJ5mllzWQAHxzOSKfDaUQKED2kBOesi47d3uYnwUvxg35RIFzKqdXDAYCNYDiBRbADEAJAonwogBHh3-mkCnEAGsQEeT+f4hQkBRS0h7zXN4kFEP5HEnUFMEAtcaTA6CKXZC5nm5bpehAE1zXoS0gA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaACZPAEYaZKpPWJSAXXdffyQYXEwosAVAkFz-CEwicQB3BHFjAE8FHj4ogDMkYEwKvL98EG7A4DAAQRgQYu8BqogYKK8IFCQAWxAoxwAtbkhIC2qPCDqrIgAZJBkQYBKyiohgK5uliE7JMD1cAC9NiCSACyeYziTBWXCSLYKMDHcSdTp9MBRaLpCAJeI5CCoUS1BTqKHtGEQAC+JMq8z8zVeqw2WwA8tDqhBDmtjqdiJdrrcIKVyp4nlzXu8UJ8fn9AcDQeDIRBHNDYfDEcjYgJEhAqJjsbiAJpbMBNRwkklzYn0YkAShEEikkHwSDASBU0TyKM8GvJ0SSySSORdaviAGZfX5ogHPAGMR6gRAAZGXQBWTzx+PBmIUTwUASp6ICTwCCjZgAcnkLAE4svQslbJNIICCLGBMCo7Q7tGsTPZ7NEYJ5mllzWQAHxzOSKfDaUQKED2kBOesi47d3uYnwUvxg35RIFzKqdXDAYCNYDiBRbADEAJAonwogBHh3-mkCnEAGsQEeT+f4hQkBRS0h7zXN4kFEP5HEnUFMEAtcaTA6CKXZC5nm5bpehAE1zXoS0gA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

#### Regressionshypothese

Die grafische Darstellung der Messwerte lässt einen linearen Zusammenhang vermuten, also wird als Regressionsmethode die **lineare Regression** gewählt.

Um die lineare Regression durchzuführen, werden die Werte für die Zeit $t$ als **unabhängige Werte** und die Werte für die Strecke $s$ als von der Zeit $t$ **abhängige Werte** gewählt. 

Die lineare Regression z.B. mit dem GTR liefert:

$$
y = 11,03333 \cdot x - 0,24443
$$

---

#### Schaubild mit Modellgraph

> <a href="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaACZPAEYaZKpPWJSAXXdffyQYXEwosAVAkFz-CEwicQB3BHFjAE8FHj4ogDMkYEwKvL98EG7A4DAAQRgQYu8BqogYKK8IFCQAWxAoxwAtbkhIC2qPCDqrIgAZJBkQYBKyiohgK5uliE7JMD1cAC9NiCSACyeYziTBWXCSLYKMDHcSdTp9MBRaLpCAJeI5CCoUS1BTqKHtGEQAC+JMq8z8zVeqw2WwA8tDqhBDmtjqdiJdrrcIKVyp4nlzXu8UJ8fn9AcDQeDIRBHNDYfDEcjYgJEhAqJjsbiAJpbMBNRwkklzYn0YkAShEEikkHwSDASBU0TyKM8Gs8EBdSWSSRyLrV8QAzH6-NFA55AxjydEgRAAVGXQBWTyJxMhmIUTwUATp6ICTwCCi5gAcnmLAE4svQslbJNIICCLGBMCo7Q7tGsTPZ7NEYJ5mllzWQAHxzOSKfDaUQKED2kBORsi469-uYnwUvxg35RIFzKqdXDAYCNYDiBRbADEAJAonwogBHj3-mkCnEAGsQCez5f4hQkBRyyQR8NzeJBRD+Rxp1BTBgI3GkINgil2QuZ5uW6XoQBNc16Eteh6AAenwiBzgsWcZwgAAlEA4BnTAwUkAIQBnHEUBAFAxDrSBOmCN8wAhG0mLWFQZxo6Z6JQbRgFIxR7DbJBPGWYxmKKfiokTElcOtetpG4OBgjgFRuJQXj+J0hQ1m0EAAEdAntfiURrDibQgZowKIPpVhkTAWKsfg3h4vjOMEyybLsyRol9ERCMo6jaPEzA4CYpAhggX5cBYtinPrES4v4kjWJUcclCnGc5ycIzREClAaJMIhlzmCqqvsGAh2WGcwECBQUGqMBdP0iAACoFggABqFy3I8q5vKISwwDAWhjTXOYX3fT9xFPc9ZR0m4ZGAcpEJ618PzwQgiCiNV4K2KjRLo0zEqMIZHDNXD6CKydp1nXqnF6mAYU8CKy1jAADZoVAAEi8HSeH07R9QAMVwKZ8HsRNzVJGBRogewIdcnFJq8ny5th8QEaRlG0fNIGlv3D4vm3f5YwkDatm24Bdv257aCAA" target="_blank">Graph in neuem Fenster öffnen</a>

<iframe src="/apps/jsxgplayground/?code=DYUwLgBAVgHg5gYQIYDsBuSDOB1AlgEzAAsIBeCANgAYqBuAKFElkVQ0wAkRc4jJyA7DQb0AxgHsUmSACNxSAE74yEAFIANAOIA6VQGUtCpAAci23ClxgAQvKUAKAOQs5MRwBoIAb3oQ-EOQBXFHwLOFcALggAbQBaACZPAEYaZKpPWJSAXXdffyQYXEwosAVAkFz-CEwicQB3BHFjAE8FHj4ogDMkYEwKvL98EG7A4DAAQRgQYu8BqogYKK8IFCQAWxAoxwAtbkhIC2qPCDqrIgAZJBkQYBKyiohgK5uliE7JMD1cAC9NiCSACyeYziTBWXCSLYKMDHcSdTp9MBRaLpCAJeI5CCoUS1BTqKHtGEQAC+JMq8z8zVeqw2WwA8tDqhBDmtjqdiJdrrcIKVyp4nlzXu8UJ8fn9AcDQeDIRBHNDYfDEcjYgJEhAqJjsbiAJpbMBNRwkklzYn0YkAShEEikkHwSDASBU0TyKM8Gs8EBdSWSSRyLrV8QAzH6-NFA55AxjydEgRAAVGXQBWTyJxMhmIUTwUATp6ICTwCCi5gAcnmLAE4svQslbJNIICCLGBMCo7Q7tGsTPZ7NEYJ5mllzWQAHxzOSKfDaUQKED2kBORsi469-uYnwUvxg35RIFzKqdXDAYCNYDiBRbADEAJAonwogBHj3-mkCnEAGsQCez5f4hQkBRyyQR8NzeJBRD+Rxp1BTBgI3GkINgil2QuZ5uW6XoQBNc16Eteh6AAenwiBzgsWcZwgAAlEA4BnTAwUkAIQBnHEUBAFAxDrSBOmCN8wAhG0mLWFQZxo6Z6JQbRgFIxR7DbJBPGWYxmKKfiokTElcOtetpG4OBgjgFRuJQXj+J0hQ1m0EAAEdAntfiURrDibQgZowKIPpVhkTAWKsfg3h4vjOMEyybLsyRol9ERCMo6jaPEzA4CYpAhggX5cBYtinPrES4v4kjWJUcclCnGc5ycIzREClAaJMIhlzmCqqvsGAh2WGcwECBQUGqMBdP0iAACoFggABqFy3I8q5vKISwwDAWhjTXOYX3fT9xFPc9ZR0m4ZGAcpEJ618PzwQgiCiNV4K2KjRLo0zEqMIZHDNXD6CKydp1nXqnF6mAYU8CKy1jAADZoVAAEi8HSeH07R9QAMVwKZ8HsRNzVJGBRogewIdcnFJq8ny5th8QEaRlG0fNIGlv3D4vm3f5YwkDatm24Bdv257aCAA" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

---

#### Physikalisierung des funktionalen Zusammenhangs

- Als **y-Achsenabschnitt** liefert die lineare Regression $-0,24443$. Da zum Zeitpunkt 0 noch kein Weg zurückgelegt wurde, wird der y-Achsenabschnitt auf 0 gesetzt. 

- Für $y$ setzt man die Strecke $s$ in Abhängigkeit von $t$.

- Für $x$ setzt man die Zeit $t$. 

Damit lässt sich der Funktionsterm wie folgt schreiben:

$$
    s(t) = 11,03333 \cdot t
$$

- Auf der linken Seite hat der Weg $s(t)$ die physikalische Einheit $\text{m}$ (Meter). 

- Rechts wird für $t$ als Einheit $\text{s}$ (Sekunden) eingesetzt. 

- Das passt noch nicht. Als bekommt die Steigung die Einheit $\frac{\text{m}}{\text{s}}$, so dass sich Sekunden kürzen und Meter als Einheit bleibt. 

Diese Wahl macht Sinn, denn die Steigung im Zeit-Weg-Diagramm entspricht der Geschwindigkeit $v$, welche die Einheit $\frac{\text{m}}{\text{s}}$ hat.

Der ungenaueste Messwert ist mit einer Stelle hinter dem Komma angegeben. Das Ergebnis wird folglich mit 2 Stellen hinter dem Komma angegeben.

Damit kann die Messtabelle mit folgendem Term geeignet mathematisch modelliert werden:

$$
    s(t) = 11,03 \tfrac{\text{m}}{\text{s}} \cdot t
$$

---

## Darstellung eines Messwerts

Die bei einem physikalischen Experiment erfassten **Messwerte** beschreiben die Größe einer physikalischen Eigenschaft von Objekten (z.B. Ladung einer Metallkugel), von Zuständen (z.B. Temperatur in einem Raum) oder von Vorgängen (z.B. Bewegung eines Autos). 

Ein **Beispiel** für einen Messwert ist: $\:\:\: v = 43,8 \frac{\text{m}}{\text{s}} \:\:\:$ (Geschwindigkeit)

> Ein Messwert besteht aus **drei Bestandteilen**:
>
>  1. **der physikalischen Größe**, die durch einen **Begriff** und ein **Symbol** festgelegt ist (hier: Geschwindigkeit $v$),
>  2. **dem Zahlenwert** (hier: $43,8$)
>  3. **der Einheit** (hier: $\frac{\text{m}}{\text{s}}$)

---

## Physikalische Größe

In der Formelsammlung gibt es eine **große Anzahl** physikalischer Größen, mit jeweils einem Namen und einem dafür reservierten Symbol (z.B. Kraft $F$, Energie $E$, magnetische Flussdichte $B$,...). 

Alle diese physikalischen Größen können mit wenigen grundlegenden Größen beschrieben werden. Zum Beispiel kann die physikalische Größe "**Geschwindigkeit**" mit den physikalischen Größen "**Länge**" und "**Zeit**" beschrieben werden:

$$
\text{Geschwindigkeit} = \frac{\text{Länge}}{\text{Zeit}}
$$

Die Suche nach solchen grundlegenden physikalischen Größen hat zu einer Festlegung von **7 physikalischen Basisgrößen** geführt, mit denen man alle anderen bekannten physikalischen Größen beschreiben kann.

Die **7 Basisgrößen** mit den dafür verwendeten Symbolen sind:

- Länge ($l$, $s$, $r$)

- Masse ($m$)

- Zeit ($t$)

- elektrische Stromstärke ($I$)

- Temperatur ($T$)

- Stoffmenge ($n$)

- Lichtstärke ($I_\text{v}$)

Jede physikalische Größe kann als **Potenzprodukt** (Term mit den Punktoperatoren: mal, geteilt, hoch) aus diesen **Basisgrößen** dargestellt werden. 

> [!NOTE]
>Die Darstellung einer **physikalischen Größe** als Potenzprodukt der Basisgrößen nennt man **Dimension** der physikalischen Größe. 

---

### Beispiel 1
 
- Gib die physikalische Größe "**elektrische Ladung**" nur mit Basisgrößen an oder anders formuliert: gib die Dimension der physikalischen Größe "**elektrische Ladung**" an.

<details>

  <summary>Lösungsvorschlag</summary>
  
Für die physikalische Größe "**elektrische Ladung**" verwendet man das Symbol $Q$. Bei einem negativ geladenen Körper beschreibt die Ladung $Q$ den Elektronenüberschuss (Anzahl Elektronen minus Anzahl Protonen) mal Elementarladung, also $Q = -(N_e - N_p) \cdot e$. Um einen Körper aufzuladen, fließt ein elektrischer Strom der Stromstärke $I$ für die Zeit $t$ auf den Körper. Die Ladung $Q$ kann also als Produkt von konstanter Stromstärke $I$ und der Zeit $t$ beschrieben werden:

$$
Q = I \cdot t
$$

Die Dimension der elektrischen Ladung $Q$ ist das Potenzprodukt der Basisgrößen "**elektrische Stromstärke**" und "**Zeit**":

$$
\text{Ladung} = \text{Stromstärke} \cdot \text{Zeit}
$$

</details>

---

### Beispiel 2
 
- Gib die **Dimension** der physikalischen Größe **Kraft** an.

<details>

  <summary>Lösungsvorschlag</summary>
  
Für die physikalische Größe "**Kraft**" verwendet man das Symbol $F$. Eine Kraft $F$ bewirkt nach dem 2. Newtonschen Grundgesetz eine Änderung des Bewegungszustands (Beschleunigung $a$) eines Körpers mit der Masse $m$ oder in Formelschreibweise: $F = m \cdot a$.

Die Beschleunigung $a$ beschreibt die Änderung der Geschwindigkeit $v$ während der Zeit $t$. Die Geschwindigkeit $v$ beschreibt die Änderung des Weges $s$ während der Zeit $t$. Also ist die Beschleunigung $a$ die Änderung der Änderung des Weges $s$ während der Zeit $t$. **Falls** die Beschleunigung $a$ während der Zeit $t$ **konstant** ist, gilt:
 
$$
F = m \cdot a = m \cdot \frac{v}{t} = m \cdot \frac{\frac{s}{t}}{t} = m \cdot \frac{s}{t^2}
$$
 
Damit ist die **Dimension der Kraft $F$** das Potenzprodukt der Basisgrößen **Masse**, **Länge** und **Zeit**:
 
$$
\text{Kraft} = \text{Masse} \cdot \frac{\text{Länge}}{\text{Zeit}^2}
$$

</details>

---

### Beispiel 3
 
- Gib die **Dimension** der physikalischen Größe "**magnetische Flussdichte**" an.

<details>

  <summary>Lösungsvorschlag</summary>
  
Für die physikalische Größe "**magnetische Flussdichte**" verwendet man das Symbol $B$. Fliesst durch einen Leiter der Länge $s$ ein elektrischer Strom mit der Stromstärke $I$ senkrecht zu einem Magnetfeld mit der magnetischen Flussdichte $B$, dann wirkt auf den stromdurchflossenen Leiter die Lorentzkraft $F_L$ mit $F_L = I \cdot s \cdot B$.

Löst man diese Formel nach $B$ auf, folgt (siehe Beispiel 2):

$$
B = \frac{F_L}{I \cdot s} = \frac{m \cdot \frac{s}{t^2}}{I \cdot s} = \frac{m}{I \cdot t^2}
$$

Damit ist die **Dimension der magnetischen Flussdichte $B$** das Potenzprodukt der Basisgrößen **Masse**, **elektrische Stromstärke** und **Zeit**:

$$
\text{magnetische Flussdichte} = \frac{\text{Masse}}{\text{elektrische Stromstärke} \cdot \text{Zeit}^2}
$$

</details>

---

## Zahlenwert

- Um einen Messwert zu ermitteln, werden Messgeräte eingesetzt.

- Bei einem Messvorgang wird eine physikalische Größe mit den Eigenschaften des Messgeräts **verglichen**.

- Der Vergleich liefert einen **Zahlenwert**, der zusammen mit einer **physikalischen Einheit** angegeben wird. 

---

### Große und kleine Zahlen

Der Zahlenwert wird normalerweise im üblichen Dezimalsystem angegeben. Zur Beschreibung mancher physikalischer Phänomene benötigt man Zahlen, die unfassbar groß, aber auch unvorstellbar klein sein können. 

**Beispiele für sehr große und sehr kleine Zahlen:**

- Die **Anzahl der Sterne im beobachtbaren Universum** wird auf ca. $70.000.000.000.000.000.000.000$ geschätzt.

- Bei einer Stromstärke von 1 Ampere passieren pro Sekunde etwa $6.500.000.000.000.000.000$ Elektronen einen Querschnitt.

- Der **mittlere Abstand zweier Atome** ist etwa $0,0000000001 \: \text{m}$.

Eine Darstellung von sehr kleinen oder sehr großen Zahlen mit Angabe aller Nullen ist sehr unübersichtlich. Es ist nicht praktikabel, dass man erst alle Stellen zählen muss, bevor man sich eine Vorstellung der Größe der Zahl machen kann. Daher haben Physiker eine andere Notation für sehr große und sehr kleine Zahlen eingeführt: die **wissenschaftliche Darstellung**.

---

### Wissenschaftliche Darstellung von Zahlen

**Beispiele für große Zahlen in der wissenschaftlichen Darstellung:**

  - $100 = 10 \cdot 10 = 10^2$

  - $300 = 3 \cdot 100 = 3 \cdot 10^2$
  
  - $2173 = 2,173 \cdot 1000 = 2,173 \cdot 10^3$ 
  
  - $70.000.000.000.000.000.000.000 = 7 \cdot 10^{22}$
  
  - $6.500.000.000.000.000.000 = 6,5 \cdot 10^{18}$

> [!NOTE]
>**Bildungsregel:** Man nimmt die allererste Ziffer, setzt dahinter ein Komma, notiert eine sinnvolle Anzahl weiterer Ziffern (abhängig von der Genauigkeit der Messung) und multipliziert diese mit einer Zehnerpotenz, deren Hochzahl die Anzahl der Stellen **hinter** der allerersten Ziffer bis zu den Einern angibt.

**Beispiele für Zahlen mit kleinem Betrag in der wissenschaftlichen Darstellung:**

  - $0,01 = \frac{1}{100} = 10^{-2}$

  - $0,007 = \frac{7}{1000} = 7 \cdot 10^{-3}$

  - $0,000452 = \frac{452}{10000} = 4,52 \cdot 10^{-4}$

  - $0,0000000001 = \frac{1}{10000000000} = 1 \cdot 10^{-10}$

  - $0,000000000000000000000000000000000626 = 6,626 \cdot 10^{-34}$

> [!NOTE]
>**Bildungsregel**: Man nimmt die erste Ziffer hinter dem Komma, die nicht Null ist, setzt dahinter ein Komma, notiert eine sinnvolle Anzahl weiterer Ziffern (abhängig von der Genauigkeit der Messung) und multipliziert diese mit einer Zehnerpotenz, deren Hochzahl negativ ist und bei welcher der Betrag der Hochzahl die Stelle hinter dem Komma angibt, **wo die erste von Null verschiedene Ziffer steht**.   

---
   
### Werte runden

Viele physikalische Größen werden aus Messwerten berechnet. Die Genauigkeit der gemessenen Größen hängt vom verwendeten Messgerät ab. 

> [!NOTE]
>Der Zahlenwert einer daraus berechneten Größen sollte nicht genauer sein, als der ungenaueste Messwert, aus dem diese berechnet wurde, **plus eine Stelle**.

- Physikalische Messwerte sollten während der Auswertung grundsätzlich in der wissenschaftlichen Darstellung notiert werden.

- Jeder Messwert wird in der wissenschaftlichen Darstellung mit höchstens so vielen Nachkommastellen notiert, wie das Messgerät anzeigt. 

- In die Rechnung wird jedes Messergebnis mit seiner eigenen Genauigkeit eingetragen. Während der Rechnung werden alle Zwischenergebnisse so notiert, wie der Taschenrechner sie angibt. Das Endergebnis wird mit so vielen Stellen **plus eine Stelle** hinter dem Komma angegeben, wie der ungenaueste Messwert Stellen hinter dem Komma in wissenschaftlicher Notation hat. 

- Um das Endergebnis leichter lesbar zu machen, kann es wieder in ein leichter lesbares Format umgewandelt werden.

#### **Beispiel:**

Man möchte die Geschwindigkeit eines Autos mit einer analogen Stoppuhr und einem Maßband bestimmen. Mit einer analogen Stoppuhr kann man auf Zehntel-Sekunden genau messen, mit dem Maßband auf Millimeter genau. 

Ein mögliches Messwertepaar wäre $s = 435,827 \: \text{m}$, $t = 34,1 \: \text{s}$. **Gib** die Geschwindigkeit in einer angemessenen Genauigkeit an.

##### 1) Angabe in wissenschaftlicher Notation:

$$
\begin{align}
s &= 435,827 \: \text{m} = 4,35827 \cdot 10^2 \: \text{m} \\ 
t &= 34,1 \: \text{s} = 3,41 \cdot 10^1 \: \text{s}
\end{align}
$$

##### 2) Wahl der Genauigkeit
Die Angabe der Zeit $t$ ist mit 2 Stellen hinter dem Komma die ungenaueste Angabe, also wird das Ergebnis in der wissenschaftlichen Notation auf 2 + 1 = 3 Stellen hinter dem Komma gerundet angegeben.

##### 3) Berechnung der physikalischen Zielgröße
Die Geschwindigkeit ist $v = \frac{s}{t} = \frac{4,35827 \: \cdot 10^2  \: \text{m}}{3,41 \cdot 10^1 \: \text{s}} = 12,7808504399 \: \tfrac{\text{m}}{\text{s}} = 1,27808504399 \cdot 10^1 \: \tfrac{\text{m}}{\text{s}}$

##### 4) Angabe in der Zielgenauigkeit
Der vom Taschenrechner berechnete Wert wird auf **2 + 1 = 3 Stellen** hinter dem Komma gerundet:

$$
v = 1,27808504399 \cdot 10^1 \: \tfrac{\text{m}}{\text{s}} = 1,278 \cdot 10^1 \: \tfrac{\text{m}}{\text{s}}
$$

##### 5) Umwandlung in leicht lesbare Notation
Das Ergebnis kann man umschreiben, wobei die Genauigkeit unverändert bleiben muss: 

$$
v = 12,78 \: \tfrac{\text{m}}{\text{s}}
$$

> [!NOTE]
>Die **Anzahl der notierten Stellen hinter dem Komma in der wissenschaftlichen Darstellung** wird durch das **ungenaueste Messgerät**, das bei der Messung verwendet wurde, festgelegt.

---

### Ergebnisse angeben

Physikalische Größen, die ausserhalb von Rechnungen angegeben werden, sollten leicht lesbar notiert sein. Die Lesbarkeit wird erleichtert, indem die Zehnerpotenzen durch **Vorsilben** (Dezimalpräfixe) ersetzt werden.

Eine Übersicht finden Sie z.B. auf Wikipedia: [Dezimalpräfixe (Vorsilben)](https://de.wikipedia.org/wiki/Vors%C3%A4tze_f%C3%BCr_Ma%C3%9Feinheiten)

Die meisten Dezimalpräfixe gibt es für Zehnerpotenzen deren Hochzahl durch 3 teilbar ist. Ausserhalb von Rechnungen wird die Notation von Zahlenwerten wie folgt angepasst:

1. Man schreibt den Wert in wissenschaftlicher Darstellung mit einer Zehnerpotenz, deren **Exponent durch drei teilbar** ist.

2. Man **verschiebt dazu das Komma** in der notierten Zahl und korrigiert den Exponenten in der Zehnerpotenz entsprechend.

3. Man **ersetzt** die Zehnerpotenz durch die **entsprechende Vorsilbe**, die man der Dezimalpräfix-Tabelle entnimmt.

**Beispiele:**

- $1,465 \cdot 10^{-7} \: \text{m} = 146,5 \cdot 10^{-9} \: \text{m} = 146,5 \: \text{nm}$

- $9,553 \cdot 10^{-14} \: \text{s} = 95,53 \cdot 10^{-15} \: \text{s} = 95,53 \: \text{fs}$

- $6,12 \cdot 10^5 \: \text{m} = 612 \cdot 10^3 \: \text{m} = 612 \: \text{km}$

- $5,0723 \cdot 10^{13} \: \text{J} = 50,723 \cdot 10^{12} \: \text{J} = 50,723 \: \text{TJ}$

---

## Physikalische Einheit

Bei der Messung einer physikalischen Größe liefert ein Messgerät einen Zahlenwert. Dieser Zahlenwert ist davon abhängig auf welche **physikalische Einheit** dieses Messgerät eingestellt (kalibriert) ist. 

- Bei einem Längenmessgerät (Metermaß) kann die Skala z.B. mit der **Einheit** $\text{m}$ (Meter) gebaut werden. Es gibt aber auch Längenmessgeräte mit der Einheit "**Fuß**" oder "**Yard**". Man könnte auch eine Längenmessgerät bauen, das auf die Einheit "**Vielfache der Länge einer Waldameisenkönigin**" kalibriert ist.  Alle diese Längenmessgeräte messen die physikalische Größe "**Länge**", zeigen aber andere Zahlen an.

- Bei einem Zeitmessgerät (z.B. eine Stoppuhr) kann die Skala z.B. mit der **Einheit** $\text{s}$ (Sekunde) gebaut werden. Die Einheit könnte aber auch "**Tageslänge**", "**Fallzeit eines Apfels vom Kölner Dom**" oder "**Vielfache der Zeit einer Auf- und Abbewegung eines Bienenflügels im Schwebflug**" sein, was auch hier jeweils andere Zahlenwerte liefen würde.

- Die physikalische Größe "**Geschwindigkeit**" könnte z.B. auch mit einem Messgerät gemessen werden, das aufgrund seiner Konstruktion die Basisgrößen gleichzeitig ermittelt und damit direkt einen Zahlenwert für die Geschwindigkeit auf der Basis der gewählten Einheiten angibt (z.B. Tachometer in $\frac{\text{km}}{\text{h}}$ oder $\frac{\text{Vielfache der Länge einer Waldameisenkönigin}}{\text{Fallzeit eines Apfels vom Kölner Dom}}$).

Damit die physikalischen Größen, die gemessenen werden sollen, verglichen werden können, muss man ein Einheitensystem festlegen, so dass die Messgeräte bei vergleichbaren physikalischen Vorgängen auch gleiche Zahlenwerte liefern. Die Festlegung eines solchen Einheitensystems ist willkürlich.

---

### SI-Einheiten

Das heutzutage am weitesten verbreitete Einheitensystem ist das "**Internationale Einheitensystem (SI)**". Die Basisgrößen mit den SI-Einheiten des Internationalen Einheitensystems werden wie folgt festgelegt:

| Basisgröße / Basisdimension  | Formelzeichen | Basiseinheit | Einheitenzeichen |
|-|-|-|-|
| Länge | $l$, $s$, $r$ | Meter | $\text{m}$ |
| Masse | $m$ | Kilogramm | $\text{kg}$ |
| Zeit | $t$ | Sekunde | $\text{s}$ |
| elektr. Stromstärke | $I$ | Ampere | $\text{A}$ |
| Temperatur | $T$ | Kelvin | $\text{K}$ |
| Stoffmenge | $n$ | Mol | $\text{mol}$ |
| Lichtstärke | $I_\text{v}$ | Candela | $\text{cd}$ |

Alle anderen Einheiten, die Sie in Ihrer Formelsammlung finden, sind Einheiten, die aus den Basiseinheiten zusammengesetzt sind. 

Wenn Formeln mit dem Computer gesetzt werden, ist es üblich die physikalischen Größen $kursiv$ zu schreiben und die Einheiten in $\text{normaler}$ Schreibweise.

Wenn man die Einheit einer physikalischen Größe meint, schreibt man die physikalische Größe in eckigen Klammern:

$$
[\text{Symbol einer physikalischen Größe}] = \text{Einheit}
$$

So wie die Dimension einer physikalische Größe aus den Basisgrößen dargestellt werden kann, ist es auch möglich jede physikalische Einheit nur mit den SI-Einheiten der Basisgrößen darzustellen.

---

### **Beispiel 1**
 
- Gib die Einheit $\text{C}$ (Coulomb) der physikalischen Größe **elektrische Ladung** $Q$ nur mit SI-Einheiten der Basisgrößen an.

<details>

  <summary>Lösungsvorschlag</summary>
  
$$
\text{C} = [Q] = [I] \cdot [t] = \text{A} \cdot \text{s}
$$

</details>

---

### **Beispiel 2**
 
- Gib die Einheit $\text{N}$ (Newton) der physikalischen Größe **Kraft** $F$ nur mit SI-Einheiten der Basisgrößen an.

<details>

  <summary>Lösungsvorschlag</summary>
  
$$
\text{N} = [F] = [m] \cdot [a] = [m] \cdot \frac{[s]}{[t]^2} = \text{kg} \cdot \frac{\text{m}}{\text{s}^2}
$$

Hier müssen Sie darauf achten, dass Sie das Symbol für die physikalische Größe und das Symbol für die Einheit nicht verwechseln (z.B. $s$ als Symbol für Länge und $\text{s}$ für Sekunden oder $m$ für Masse und $\text{m}$ für Meter).


</details>

---

### **Beispiel 3**
 
- Gib die Einheit $\text{T}$ (Tesla) der physikalischen Größe **magnetische Flussdichte** $B$ nur mit SI-Einheiten der Basisgrößen an.

<details>

  <summary>Lösungsvorschlag</summary>
  
$$
\text{T} = [B] = \frac{[F_L]}{[I] \cdot [s]} = \frac{[m]}{[I] \cdot [t]^2} = \frac{\text{kg}}{\text{A} \cdot \text{s}^2}
$$

</details>

---