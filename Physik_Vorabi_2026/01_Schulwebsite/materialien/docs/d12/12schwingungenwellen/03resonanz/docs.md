## Resonanz

---

> **Bezug zum Kerncurriculum:**  
> - Ich kann die Bedingung beschreiben, unter der bei einer erzwungenen Schwingung Resonanz auftritt. 
>  - Ich kann das Phänomen Resonanz anhand eines Experiments erläutern.
> - Ich kann Amplitude, Periodendauer bzw. Frequenz aus vorgelegten Messdaten ermitteln.
> - Ich kann den Aufbau eines elektromagnetischen Schwingkreises beschreiben.
> - Ich kann in Analogie zum Feder-Masse-Pendel die Energieumwandlungen in einem Schwingkreis qualitativ beschreiben.
> - Ich kann ein Experiment zur Erzeugung einer Resonanzkurve beschreiben.
> - Ich kann die Abhängigkeit der Frequenz der Eigenschwingung von der Kapazität experimentell anhand eines Resonanzversuchs ermitteln.
> - Ich kann die thomsonsche Schwingungsgleichung nennen.

---

## Eigenschwingung

Wenn einem schwingungsfähigen Körper kurzzeitig Energie zugeführt wird, beginnt er in seiner **Eigenfrequenz** zu schwingen. 

Ein Beispiel dafür ist eine Gitarre, deren gespannte Saite kurz gezupft wird:
- Ändert man die Spannung der Saite, dann ändert sich die **Eigenfrequenz** und der Ton klingt höher (mehr gespannt) oder tiefer (weniger gespannt). 
- Nach kurzer Zeit hört die Schwingung wieder auf, da die Gitarrenseite durch den Luftwiderstand die Schwingungsenergie an die Umgebung abgegeben hat. 
- Reale Schwingungssysteme schwingen immer gedämpft.

---

## Erzwungene Schwingung

Damit ein Ton dauerhaft erklingen kann, muss fortlaufend von außen Energie zugeführt werden. Ein Beispiel hierfür ist eine Geige, deren Saite mit Hilfe eines Bogens gestrichen wird und die verlorene Energie fortlaufend zugeführt wird. 

> [!NOTE]
>Eine Schwingung, die durch die Zufuhr von Energie aufrecht erhalten wird, heißt **erzwungene Schwingung**.

> [!NOTE]
>Bei einer **erzwungenen Schwingung** nennt man die Frequenz bei der das System bei einer einmaligen Anregung schwingen würde: **Eigenfrequenz** $f_\text{E}$. 

> [!NOTE]
>Die Frequenz, mit der man eine **erzwungene Schwingung** anregt, nennt man **Anregungsfrequenz** $f_\text{A}$.

Man kann drei Situationen unterscheiden:

1) **Anregungsfrequenz < Eigenfrequenz** ($f_\text{A} < f_\text{E}$): die Schwingung folgt der Anregung nahezu ohne Verzögerung.

2) **Anregungsfrequenz $\approx$ Eigenfrequenz** ($f_\text{A} \approx f_\text{E}$): Es tritt **Resonanz** auf, d.h. die Amplitude steigt stark an.

3) **Anregungsfrequenz > Eigenfrequenz** ($f_\text{A} > f_\text{E}$): der schwingende Körper kann der Erregung nicht mehr folgen, so dass die Amplitude sehr klein bleibt.

---

### Simulation: Resonanz

> Simulation in neuem Fenster starten: <a href="/apps/suw/17_resonanz/resonanz.html" target="_blank">Resonanz</a>

<iframe frameborder="0" src="/apps/suw/17_resonanz/resonanz.html" width="100%" height="800" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Lösungsvorschlag</summary>
  
1. **Lasse** die Parameter des Feder-Masse-Pendels unverändert und **suche** eine passende Anregungsfrequenz, so dass die Amplitude der Schwingung maximal wird.

2. **Variiere** die Parameter des Feder-Masse-Pendels und **suche** jeweils eine passende Anregungsfrequenz, so dass die Amplitude der Schwingung maximal wird. Das Frequenz-Amplitude-Diagramm kann zur Unterstützung eingeblendet werden.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Wenn die Anregungsfrequenz kleiner als die Eigenfrequenz des Feder-Masse-Pendels ist ($f_\text{A} < f_\text{E}$), folgt die Schwingung der Anregung nahezu ohne Verzögerung.

![](resonanz01.png)

Wenn die Anregungsfrequenz gleich der Eigenfrequenz des Feder-Masse-Pendels ist ($f_\text{A} \approx f_\text{E}$), schwingt das Pendel in **Resonanz**.

![](resonanz02.png)

Wenn die Anregungsfrequenz deutlich größer als die Eigenfrequenz des Feder-Masse-Pendels ist ($f_\text{A} > f_\text{E}$), kann der schwingende Körper der Erregung nicht mehr folgen, so dass die Amplitude sehr klein bleibt.

![](resonanz03.png)

</details>

Bei einer **erzwungenen Schwingung** beobachtet man folgenden Zusammenhang zwischen der Anregungsfrequenz, der Eigenfrequenz und dem Schwingungsverhalten:

- **Anregungsfrequenz < Eigenfrequenz** ($f_\text{A} < f_\text{E}$): Die Schwingung folgt der Anregung nahezu ohne Verzögerung.

- **Anregungsfrequenz $\approx$ Eigenfrequenz** ($f_\text{A} \approx f_\text{E}$): Es tritt **Resonanz** auf, d.h. die Amplitude steigt stark an.

- **Anregungsfrequenz > Eigenfrequenz** ($f_\text{A} > f_\text{E}$): Der schwingende Körper der Erregung nicht mehr folgen, so dass die Amplitude sehr klein bleibt.

---

## Elektrischer Schwingkreis

Ein **elektrischer Schwingkreis** besteht aus einer Spule und einem Kondensator. Zusätzlich dazu gibt es eine Spannungsquelle, die über einen Schalter zugeschaltet werden kann. Dabei entsteht ein elektrischer Schwingkreis, bei welchem die Elektronen über die Spule zwischen den Platten des Kondensators hin- und herschwingen.

Die folgende Simulation erfolgt in starker **Zeitlupe**. Die Zeitschritte und der Zeitverlauf werden unten rechts in der Simulation angezeigt.

> Simulation in neuem Fenster starten: <a href="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_suw_schwingkreis_01.txt" target="_blank">ungedämpfter Schwingkreis</a>

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_suw_schwingkreis_01.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
**Variiere** die Induktivität $L$ der Spule und die Kapazität $C$ des Kondensators und **beobachte** die Auswirkung auf die Frequenz der elektrischen Schwingung im Schwingkreis.

</details>

<details>

  <summary>Beobachtungen</summary>
  
- Je größer die Induktivität $L$ der Spule bei unveränderter Kapazität ist, desto kleiner ist die Frequenz der elektrischen Schwingung.

- Je größer die Kapazität $C$ des Kondensators bei unveränderter Induktivität ist, desto kleiner ist die Frequenz der elektrischen Schwingung.

</details>

Sobald der Schalter geschlossen wird, fließt ein Strom mit der Stromstärke $I$ durch den Stromkreis:

- Da nach kurzer Zeit die Ladungsträgerdichte auf beiden Seiten des Kondensators gleich ist, wird keine Spannung $U_C$ über dem Kondensator gemessen.

- Die Spule der Induktivität $L$ wird von einem Strom mit der Stromstärke $I$ durchflossen, so dass sich in der Spule ein Magnetfeld der Flussdichte $B = \mu_0 \cdot \mu_r \cdot \frac{N \cdot I}{l}$ aufbaut und die Energie $E_\text{mag} = \tfrac{1}{2} \cdot L \cdot I^2$ gespeichert wird.

Wenn der Schalter geöffnet wird, verändert sich in der Spule die Stromstärke $I(t)$, so dass in der Spule eine Selbstinduktionsspannung $U_\text{ind}(t) = -L \cdot \frac{d I(t)}{d t}$ induziert wird:

- Die induzierte Spannung sorgt dafür, dass der Kondensator mit der Spannung $U_\text{K}(t)$ aufgeladen wird. 

- Bei diesem Vorgang wird die in der Spule gespeicherte Energie in den Kondensator transportiert und dort als elektrische Energie mit $E_\text{el} = \tfrac{1}{2} \cdot C \cdot U_\text{K}(t)^2$ gespeichert.

- Aufgrund der Ladungstrennung zwischen den Kondensatorplatten wirken im aufgeladenen Kondensator Kräfte auf die Elektronen, so dass aufgrund des angestrebten Ladungsausgleiches ein elektrischer Strom zu fließen beginnt. 

- Die ansteigende Stromstärke bewirkt in der Spule eine entgegengesetzt gerichtete Induktionsspannung, welche den Anstieg des Entladungsstroms verlangsamt. 

- Sobald die Entladungsstromstärke ihr Maximum erreicht hat und wieder zu sinken beginnt, wird in der Spule eine Induktionsspannung induziert, welche die Entladungsstromstärke verstärkt, so dass der Kondensator entgegengesetzt geladen wird.

Solange im Idealfall im Schwingkreis keine Energie verloren geht, pulsiert die Energie mit einer Eigenfrequenz $f_\text{E}$ zwischen Spule (Induktivität $L$) und Kondensator (Kapazität $C$) hin- und her. Für die **Eigenfrequenz** $f_\text{E}$ im Schwingkreis gilt dann:

**Thomsonsche Gleichung:**

$$
  f_\text{E} = \frac{1}{2 \pi \cdot \sqrt{L \cdot C}}
$$

mit $L$ = Induktivität der Spule, $C$ = Kapazität des Kondensators

---

### Studienorientierung: Thomsonsche Gleichung

> Zur Studienorientierung wird diese Formel im folgenden hergeleitet. Im Abitur wird diese Herleitung nicht geprüft.

Im Teilstromkreis des Schwingkreises gilt die **Maschenregel**: 

- Geht man in einem Stromkreis von einem Pol zum anderen Pol, so ist die Summe der Teilspannungen über den elektrischen Bauteilen gleich der Spannung der Quelle. 

- Im hier betrachteten Fall wird die Spannungsquelle abgetrennt, so dass die Gesamtspannung im Teilstromkreis von Kondensator und Spule $U_\text{ges} = 0$ ist. 

Es gilt also:

$$
  U_\text{ges} = U_C + U_L = 0
$$

Die Elektronen fließen von der einen Platte des Kondensators zur anderen, so dass sich die Ladung $Q$ auf den Kondensatorplatten ständig ändert. Für die Spannung $U_C$ am Kondensator gilt dann: $U_C(t) = \frac{Q(t)}{C}$.

Da sich die Stromstärke $I(t)$ in der Spule ständig ändert, wird in der Spule eine Selbstinduktionsspannung $U_L$ induziert, die sich ebenfalls ständig ändert, so dass gilt: $U_L(t) = L \cdot \frac{d I(t)}{dt}$.

Damit gilt insgesamt:

$$
\begin{align}
  U_C(t) + U_L(t) &= 0 \\
  \frac{Q(t)}{C} + L \cdot \frac{d I(t)}{dt} &= 0
\end{align}
$$

In dieser Gleichung gibt es zwei verschiedene von der Zeit abhängende Größen: die Stromstärke $I(t)$ und die Ladung $Q(t)$. Das ist für die weitere mathematische Herleitung ungünstig. Da die Stromstärke $I(t)$ die **Änderung** der Ladung $Q(t)$ ist, kann man $I(t)$ ersetzen:

$$
  I(t) = \frac{d Q(t)}{d t}
$$

Wir suchen eine Formel für die **Eigenfrequenz** $f_\text{E}$ des Schwingkreises. 

Uns interessiert also die **Änderung** der Situation im Schwingkreis. 

Ein Maß für die Änderung einer Größe kann mit Hilfe der **Ableitung** gefunden werden. In der Physik schreibt man für die Ableitung nach der Zeit: $\frac{d}{dt}$. 

Die Gleichung

$$
  \frac{Q(t)}{C} + L \cdot \frac{d I(t)}{dt} = 0
$$

wird einmal nach der Zeit $t$ abgeleitet:

$$
  \frac{ d \left( \frac{Q(t)}{C} + L \cdot \frac{d I(t)}{dt} \right) }{d t} = \frac {d 0}{d t}
$$

Eine Summe wird abgeleitet, indem jeder Summand einzeln abgeleitet wird. 

Ein konstanter Faktor bleibt bei der Ableitung unverändert erhalten und die Ableitung von 0 ist 0. Also folgt:

$$
  \frac{1}{C} \frac{d Q(t)}{d t} + L \cdot \frac{d^2 I(t)}{d^2t} =  0
$$

- Die Ableitung der Ladung $\frac{d Q(t)}{d t}$ beschreibt die **Änderung** der Ladung und ist damit die Stromstärke $I(t)$: $\frac{d Q(t)}{d t} = I(t)$. 

- $\frac{d^2 I(t)}{d^2t}$ ist die zweite Ableitung der Stromstärke $I(t)$ und beschreibt die Änderung der Änderung der Stromstärke, also wie heftig sich die Stromstärke ändert.

Insgesamt folgt:

$$
  \frac{1}{C} \cdot I(t) + L \cdot \frac{d^2 I(t)}{d^2t} =  0
$$

Das ist eine **Differenzialgleichung**, welche die Stromstärke-Funktion $I(t)$ und die zweite Ableitung der Stromstärke-Funktion $\frac{d^2 I(t)}{d^2t}$ enthält. 

Wir suchen eine Funktion für $I(t)$, welche diese Differenzialgleichung erfüllt: Wenn man die gesuchte Funktion und deren zweite Ableitung in die Gleichung einsetzt, soll die Summe der linken Seite Null sein.

Die gesuchte Funktion können wir nicht berechnen, also versuchen wir sie zu erraten. Die **Sinus-Funktion** stimmt bis auf das Vorzeichen mit ihrer zweiten Ableitung überein: $(\sin(x))'' = (\cos(x))' = - \sin(x)$.

Eine Funktion für $I(t)$, welche die Differenzialgleichung löst, könnte also die folgende Form haben: $I(t) = I_0 \cdot \sin(\omega \cdot t)$, wobei $\omega$ die Winkelgeschwindigkeit der Schwingung und $f = \frac{\omega}{2 \pi}$ die Frequenz der Schwingung ist.

Das testen wir, indem wir diese Funktion und deren zweite Ableitung in die Differenzialgleichung einsetzen:

$$
\begin{align}
 I(t) &= I_0 \cdot \sin(\omega \cdot t) \\
 \frac{d I(t)}{d t} &= \omega \cdot I_0 \cdot \cos(\omega \cdot t) \\
 \frac{d^2 I(t)}{d^2t} &= - \omega^2 \cdot I_0 \cdot \sin(\omega \cdot t)
\end{align} 
$$

Wenn man die gefundenen Funktionen in die linke Seite der Differenzialgleichung einsetzt, sollte deren Summe Null sein!

$$
 \frac{1}{C} \cdot I_0 \cdot \sin(\omega \cdot t) - L \cdot \omega^2 \cdot I_0 \cdot \sin(\omega \cdot t) \stackrel{!}{=} 0
$$

Auf der linken Seite kann man die gemeinsamen Faktoren ausklammern:

$$
 I_0 \cdot \sin(\omega \cdot t) \cdot \left( \frac{1}{C} - L \cdot \omega^2 \right) \stackrel{!}{=} 0
$$

Zu allen Zeitpunkten $t$ ist diese Gleichung genau dann erfüllt, wenn der Ausdruck in der Klammer Null ist, also 

$$
 \frac{1}{C} - L \cdot \omega^2 = 0
$$

Löst man diese Gleichung nach $\omega$ auf, folgt:

$$
\begin{align}
  \frac{1}{C} - L \cdot \omega^2 &= 0 \\
  \frac{1}{C} &= L \cdot \omega^2\\
  \omega^2 &= \frac{1}{L \cdot C} \\
  \omega &= \sqrt{ \frac{1}{L \cdot C} } \\
  \omega &= \frac{1}{\sqrt{ L \cdot C } } \\
\end{align}  
$$

Eine geeignete Funktion, welche die Differenzialgleichung löst, ist also:

$$
    I(t) = I_0 \cdot \sin(\omega \cdot t) = I_0 \cdot \sin \left( \frac{1}{\sqrt{ L \cdot C } } \cdot t \right)
$$

Da $\omega = 2 \pi \cdot f$ ist, gilt:

$$
\begin{align}
  \omega &= \frac{1}{\sqrt{ L \cdot C } } \\
  2 \pi \cdot f &= \frac{1}{\sqrt{ L \cdot C } } \\
  f &= \frac{1}{2 \pi \cdot \sqrt{ L \cdot C } }
\end{align}  
$$

Die angegebene Gleichung für die Eigenfrequenz $f_\text{E}$ der Schwingung im Schwingkreis ist damit begründet hergeleitet worden.

---

### Gedämpfter Schwingkreis

Ein realer Schwingkreis ist ein **gedämpfter Schwingkreis**, da alle Bauteile einen Widerstand haben, wodurch Energie verloren geht. 

Diese Energie kann durch eine pulsierende Spannungsquelle ausgeglichen werden. 

Wenn die Frequenz der Wechselspannungsquelle der **Eigenfrequenz des Schwingkreises** entspricht, wird die Amplitude der Stromstärke im Schwingkreis maximal.

> Simulation in neuem Fenster starten: <a href="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_suw_schwingkreis_02.txt" target="_blank">Gedämpfter Schwingkreis</a>

<iframe src="/apps/elektrik_simulator/circuitjs.html?startCircuit=001_suw_schwingkreis_02.txt" width="100%" height="700" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
- **Variiere** in der Simulation die Frequenz der angelegten Wechselspannung und **beobachte** die Auswirkung auf die Amplitude der Stromstärke im Schwingkreis.

</details>

<details>

  <summary>Beobachtungen</summary>
  
- Bei passender Anregungsfrequenz ist der Betrag der maximalen Stromstärke im Schwingkreis am größten.

- Wenn die Anregungsfrequenz nicht zur Eigenfrequenz des Schwingkreises passt, verringert sich der Betrag der maximalen Stromstärke.


</details>

Die Eigenfrequenz in einem gedämpften Schwingkreis unterscheidet sich von der Eigenfrequenz im ungedämpften Schwingkreis. 

Mit folgender angepassten Gleichung (ohne Herleitung) lässt sich die **Eigenfrequenz** $f_\text{E}$ in einem gedämpften Schwingkreis mit dem Gesamtwiderstand $R$ ermitteln:

**Thomsonsche Gleichung im gedämpften Schwingkreis:**

$$
  f_\text{E} = \frac{1}{2 \pi} \cdot \sqrt { \left( \frac{1}{L \cdot C} - \frac{R^2}{4 \cdot L^2} \right) }
$$

mit $L$ = Induktivität der Spule, $C$ = Kapazität des Kondensators, $R$ = Widerstand

---

### Energieumwandlungen im Schwingkreis

Laut Kerncurriculum sollen die Energieumwandlungen im elektrischen Schwingkreis und die Energieumwandlungen beim Feder-Masse-Pendel einander gegenübergestellt werden. 

In der folgenden Tabelle steht eine solche mögliche Gegenüberstellung. In der **Analogie** entspricht:

 - die **Bewegung der Pendelmasse** der **Bewegung der Elektronen** im Stromkreis

 - die Geschwindigkeit der Pendelmasse $v(t)$ entspricht der Stromstärke $I(t)$

 - die **Auslenkung** $s(t)$ der Pendelmasse entspricht der **Spannung** $U(t)$ am Kondensator

| Feder-Masse-Pendel | Elektrischer Schwingkreis |
|---|---|
| Beim Durchgang durch die Ruhelage ist die Bewegungsenergie der Masse $E_\text{Kin}$ maximal und die Spannenergie $E_\text{Spann}$ in der Feder Null:  $E_\text{ges} = E_\text{kin} = \tfrac{1}{2} \cdot m \cdot v_\text{max}^2$ | Im Moment der Schalteröffnung ist die gesamte Energie als magnetische Energie $E_\text{mag}$ in der Spule gespeichert, da dort die Stromstärke maximal ist und am Kondensator keine Spannung anliegt. Daher ist die im Kondensator gespeicherte Energie gleich Null: $E_\text{ges} = E_\text{mag} = \tfrac{1}{2} \cdot L \cdot I_\text{max}^2$ |
| Bei der Bewegung des Pendels verteilt sich die Gesamtenergie auf die Spannenergie der Feder und die Bewegungsenergie der Masse: $E_\text{ges} = E_\text{Spann} + E_\text{Kin} = \tfrac{1}{2} \cdot D \cdot s(t)^2 + \tfrac{1}{2} \cdot m \cdot v(t)^2$  | Wenn die äußere Spannungsquelle abgetrennt ist, verteilt sich die Gesamtenergie auf die elektrische Energie $E_\text{el}$ im Kondensator und die magnetische Energie in der Spule: $E_\text{ges} = E_\text{el} + E_\text{mag} = \tfrac{1}{2} \cdot C \cdot U(t)^2 + \tfrac{1}{2} \cdot L \cdot I(t)^2$ |
| Wenn das Feder-Masse-Pendel den Umkehrpunkt bei $s_\text{max}$ erreicht hat, ist die Geschwindigkeit der Pendelmasse Null und damit die Bewegungsenergie der Pendelmasse Null. Die gesamte Energie ist in der Spannenergie der Feder gespeichert: $E_\text{ges} = E_\text{Spann} = \tfrac{1}{2} \cdot D \cdot s_\text{max}^2$ | Sobald die Selbstinduktionsspannung der Spule den Kondensator vollständig aufgeladen hat, ist für einen kurzen Moment die Stromstärke $I(t)$ gleich Null. Folglich ist die magnetische Energie in der Spule für eine kurzen Moment gleich Null und die Spannung am Kondensator maximal: $E_\text{ges} = E_\text{el} = \tfrac{1}{2} \cdot C \cdot U_\text{max}^2$
| Der Vorgang wiederholt sich, indem die Spannenergie wieder in Bewegungsenergie umgewandelt wird und umgekehrt. | Aufgrund der abstoßenden Kräfte beginnt sofort wieder der Entladungsvorgang, so dass die Stromstärke in der Spule ansteigt und magnetische Energie in der Spule gespeichert wird. Die Selbstinduktion in der Spule sorgt dafür, dass der Kondensator wieder entgegengesetzt aufgeladen wird, so dass die Energie periodisch zwischen magnetischer Energie in der Spule und elektrischer Energie im Kondensator hin- und herschwingt (oszilliert).

---

## Elektromagnetischer Funk

Wird ein elektrischer Schwingkreis an eine Antenne angeschlossen, schwingen die Elektronen in der Antenne periodisch hin- und her. 

Dabei ändert sich das elektrische Feld im Raum um die Antenne periodisch. Da ein stromdurchflossener Leiter immer von einem Magnetfeld umgeben ist, ist auch die Antenne von einem Magnetfeld umgeben, das sich periodisch ändert, da sich die Stromstärke in der Antenne ständig ändert. 

Im **klassischen Modell** ist eine Antenne daher von einem elektromagnetischen Wechselfeld umgeben. Dieses kann sich von der Antenne lösen und bewegt sich als elektromagnetisches Wechselfeld durch den Raum. 

Dem elektromagnetischen Wechselfeld kann eine Frequenz zugeordnet werden. Die Frequenz gibt an, wie oft pro Sekunde das elektrische und das magnetische Feld an einem Ort jeweils seine Richtung und Stärke periodisch ändert. 

In der folgenden Simulation wird die klassische Modellierung veranschaulicht.

> Simulation in einem neuen Fenster öffnen: <a href="http://www.didaktikonline.physik.uni-muenchen.de/programme/dipolstr/Dipolstr1.html" target="_blank">Dipolstrahlung</a>  

> Quelle: [Lehrstuhl für Didaktik der Physik - Universität München, R. Girwidz](https://www.didaktik.physik.uni-muenchen.de/multimedia/programme_applets/e_lehre/dipolstrahlung/index.html)

<details>

  <summary>Durchführung</summary>
  
1. **Öffne** die Simulation in einem neuen Fenster und **klicke** dann auf "Dipolstrahlung" und dort auf "Stabdipol λ/2". **Beobachte** die Form des elektrischen und magnetischen Felds in der Nähe der Antenne.

2. **Klicke** in der Simulation auf "Nonstop" und dort auf "Nonstop". **Beobachte**, wie sich die elektromagnetische Funkwelle von der Antenne ablöst und die Funkwellen im Raum ausbreiten.

3. **Klicke** in der Simulation auf "3D-Ansicht" und dort auf "3D-Feldlinien". **Beobachte**, wie sich die elektromagnetischen Funkwellen im dreidimensionalen Raum ausbreiten.

</details>

<details>

  <summary>Beobachtungen</summary>
  
**Zu 1.**: Elektrische und magnetische Felder in der Nähe der Antenne

![](dipol01.jpg)

**Zu 2.**: Abstrahlung der elektromagnetischen Funkwelle in den Raum

![](dipol02.jpg)

</details>

Trifft der elektromagnetische Funk auf eine **Empfängerantenne**, werden die Elektronen in der Antenne mit der Frequenz der ankommenden Wellen beschleunigt. 

Wenn die Empfängerantenne an eine geeignete Schaltung angeschlossen ist, z.B. einem elektrischen Schwingkreis, kann die übertragene Energie in den elektrischen Schwingkreis übertragen werden. 

**Entspricht die ankommende Frequenz der Eigenfrequenz des Schwingkreises im Empfangsgerät, steigt die Amplitude im Schwingkreis des Empfangsgeräts stark an**.

---