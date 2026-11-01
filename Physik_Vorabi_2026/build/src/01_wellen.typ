#import "../template.typ": *

#show: setup.with(title: "Wellen und Interferenz", kicker: "Skript 1 · Wellenlehre")

#cover(
  "Skript 1 · Schwingungen und Wellen",
  "Wellen und Interferenz",
  "Schwingung, Wellengleichung, Interferenz, Doppelspalt, Gitter, Einzelspalt, Bragg",
  lernziele: (
    "Schwingungen und Wellen mit den fünf Kenngrößen beschreiben",
    "die Wellengleichung aus der Laufzeit herleiten",
    "Interferenz über Gangunterschied und Zeiger entscheiden",
    "Doppelspalt-, Gitter- und Einzelspaltbedingung unterscheiden",
  ),
)

#toc-page()

= Kenngrößen

#table(
  columns: (auto, auto, 1fr),
  [Größe], [Einheit], [Bedeutung],
  [Auslenkung $s(t)$], [m], [momentaner Abstand von der Ruhelage],
  [Amplitude $A$], [m], [größte Auslenkung],
  [Periodendauer $T$], [s], [Dauer eines vollen Zyklus],
  [Frequenz $f$], [Hz], [Zyklen pro Sekunde],
  [Kreisfrequenz $omega$], [1/s], [Phasenzuwachs pro Sekunde],
  [Wellenlänge $lambda$], [m], [räumlicher Abstand gleicher Phase],
  [Ausbreitungsgeschwindigkeit $c$], [m/s], [Laufgeschwindigkeit einer Phase],
)

$ T = frac(1, f), quad omega = 2 pi f = frac(2 pi, T), quad c = lambda f = frac(lambda, T) $

Für eine harmonische Schwingung gilt

$ s(t) = A sin(omega t + phi_0), quad v(t) = A omega cos(omega t + phi_0) $

#figure(
  image("../fig/welle_raumzeit.svg", width: 88%),
  caption: [Momentaufnahme zu zwei Zeiten: Die Welle ist um $c dot Delta t$ gewandert, $A$ und
    $lambda$ bleiben gleich.],
)

Nach der Zeit $Delta t$ liegt jeder Wellenberg um $c dot Delta t$ weiter rechts; die Form der Kurve ändert sich dabei nicht, nur ihr Ort.

= Zeigermodell und Interferenz

Ein Zeiger der Länge $A$ rotiert mit $omega$; seine Projektion auf die Hochachse ist $s(t)$.
Zwei Wellen am selben Ort addieren sich wie zwei Zeiger – vektoriell, mit Phasendifferenz
$delta$:

$ A_"ges" = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos(delta)), quad delta = 2 pi frac(Delta s, lambda) $

#definition[
  *Kohärenz:* Zwei Wellen sind kohärent, wenn sie dieselbe Frequenz haben und ihre
  Phasendifferenz über die Beobachtungszeit konstant bleibt. Nur dann ist $delta$ eine feste
  Größe – und nur dann entsteht ein zeitlich stabiles Interferenzmuster.
]

#figure(
  image("../fig/zeigerkette.svg", width: 82%),
  caption: [Zeigerkette längs des Weges: gleichmäßige Drehung erzeugt die Welle.],
)

Ein voller Umlauf des Zeigers entspricht einer Wellenlänge; deshalb liest man den Gangunterschied zweier Wellen direkt als Winkel zwischen ihren Zeigern ab.

#merksatz[
  Konstruktiv: $Delta s = n lambda$, $delta = n dot 2 pi$, $A_"ges" = A_1 + A_2$. \
  Destruktiv: $Delta s = (2n+1) frac(lambda, 2)$, $delta = (2n+1) pi$, $A_"ges" = |A_1 - A_2|$.
]

= Gedämpfte Schwingung und Resonanz

$ A(t) = A_0 e^(-k t), quad delta = ln frac(A(t), A(t+T)) = k T $

#definition[
  *Resonanz:* Die Amplitude der erzwungenen Schwingung ist maximal, wenn die Erregerfrequenz
  $f_E$ nahe der Eigenfrequenz $f_0$ liegt. Je schwächer die Dämpfung, desto höher und
  schmaler der Peak; bei starker Dämpfung liegt das Maximum etwas unterhalb von $f_0$.

  Die Erregerfrequenz am Maximum heißt *Resonanzfrequenz* $f_R$. Für schwache Dämpfung gilt
  $f_R approx f_0 = frac(1, 2 pi) sqrt(frac(D, m))$; mit wachsender Dämpfung wandert $f_R$ nach
  unten.
]

#table(
  columns: (1fr, auto, 1fr),
  [System], [Eigenfrequenz], [Gültigkeit],
  [Feder-Masse-Pendel], [$f_0 = frac(1, 2 pi) sqrt(frac(D, m))$], [massefreie Feder],
  [Fadenpendel], [$f_0 = frac(1, 2 pi) sqrt(frac(g, l))$], [kleine Auslenkung],
  [Schwingkreis], [$f_0 = frac(1, 2 pi sqrt(L C))$], [Thomsonsche Formel],
)

= Von der Schwingung zur Welle

Der Erreger bei $x = 0$ schwingt mit $A sin(omega t)$. Am Ort $x$ kommt die Bewegung nach der
Laufzeit $x \/ c$ an:

$ s(x,t) = A sin(omega (t - x/c)) = A sin(2 pi (frac(t, T) - frac(x, lambda))) $

$lambda$ gehört zum Ort, $T$ zur Zeit, und $c = lambda \/ T$.

#herleitung[
  *Wellengleichung aus der Zeitverzögerung* \
  1. Ansatz: Die Welle gibt die Erregerschwingung unverändert weiter, nur zeitlich verspätet.
  2. Verspätung: Für die Strecke $x$ braucht das Signal $Delta t = x \/ c$.
  3. Einsetzen: $t arrow.l t - x\/c$ in $s = A sin(omega t)$.
  4. Umformen mit $omega = 2 pi \/ T$ und $c = lambda \/ T$ liefert die Phasenform oben.
  5. Probe: $x = lambda$ ergibt Phase $2 pi$, also denselben Zustand – korrekt.

]
#achtung[
  $c$ ist die *Phasengeschwindigkeit*, nicht die Geschwindigkeit der Teilchen. Teilchen
  schwingen senkrecht zur Ausbreitung (transversal) oder parallel (longitudinal).
]

= Stehende Wellen

Zwei gegenläufige Wellen gleicher Frequenz und Amplitude ergeben

$ s(x,t) = 2 A sin(k x) cos(omega t) $

Die Amplitude ist ortsfest, die Welle wandert nicht. Knoten bei $x = n lambda\/2$.

#figure(
  image("../fig/stehende_welle.svg", width: 84%),
  caption: [Grundschwingung und erste Oberschwingung; Knotenabstand immer $lambda\/2$.],
)

In der Grundschwingung schwingt die Mitte mit maximaler Amplitude, in der ersten Oberschwingung sitzt dort ein zusätzlicher Knoten; der Abstand zweier Knoten bleibt in beiden Fällen $lambda\/2$.

#table(
  columns: (1fr, 1fr, 1fr),
  [Ränder], [Wellenlängen], [Frequenzen],
  [beide fest], [$L = n frac(lambda, 2)$], [$f_n = n f_1$],
  [ein Ende offen], [$L = (2n-1) frac(lambda, 4)$], [$f_n = (2n-1) f_1$],
)

= Doppelspalt

#figure(
  image("../fig/doppelspalt_geometrie.svg", width: 84%),
  caption: [Geometrie: $Delta s approx d sin(alpha)$, Schirmabstand $e >> d$.],
)

Der untere Strahl legt bis zum Schirm das zusätzliche Stück $d sin(alpha)$ zurück; dieser Wegunterschied entscheidet, ob sich die Wellen am Punkt $P$ verstärken oder auslöschen.

#herleitung[
  *Doppelspaltbedingung* \
  1. Von beiden Spalten laufen Wellen nach $P$; die Wege unterscheiden sich um $Delta s$.
  2. Geometrie: $Delta s = d sin(alpha)$.
  3. Konstruktiv für $Delta s = n lambda$: $d sin(alpha_n) = n lambda$.
  4. Kleine Winkel: $sin(alpha) approx tan(alpha) = a_n \/ e$, also

  $ a_n = n frac(lambda e, d) $

  5. Gültig für $e >> d$ und $a_n << e$; sonst mit $sin$ rechnen.

]
#figure(
  image("../fig/doppelspalt_intensitaet.svg", width: 86%),
  caption: [Äquidistante Maxima im Abstand $lambda e \/ d$, dazwischen Minima.],
)

Weil $a_n$ linear mit $n$ wächst, sind die Maxima gleich weit voneinander entfernt; die Minima liegen jeweils genau dazwischen.

= Gitter und Einzelspalt

Beim Gitter (Gitterkonstante $g$, $N$ Spalte) haben Nachbarspalte den Gangunterschied
$g sin(alpha)$:

$ g sin(alpha_n) = n lambda $

Viele Spalte machen die Maxima scharf – deshalb wird mit dem Gitter die Wellenlänge gemessen.

Beim Einzelspalt (Breite $b$) interferieren Elementarwellen *eines* Spalts. Minima bei

$ b sin(alpha_m) = m lambda, quad m = 1, 2, dots $

#achtung[
  Die Einzelspalt-*Minima* haben dieselbe Form wie die Doppelspalt-*Maxima*. Wer beide
  Bedingungen gleich behandelt, vertauscht hell und dunkel.
]

#figure(
  image("../fig/einzelspalt_doppelspalt.svg", width: 88%),
  caption: [Oben Einzelspalt (breites Zentralmaximum), unten Doppelspalt (schmale Streifen)
    bei gleicher Breite.],
)

Der Vergleich zeigt, dass das Einzelspaltbild die Einhüllende des Doppelspaltmusters ist: Alle Streifen liegen unter dem breiten Zentralmaximum des Einzelspalts.

= Bragg-Reflexion

An Netzebenen mit Abstand $d$ ist der Zusatzweg der zweiten Welle $2 d sin(theta)$:

$ 2 d sin(theta) = n lambda $

#figure(
  image("../fig/bragg.svg", width: 54%),
  caption: [Strahl 2 läuft zusätzlich $2 d sin(theta)$.],
)

Der zweite Strahl dringt eine Netzebene tiefer ein und läuft dadurch den Weg $2 d sin(theta)$ länger; nur wenn dieser Weg ein Vielfaches von $lambda$ ist, verstärken sich die reflektierten Wellen.

= Elektromagnetische Wellen

$c_0 = 2","998 dot 10^8$ m/s im Vakuum, $c = c_0 \/ n$ im Medium. Beim Übergang bleibt $f$
konstant, $lambda$ ändert sich:

$ frac(sin(alpha), sin(beta)) = frac(c_1, c_2) = frac(n_2, n_1) $

#figure(
  image("../fig/reflexion_brechung.svg", width: 58%),
  caption: [Brechung: Frequenz konstant, Wellenlänge kleiner, Strahl knickt zum Lot.],
)

Im Bild knickt der Strahl beim Eintritt ins optisch dichtere Medium zum Lot; die Ursache ist die kleinere Ausbreitungsgeschwindigkeit, nicht eine Änderung der Frequenz.

= Messung der Lichtgeschwindigkeit

Dass Licht sich nicht unendlich schnell ausbreitet, erkannte Ole Rømer 1676 an den
Jupitermonden: Der Schattenaustritt des Mondes Io verspätet sich im Lauf eines Jahres um bis
zu 17 Minuten, weil die Erde auf ihrer Bahn unterschiedlich weit von Jupiter entfernt ist.

Im Labor lässt sich $c$ mit einer stehenden Welle messen. In der Mikrowelle (Frequenz
$f = 2","45$ GHz) bilden sich zwischen den Wänden Maxima im Abstand $lambda\/2$. Bei einem
Abstand von 6,4 cm folgt $lambda = 2 dot 6","4$ cm $= 12","8$ cm und damit

$ c = lambda f = 0","128 "m" dot 2","45 dot 10^9 "Hz" = 3","14 dot 10^8 "m/s" $

#achtung[
  Der Abstand zweier erhitzter Stellen ist $lambda\/2$, nicht $lambda$: Zwischen zwei Maxima
  liegt ein Minimum. Wer ihn als Wellenlänge einsetzt, erhält den doppelten Wert.
]

Aus den Maxwell-Gleichungen folgt, dass $c$ allein aus Naturkonstanten bestimmt ist:

$ c_0 = frac(1, sqrt(mu_0 epsilon_0)) = 2","998 dot 10^8 "m/s" $

Michelson und Morley fanden 1887 keine Abweichung von diesem Wert, obwohl die Erde sich relativ
zum damals postulierten Äther bewegen sollte. Einstein machte daraus 1905 ein Postulat: In allen
Inertialsystemen misst jeder Beobachter im Vakuum denselben Wert $299 792 458$ m/s. Deshalb
hängt $c$ in $c = lambda f$ nicht davon ab, wer die Welle beobachtet.

Das sichtbare Licht ($lambda approx 380$–780 nm) ist nur ein schmaler Ausschnitt des
elektromagnetischen Spektrums. Nach steigender Frequenz geordnet: Radiowellen, Mikrowellen,
Infrarot, sichtbares Licht, Ultraviolett, Röntgen- und Gammastrahlung.

Verbindung: Dasselbe Interferenzprinzip wie in der Mikrowelle nutzt das
Michelson-Interferometer (Abschnitt 12) für Längenmessungen; die Photonenenergie $E = h f$
behandelt Skript 2.

= Polarisation

Licht ist eine Transversalwelle: Das elektrische Feld schwingt senkrecht zur
Ausbreitungsrichtung. Bei einer Glühlampe ist diese Schwingungsebene statistisch verteilt, bei
einem Laser liegt sie fest.

#definition[
  *Polarisator:* Ein Filter, der nur eine Schwingungsebene durchlässt. *Analysator:* Ein zweiter
  Filter dahinter; er zeigt, in welcher Ebene das Licht nach dem ersten Filter schwingt.
]

Stehen Polarisator und Analysator im Winkel $alpha$ zueinander, gilt das Malus-Gesetz

$ I = I_0 cos^2 alpha $

#merksatz[
  Nur Transversalwellen lassen sich polarisieren. Schall – eine Longitudinalwelle – geht durch
  einen Polarisator unverändert hindurch. Das ist der experimentelle Unterschied zwischen beiden
  Wellentypen, und deshalb ist Polarisation der Nachweis, dass Licht transversal schwingt.
]

= Michelson-Interferometer

Ein Strahlteiler teilt den Laserstrahl in zwei Teilstrahlen. Sie laufen zu je einem Spiegel und
werden auf einen Schirm zurückgeworfen, wo sie sich überlagern. Ein Arm ist fest, der andere
beweglich.

Wird der bewegliche Spiegel um $Delta d$ verschoben, ändert sich der Weg dieses Teilstrahls um
$2 Delta d$ – hin und zurück. Der Gangunterschied ist also

$ Delta s = 2 Delta d $

#figure(
  image("../fig/michelson.svg", width: 66%),
  caption: [Aufbau: Der Strahlteiler teilt den Strahl; der bewegliche Spiegel verlängert einen Arm
    um $Delta d$, der Gangunterschied wächst dadurch um $2 Delta d$.],
)

Am Schirm treffen beide Teilstrahlen wieder zusammen; verschiebt man den beweglichen Spiegel, wandert das Streifenmuster über den Schirm.

Maxima erscheinen bei $Delta s = k lambda$, Minima bei $Delta s = (2k+1) lambda\/2$. Beim
Verschieben um $lambda\/2$ wechselt das Bild einmal zwischen hell und dunkel. Zählt man $N$
Streifen, die am Schirm vorbeiziehen, folgt

$ Delta d = N frac(lambda, 2) $

Damit lassen sich Längenänderungen von Bruchteilen einer Wellenlänge messen – das ist die
technische Verwendung, die im Kerncurriculum verlangt wird.

= Experiment: Feder-Masse-Pendel

#experiment[
  *Aufbau.* Feder am Stativ, Masse $m$, Lineal, Stoppuhr. \
  *Durchführung.* $m$ variieren, je 10 Schwingungen messen, $T = t\/10$. \
  *Beobachtung.* $T$ wächst mit $m$; unabhängig von der Amplitude bis etwa 15°. \
  *Auswertung.* $T^2$ gegen $m$: Gerade durch den Ursprung, Steigung $4 pi^2 \/ D$. \
  *Erklärung.* Rückstellkraft $-D s$ gegen Trägheit $m$ – siehe Herleitung. \
  *Bedeutung.* Bestätigt $T tilde sqrt(m)$ und liefert $D$ ohne Kraftmessung.
]

#herleitung[
  *Periodendauer des Federpendels* \
  1. Bewegungsgleichung: $m (dif^2 s)/(dif t^2) = -D s$.
  2. Form einer harmonischen Schwingung mit $omega^2 = D \/ m$.
  3. Mit $omega = 2 pi \/ T$ folgt $frac(4 pi^2, T^2) = frac(D, m)$.
  4. Auflösen:

  $ T = 2 pi sqrt(frac(m, D)) $

  5. Gültig für massefreie Feder und kleine Auslenkung. $D$ folgt aus der Steigung der
     $T^2$-$m$-Geraden.

]
= Aufgaben

#aufgabe(1, punkte: 10)[
  Ein Doppelspalt ($d = 0","25$ mm) wird mit Licht der Wellenlänge 633 nm beleuchtet; der
  Schirm steht $e = 2","00$ m entfernt.

  #enum(
    [Berechnen Sie den Abstand zweier benachbarter Maxima.],
    [Begründen Sie, dass die Kleinwinkelnäherung zulässig ist.]
  )
]

#lösung[
  (1) $a_1 = frac(lambda e, d) = frac(633 dot 10^(-9) "m" dot 2","00 "m", 0","25 dot 10^(-3) "m") = 5","06$ mm.

  (2) $tan(alpha_1) = a_1\/e = 2","5 dot 10^(-3)$, also $alpha_1 approx 0","14°$. Bei so kleinen
  Winkeln unterscheiden sich $sin$ und $tan$ um weniger als $10^(-4)$.
]

#aufgabe(2, punkte: 10)[
  Ein Gitter mit 500 Strichen pro Millimeter zeigt das Maximum 2. Ordnung unter $39","2°$.

  #enum([Bestimmen Sie $g$.], [Berechnen Sie $lambda$.],
    [Erklären Sie, warum das Maximum 3. Ordnung fehlt.])
]

#lösung[
  (1) $g = frac(1, 500 "mm"^(-1)) = 2","00 dot 10^(-6)$ m.

  (2) $lambda = frac(g sin(alpha_2), 2) = frac(2","00 dot 10^(-6) "m" dot 0","632, 2) = 6","32 dot 10^(-7) "m" = 632 "nm"$.

  (3) Fehlt ein Maximum, fällt es mit einem Einzelspalt-Minimum zusammen: Bei endlicher
  Strichbreite $b$ gilt $b sin(alpha) = m lambda$ für dieselbe Richtung. Die Gitterformel
  allein erklärt das nicht.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [Einzel- und Doppelspaltbedingung vertauscht], [Doppelspalt: Maxima bei $d sin(alpha) = n lambda$;
    Einzelspalt: Minima bei $b sin(alpha) = m lambda$],
  [Einheiten gemischt], [alles in SI, erst am Ende umrechnen],
  [„Interferenz, weil sich Wellen treffen“], [nur bei Kohärenz: feste Phasenbeziehung, gleiche
    Frequenz],
  [Resonanz immer bei $f_0$], [nur bei schwacher Dämpfung; sonst darunter],
  [stehende Welle als wandernd beschrieben], [ortsfeste Knoten, $2 A sin(k x)$],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Formel],
  [Wellenlänge aus Frequenz], [$c = lambda f$],
  [Gangunterschied als Phase], [$delta = 2 pi Delta s \/ lambda$],
  [Doppelspalt], [$a_n = n lambda e \/ d$],
  [Gitter], [$g sin(alpha_n) = n lambda$],
  [Einzelspalt-Minima], [$b sin(alpha_m) = m lambda$],
  [stehende Welle, fest-fest], [$L = n lambda \/ 2$],
  [Bragg], [$2 d sin(theta) = n lambda$],
  [Federpendel], [$T = 2 pi sqrt(m\/D)$],
  [Dämpfung], [$A(t) = A_0 e^(-k t)$],
)

*Verstehen, nicht auswendig:* warum $delta$ und $Delta s$ dasselbe beschreiben; warum Kohärenz
nötig ist; warum die Kleinwinkelnäherung beim Doppelspalt zulässig ist, beim Gitter hoher
Ordnung nicht.

#prüfung[
  *Das musst du können:*
  - *erklären*, warum nur kohärente Wellen ein stabiles Interferenzmuster ergeben;
  - *herleiten*, warum beim Doppelspalt $a_n = n lambda e \/ d$ gilt;
  - *berechnen*: Wellenlänge aus Gitterwinkel, Ringabstand oder Mikrowellen-Maxima;
  - *begründen*, warum die Kleinwinkelnäherung beim Doppelspalt zulässig ist und beim Gitter
    hoher Ordnung nicht;
  - *skizzieren*: Zeigerbild für konstruktive und destruktive Interferenz.
]

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12,
    „Schwingungen und Wellen“.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - Grafiken: eigene Erstellung mit Matplotlib (`build/make_figures.py`).
]
