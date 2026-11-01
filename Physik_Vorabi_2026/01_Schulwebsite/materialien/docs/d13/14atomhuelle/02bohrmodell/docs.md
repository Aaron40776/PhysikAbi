## Bohrsches Atommodell

> **Bezug zum Kerncurriculum:**
>
> - Ich kann die Quantisierung der Gesamtenergie von Elektronen in der Atomhülle erläutern.
> - Ich kann die Gleichung für die Gesamtenergie eines Elektrons in diesem Modell nennen.

---

## Bohrsche Postulate

Experimente mit Gasentladungsröhren haben gezeigt, dass ein Wasserstoffatom nur Photonen mit bestimmten Wellenlängen emittiert. 

Bohr legte fest (postulierte):

- dass ein Elektron im Wasserstoffatom nur bestimmte erlaubte Energiezustände haben kann. 

- dass ein Elektron in einem erlaubten Zustand keine Energie abstrahlt, sondern dass nur beim Übergang zwischen zwei erlaubten Zuständen Energie abgestrahlt wird. 

In diesem Kapitel wird ein erweitertes Mischmodell vorgestellt, bei welchem die Bohrschen Postulate bereits quantenphysikalisch begründet werden. Einige Jahre nachdem Bohr sein Atommodell entwickelt hatte, stellte Louis de-Broglie die Hypothese auf, dass man einem Elektron eine Wellenlänge zuordnen kann:

$$
  \lambda_e = \frac{h}{p}
$$

Nimmt man an, dass das Elektron **kein** klassisches Teilchen ist, sondern mit einem Wellenmodell beschrieben wird, dann kann die Modellwelle, welche ein Elektron modelliert, nur dann eine feste Wellenlänge und wegen $E = h \cdot \frac{c}{\lambda}$ eine feste Energie haben, wenn die Modellwelle auf den Kreisumfang passt. 

Nur wenn der Kreisumfang $u = 2 \cdot \pi \cdot r$ einer Elektronenbahn ein ganzzahliges Vielfaches der dem Elektron zugeordneten Wellenlänge $\lambda$ ist, kann die Modellwelle als stehende Welle einen stabilen Zustand bilden. 

Übertragen auf das Wellenmodell kann man weiter festlegen, dass ein Energiezustand stabil ist, also keine Energie abgestrahlt wird, wenn die dem Elektron zugeordnete Modellwelle eine stehende Welle ist. Es gilt dann die Bedingung für eine stehende Welle auf einer Kreisbahn:

$$
  n \cdot \lambda = 2 \cdot \pi \cdot r_n
$$

mit $n$ = 1, 2, 3,... wobei $n$ **Hauptquantenzahl** genannt wird. 

Mit dieser Bedingung kann man die erlaubten Energiewerte eines Elektrons im Wasserstoffatom modellieren. Im Folgenden werden die **Bohrschen Postulate** formuliert, ergänzt mit der de-Broglie-Hypothese, dass man Elektronen als Elektronenwellen modellieren kann:

> [!NOTE]
> Postulat 1: Ein Elektron kann sich nur auf bestimmten erlaubten Kreisbahnen um das Proton im Atomkern bewegen. Jeder erlaubten Bahn entspricht ein bestimmter Energiewert: das **Energieniveau**. 
>
> Jedes erlaubte Energieniveau wird mit einer ganzen Zahl 1, 2, 3, 4,..., der sogenannten Quantenzahl n, bezeichnet.
>
> Im Wasserstoffatom besitzt das Elektron auf der Bahn mit $n = 1$ die geringste Energie.

> [!NOTE]
> Postulat 2: Auf den erlaubten Energieniveaus kreist das Elektron strahlungsfrei (ohne Energieverlust) und mit einer konstanten Bahngeschwindigkeit $v_n$ im Abstand $r_n$ um den Atomkern. 
>
> Eine erlaubte Geschwindigkeit $v_n$ des Elektrons kann aus der **Quantenbedingung** $n \cdot \lambda = 2 \cdot \pi \cdot r_n$ und der dem Elektron zugeordneten Wellenlänge $\lambda = \frac{h}{m_e \cdot v_n}$ berechnet werden. 
>
> $$ v_n = \frac{{n \cdot h}}{{2 \cdot \pi \cdot {r_n} \cdot {m_e}}} $$

> [!NOTE]
> Postulat 3: Das Elektron absorbiert oder emittiert Energie nur beim Übergang von einem erlaubten Energieniveau in ein anderes erlaubtes Energieniveau (Quantensprung). 
> Das Elektron kann keine Photonen absorbieren oder emittieren, wenn es bei der Aufnahme oder Abgabe eine Energie hätte, die keinem erlaubten Energieniveau entspricht.
>
> Um ein Elektron von einer inneren Bahn $m$ auf eine weiter außen liegende Bahn $n$ zu bringen (also gilt n > m), muss Arbeit gegen die elektrostatische Anziehungskraft zwischen positiv geladenem Kern und negativ geladenem Elektron geleistet werden. Deswegen wird dazu ein Energiebetrag $E = h \cdot f$ nötig, welcher der Differenz der Energieniveaus $E_n - E_m$ entspricht. 
>
> Wenn ein Elektron von der Bahn $n$ auf die Bahn $m$ zurückfällt, wird derselbe Energiebetrag $E = h \cdot f$ in Form eines Photons frei:
>
> $$ \Delta E = E_n - E_m = h \cdot f $$

---

## Energieniveaus berechnen

Die Coulombkraft $F_C$ hält das Elektron auf seiner Bahn. Die Coulombkraft kann als Zentripetalkraft $F_\rm{ZP}$ aufgefasst werden:

$$
\begin{align}
  F_\rm{C} &= F_\rm{ZP} \\
  \frac{1}{{4 \cdot \pi \cdot {\varepsilon _0}}} \cdot \frac{e^2}{r_n^2} &= \frac{m_e \cdot v_n^2}{r_n} \\
  v_n^2 &= \frac{1}{4 \cdot \pi \cdot \varepsilon_0} \cdot \frac{e^2}{r_n \cdot m_e}
\end{align}
$$

Setzt man für $v_n$ die Quantenbedingung $v_n = \frac{{n \cdot h}}{{2 \cdot \pi \cdot {r_n} \cdot {m_e}}}$ aus dem 2. Postulat ein, folgt:

$$
\begin{align}
  \left( \frac{n \cdot h}{2 \cdot \pi \cdot {r_n} \cdot {m_e}} \right)^2 &= \frac{1}{4 \cdot \pi \cdot \varepsilon_0} \cdot \frac{e^2}{r_n \cdot m_e}
\end{align}
$$

Diese Gleichung löst man nach $r_n$ auf, um die erlaubten Radien für das Elektron zu berechnen:

$$
\begin{align}
  \left( \frac{n \cdot h}{2 \cdot \pi \cdot {r_n} \cdot {m_e}} \right)^2 &= \frac{1}{4 \cdot \pi \cdot \varepsilon_0} \cdot \frac{e^2}{r_n \cdot m_e} \\
  \frac{n^2 \cdot h^2}{4 \cdot \pi^2 \cdot r_n^2 \cdot m_e^2} &= \frac{1}{4 \cdot \pi \cdot \varepsilon_0} \cdot \frac{e^2}{r_n \cdot m_e} \\
  \frac{n^2 \cdot h^2}{\pi \cdot r_n \cdot m_e} &= \frac{e^2}{\varepsilon_0} \\  
  r_n &= \frac{n^2 \cdot h^2 \cdot \varepsilon_0}{\pi \cdot m_e \cdot e^2} \\
\end{align}
$$

Setzt man in diese Gleichung die Werte der Konstanten ein, erhält man für die Hauptquantenzahl $n = 1$ den sogenannten **1. Bohrschen Radius**:

$$
\begin{align}
  r_1 &= \frac{1^2 \cdot h^2 \cdot \varepsilon_0}{\pi \cdot m_e \cdot e^2} \\
  r_1 &= \frac{1^2 \cdot (6,62607 \cdot 10^{-34} \, \rm{Js})^2 \cdot 8,85419 \cdot 10^{-12} \, \rm{\frac{As}{Vm}}}{\pi \cdot 9,109384 \cdot 10^{-31} \, \rm{kg} \cdot (1,602177 \cdot 10^{-19} \, \rm{C})^2} \\
  r_1 &= 5,291771 \cdot 10^{-11} \, \rm{m}
\end{align}
$$

Der so berechnete Radius passt zur Größenordnung eines Atoms, der durch Versuche wie dem [Ölfleckversuch](https://www.leifiphysik.de/atomphysik/atomaufbau/grundwissen/atomdurchmesser-aus-dem-oelfleckversuch) gefunden wurde. 

Setzt man die Formel für den Bohrschen Radius $r_n = \frac{n^2 \cdot h^2 \cdot \varepsilon_0}{\pi \cdot m_e \cdot e^2}$ in die Energieformel von Rutherford $E_{\rm{ges}}(r) = - \frac{e^2}{8 \cdot \pi \cdot \varepsilon_0 \cdot r}$ ein, dann folgt:

$$
\begin{align}
  E_{\rm{ges}}(r_n) &= - \frac{e^2}{8 \cdot \pi \cdot \varepsilon_0 \cdot r_n} \\
  E_{\rm{ges}}(r_n) &= - \frac{e^2}{8 \cdot \pi \cdot \varepsilon_0 \cdot \left( \frac{n^2 \cdot h^2 \cdot \varepsilon_0}{\pi \cdot m_e \cdot e^2} \right)} \\
  E_{\rm{ges}}(r_n) &= - \frac{e^4 \cdot m_e}{8 \cdot \varepsilon_0^2 \cdot n^2 \cdot h^2} \\
  E_{\rm{ges}}(n) &= - 13,58 \, \rm{eV} \cdot \frac{1}{n^2}
\end{align}
$$

Die mit dieser Formel berechneten Werte stimmen mit den experimentellen Werten aus den Linienspektren des Wasserstoffatoms überein. 

Wenn man für $n$ den Wert 1 einsetzt, dann ist die Energie des Elektrons im Grundzustand $E_1 = - 13,58 \, \rm{eV}$, was genau der Ionisierungsenergie von Wasserstoff entspricht, also der Energie, die man aufbringen muss, um das Elektron aus dem Atom zu entfernen. 

---

## Wasserstoff-Spektren

> Simulation in neuem Fenster öffnen: <a href="/apps/ap/03_hspektrum/hspektrum.html" target="_blank">Wasserstoff-Serien</a>

<iframe frameborder="0" src="/apps/ap/03_hspektrum/hspektrum.html" width="100%" height="750" scrolling="no" allowfullscreen></iframe>

<details>

  <summary>Durchführung</summary>
  
**Lass** dir die Linienspektren des Wasserstoffatoms anzeigen.

</details>

<details>

  <summary>Beobachtung</summary>
  
Es gibt kein kontinuierliches Spektrum mit beliebigen Photonenenergien, sondern das Wasserstoffatom sendet nur ganz bestimmte Wellenlängen aus.

![](linienspektrum01.jpg)

Die Energien der emittierten Photonen passen zu Energieniveauübergängen, die mit der Formel $E_n = -13,6 \, \text{eV} \cdot \frac{1}{n^2}$ ($n$ = 1, 2, 3,...) berechnet werden können. 

Wenn ein Elektron seine Energie z.B. vom Energieniveau mit $n$ = 3 zu einem Energieniveau mit $n$ = 2 ändert, sendet es dabei ein Photon der Energie $\Delta E = | E_3 - E_2 |$ aus.

</details>


---

## Kritik am Bohrschen Atommodell

Mit Hilfe der Bohrschen Postulate kann man die Energiezustände in einem Wasserstoffatom modellieren und die vom Wasserstoff ausgesandten Photonen zutreffend vorhersagen. Auch wird die notwendige Energie korrekt vorhergesagt, die man einem Wasserstoffatom zuführen muss, um dieses zu ionisieren.

Das Bohrsche Atommodell hat aber nach wie vor erhebliche Schwächen:

  - die Theorie ist nichtrelativistisch, scheitert also für sehr hohe Energien,

  - sie bietet kein Verfahren an, mit welchem die Intensität der Spektrallinien modelliert werden könnte,

  - Atome mit mehr als einem Elektron können nicht modelliert werden,

  - Bindungen zwischen Atomen in Molekülen, Flüssigkeiten und Festkörpern können nicht erklärt werden,

  - Hochauflösende Spektrographen zeigen, dass jede Wasserstofflinie in weitere Linien aufgeteilt werden kann (Feinstruktur). Diese Feinstruktur kann nicht erklärt werden.

Das halbklassische Bohrsche Modell scheitert an der Modellierung der Realität. Es wurde historisch bereits nach kurzer Zeit von Schrödinger und Heisenberg durch ein quantentheoretisches Modell ersetzt. 

---