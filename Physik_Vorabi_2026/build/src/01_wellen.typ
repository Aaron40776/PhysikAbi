#import "../template.typ": *

#show: setup.with(title: "Wellen und Interferenz", kicker: "Skript 1 · Wellenlehre")

#cover(
  "Skript 1 · Schwingungen und Wellen",
  "Wellen und Interferenz",
  "Schwingung, Wellengleichung, Interferenz, Doppelspalt, Gitter, Bragg, EM-Wellen, Polarisation, Michelson",
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
  image("../fig/schule/s1_kenngroessen.png", width: 88%),
  caption: [Wellenmaschine aus dem Schulmaterial: Die Kugeln schwingen um ihre Ruhelage,
    die Störung läuft durch die Kette.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/04wellen/welle01.png")[Schulseite].],
)

Nach der Zeit $Delta t$ ist die Störung um $c dot Delta t$ weitergewandert; ihre Form ändert sich dabei nicht, nur ihr Ort.

== Messwerte, Energie und Diagramme

Ein Oszilloskop zeichnet $s(t)$ auf. Aus dem Abstand zweier Nulldurchgänge in derselben
Richtung folgt $T$, aus der größten Auslenkung $A$; die Frequenz ist $f = 1\/T$. Bei gedämpfter
Schwingung nimmt die Amplitude exponentiell ab, $A(t) = A_0 e^(-gamma t)$; die Einhüllende ist
im $t$-$s$-Diagramm eine fallende Exponentialkurve.

Beim Feder-Masse-Pendel wandelt sich Energie fortlaufend um:

$ E_"pot" = frac(1, 2) D s^2, quad E_"kin" = frac(1, 2) m v^2, quad E_"ges" = E_"pot" + E_"kin" $

In der Ruhelage ist $E_"kin"$ maximal und $E_"pot"$ null; am Umkehrpunkt ist es umgekehrt.
Das $t$-$v$-Diagramm ist die Ableitung des $t$-$s$-Diagramms: Es eilt um eine Viertelperiode
voraus und hat bei $s = 0$ seinen größten Betrag.

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
  image("../fig/schule/s1_zeiger.png", width: 82%),
  caption: [Zeigerdarstellung einer Schwingung aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/01schwingungen/zeiger01.png")[Schulseite].],
)

Ein voller Umlauf des Zeigers entspricht einer Wellenlänge; deshalb liest man den Gangunterschied zweier Wellen direkt als Winkel zwischen ihren Zeigern ab.

#merksatz[
  Konstruktiv: $Delta s = n lambda$, $delta = n dot 2 pi$, $A_"ges" = A_1 + A_2$. \
  Destruktiv: $Delta s = (2n+1) frac(lambda, 2)$, $delta = (2n+1) pi$, $A_"ges" = |A_1 - A_2|$.
]

= Gedämpfte Schwingung und Resonanz

$ A(t) = A_0 e^(-gamma t), quad Lambda = ln frac(A(t), A(t+T)) = gamma T $

Dabei ist $gamma$ die Dämpfungskonstante und $Lambda$ das logarithmische Dekrement.

#definition[
  *Resonanz:* Die Amplitude der erzwungenen Schwingung ist maximal, wenn die Erregerfrequenz
  $f_E$ nahe der Eigenfrequenz $f_0$ liegt. Je schwächer die Dämpfung, desto höher und
  schmaler der Peak; bei starker Dämpfung liegt das Maximum etwas unterhalb von $f_0$.

  Die Erregerfrequenz am Maximum heißt *Resonanzfrequenz* $f_R$. Für schwache Dämpfung gilt
  $f_R approx f_0 = frac(1, 2 pi) sqrt(frac(D, m))$; mit wachsender Dämpfung wandert $f_R$ nach
  unten.
]

Bei kleiner Anregungsfrequenz ($f_A < f_E$) folgt das System der Erregung fast ohne
Verzögerung; bei $f_A approx f_E$ wächst die Amplitude stark an (Resonanz); bei
$f_A > f_E$ kann es der Erregung nicht mehr folgen, die Amplitude bleibt klein. Mit
wachsender Anregungsfrequenz eilt die Schwingung der Erregung immer stärker nach; im
Resonanzfall beträgt die Phasenverschiebung etwa $pi\/2$.

#table(
  columns: (1fr, auto, 1fr),
  [System], [Eigenfrequenz], [Gültigkeit],
  [Feder-Masse-Pendel], [$f_0 = frac(1, 2 pi) sqrt(frac(D, m))$], [massefreie Feder],
  [Fadenpendel], [$f_0 = frac(1, 2 pi) sqrt(frac(g, l))$], [kleine Auslenkung],
  [Schwingkreis], [$f_0 = frac(1, 2 pi sqrt(L C))$], [Thomsonsche Formel],
)

Im Schwingkreis pendelt die Energie zwischen Kondensator und Spule:

$ E_"el" = frac(1, 2) C U^2, quad E_"mag" = frac(1, 2) L I^2, quad f_0 = frac(1, 2 pi sqrt(L C)) $

Im Schwingkreis lädt die Spannungsquelle den Kondensator auf. Beim Entladen treibt die
Kondensatorspannung einen Strom durch die Spule; die Selbstinduktion der Spule bremst den
Stromanstieg und baut dabei ein Magnetfeld auf. Ist der Kondensator entladen, hält der Strom
aufgrund der Induktion an und lädt den Kondensator mit umgekehrter Polarität. So pendelt die
Energie zwischen elektrischem Feld ($E_"el"$) und magnetischem Feld ($E_"mag"$) hin und her.
Beim realen Schwingkreis wandelt der ohmsche Widerstand einen Teil der Energie in Wärme um;
die Schwingung ist gedämpft.

Ein Resonanzexperiment: Ein Erreger mit veränderbarer Frequenz $f_A$ regt das System an; man
misst die Amplitude für jede Frequenz und trägt sie über $f_A$ auf. Das Maximum liegt bei
$f_R approx f_0$. Ersetzt man im LC-Kreis den Kondensator durch einen mit größerem $C$, sinkt
$f_0$; die Resonanzkurve verschiebt sich nach links. Das lässt sich mit zwei Kondensatoren
unterschiedlicher Kapazität prüfen; die Messung bestätigt $f_0 tilde 1\/sqrt(C)$ nur, wenn $L$
unverändert bleibt.

= Experiment: Feder-Masse-Pendel

#experiment[
  *Aufbau.* Feder am Stativ, Masse $m$, Lineal, Stoppuhr. \
  *Durchführung.* $m$ variieren, je 10 Schwingungen messen, $T = t\/10$. \
  *Beobachtung.* $T$ wächst mit $m$; bei kleiner Amplitude ist $T$ unabhängig von der Amplitude. \
  *Auswertung.* $T^2$ gegen $m$: Gerade durch den Ursprung, Steigung $4 pi^2 \/ D$. \
  *Erklärung.* Rückstellkraft $-D s$ gegen Trägheit $m$ – siehe Herleitung. \
  *Bedeutung.* Bestätigt $T tilde sqrt(m)$ und liefert $D$ ohne Kraftmessung.

  *Fehler und Sicherheit.* Die Zeitmessung über zehn Perioden verringert den Reaktionsfehler; systematisch wirkt die Federkonstante bei großer Auslenkung. Stativ gegen Umkippen sichern und die Feder nicht überdehnen.]

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
  image("../fig/schule/s1_stehende_welle.jpg", width: 84%),
  caption: [Stehende Welle aus dem Schulmaterial: Knoten und Bäuche im Abstand $lambda\/2$.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/09stehendewellen/stehendewelle01.jpg")[Schulseite].],
)

In der Grundschwingung schwingt die Mitte mit maximaler Amplitude, in der ersten Oberschwingung sitzt dort ein zusätzlicher Knoten; der Abstand zweier Knoten bleibt in beiden Fällen $lambda\/2$.

#table(
  columns: (1fr, 1fr, 1fr),
  [Ränder], [Wellenlängen], [Frequenzen],
  [beide fest], [$L = n frac(lambda, 2)$], [$f_n = n f_1$],
  [ein Ende offen], [$L = (2n-1) frac(lambda, 4)$], [$f_n = (2n-1) f_1$],
)

#experiment[
  *Ultraschall-Stehwelle im Kundtschen Rohr.* \
  *Aufbau.* Glasrohr mit Lautsprecher an einem Ende und bewegtem Stempel am anderen Ende;
  im Rohr liegt Korkmehl oder Styroporgranulat. \
  *Durchführung.* Lautsprecher mit fester Frequenz $f$ einschalten und den Stempel verschieben,
  bis das Granulat deutliche Knoten und Bäuche zeigt. Abstand zweier benachbarter Knoten messen. \
  *Beobachtung.* Das Granulat sammelt sich an den Schwingungsknoten; die Knoten liegen im
  Abstand $lambda\/2$. \
  *Auswertung.* $lambda = 2 (x_1 - x_0)$ und $c = lambda f$. \
  *Bedeutung.* Die stehende Welle macht die Wellenlänge des unsichtbaren Ultraschalls messbar.

  *Fehler und Sicherheit.* Unsicherheit kommt aus der Stempelposition und der Ablesung der Knotenabstände; systematisch aus der Rohrlänge. Lautstärke begrenzen und das Glasrohr gegen Umstoßen sichern.]

= Doppelspalt

#figure(
  image("../fig/schule/s1_doppelspalt_geometrie.png", width: 84%),
  caption: [Doppelspalt-Geometrie aus dem Schulmaterial: Die beiden Teilstrahlen laufen zum
    Punkt $P$; ihr Wegunterschied bestimmt das Interferenzbild.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/11doppelspalt/doppelspalt_maximum.png")[Schulseite].],
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
  image("../fig/schule/s1_doppelspalt_intensitaet.jpg", width: 86%),
  caption: [Interferenzmuster am Doppelspalt aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/11doppelspalt/doppelspalt01.jpg")[Schulseite].],
)

#experiment[
  *Doppelspalt mit Licht und mit Schall.* \
  *Aufbau.* Licht: Laser, Doppelspalt, Schirm. Schall: zwei gleichphasige Lautsprecher im
  Abstand $d$, Mikrofon als Detektor. \
  *Durchführung.* Licht: Abstand $a_n$ der Maxima auf dem Schirm messen. Schall: Mikrofon
  seitlich verschieben und die Orte der Maxima und Minima aufnehmen. \
  *Auswertung.* Licht: $d sin(alpha_n) = n lambda$ mit $tan(alpha_n) = a_n\/e$. Schall:
  aus dem Muster $lambda$ bestimmen und mit der bekannten Frequenz $c = lambda f$ prüfen. \
  *Bedeutung.* Dieselbe Geometrie gilt für Licht und Schall; der Doppelspalt ist kein
  Sonderfall des Lichts.

  *Fehler und Sicherheit.* Beim Licht sind der Abstand Doppelspalt–Schirm und der Streifenabstand die Hauptfehler; beim Schall die Mikrofonposition. Laser nie ins Auge richten, Lautstärke begrenzen.]

Weil $a_n$ linear mit $n$ wächst, sind die Maxima gleich weit voneinander entfernt; die Minima liegen jeweils genau dazwischen.

= Gitter und Einzelspalt

Beim Gitter (Gitterkonstante $g$, $N$ Spalte) haben Nachbarspalte den Gangunterschied
$g sin(alpha)$:

$ g sin(alpha_n) = n lambda $

Viele Spalte machen die Maxima scharf – deshalb wird mit dem Gitter die Wellenlänge gemessen.
Im Zeigermodell addieren sich die $N$ Zeiger der Spalte. Im Hauptmaximum zeigen alle in
dieselbe Richtung; schon eine kleine Winkeländerung dreht die äußeren Zeiger gegeneinander,
sodass die Summe schnell kleiner wird. Zwischen zwei Hauptmaxima liegen $N-2$ Nebenmaxima;
mit wachsendem $N$ werden die Hauptmaxima schmaler und die Nebenmaxima schwächer. Deshalb
lässt sich die Lage eines Hauptmaximums mit einem Gitter viel genauer messen als mit einem
Doppelspalt.

Beim Einzelspalt (Breite $b$) interferieren Elementarwellen *eines* Spalts. Minima bei

$ b sin(alpha_m) = m lambda, quad m = 1, 2, dots $

Zwischen dem Minimum erster Ordnung links und rechts liegt das zentrale Maximum. Seine
Winkelbreite ist etwa $2 lambda\/b$; je schmaler der Spalt, desto breiter ist es. Mit
steigender Ordnung werden die Nebenmaxima schwächer, weil die Intensität der Einhüllenden
abfällt. Für die Intensität gilt $I(alpha) = I_0 (sin(beta)\/beta)^2$ mit
$beta = pi b sin(alpha)\/lambda$.

#achtung[
  Die Einzelspalt-*Minima* haben dieselbe Form wie die Doppelspalt-*Maxima*. Wer beide
  Bedingungen gleich behandelt, vertauscht hell und dunkel.
]

#experiment[
  *Gitter mit monochromatischem Licht (objektiv und subjektiv).* \
  *Aufbau.* Laser oder Spektrallampe, Gitter mit bekannter Gitterkonstante $g$, Schirm in
  bekanntem Abstand; subjektiv ein Fernrohr auf einem drehbaren Arm. \
  *Durchführung.* Objektiv: Abstand $a_n$ des $n$-ten Maximums auf dem Schirm messen.
  Subjektiv: das Maximum durch das Fernrohr anvisieren und den Winkel ablesen. \
  *Auswertung.* $g sin(alpha_n) = n lambda$; objektiv mit $tan(alpha_n) = a_n\/e$, subjektiv
  direkt mit dem gemessenen Winkel. \
  *Bedeutung.* Zwei unabhängige Messwege für dieselbe Wellenlänge.

  *Fehler und Sicherheit.* Gitterkonstante und Winkelablesung bestimmen die Unsicherheit; die Nullage des Gitters wirkt systematisch. Laserstrahl abdecken und nicht in den Strahl blicken.]

#experiment[
  *Weißes Licht am Gitter.* \
  *Beobachtung.* Das zentrale Maximum ist weiß; die Maxima höherer Ordnung sind zu einem
  Spektrum aufgefächert, weil $sin(alpha_n) = n lambda\/g$ mit $lambda$ wächst. \
  *Auswertung.* Aus dem Winkel einer bekannten Spektrallinie folgt $lambda$; umgekehrt lässt
  sich aus dem Spektrum auf die Gitterkonstante schließen.

  *Fehler und Sicherheit.* Die farbigen Ränder der Maxima begrenzen die Ablesegenauigkeit; die Gitterkonstante wirkt systematisch. Lampe nicht berühren und den Strahlengang abdecken.]

Eine CD oder DVD wirkt als Reflexionsgitter: Die feinen Spuren reflektieren das Licht unter
verschiedenen Winkeln. Mit dem gemessenen Beugungswinkel $alpha$, der Ordnung $n$ und der
Wellenlänge $lambda$ folgt der Spurabstand

$ d = frac(n lambda, sin(alpha)) $

#experiment[
  *Spurabstand einer CD/DVD.* \
  *Aufbau.* Laserdiode mit bekannter Wellenlänge, CD oder DVD, Schirm, Winkelmesser. \
  *Durchführung.* Den Laser schräg auf die reflektierende Oberfläche richten und den Winkel
  $alpha$ des $n$-ten Beugungsmaximums messen. \
  *Auswertung.* $d = n lambda \/ sin(alpha)$; bei bekannter Spurzahl pro Millimeter lässt
  sich das Ergebnis prüfen. \
  *Bedeutung.* Eine Alltagsanwendung derselben Gittergleichung.

  *Fehler und Sicherheit.* Wellenlänge der Laserdiode und Winkel sind die Eingangsgrößen; der Spurabstand folgt mit deren Unsicherheit. Laserlicht nicht direkt ins Auge, CD nicht verkratzen.]

#figure(
  image("../fig/schule/s1_gitter.jpg", width: 88%),
  caption: [Interferenzmuster am Gitter aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/12doppelspaltgitter/100spalt.jpg")[Schulseite].],
)

Beim Gitter überlagern sich viele Elementarwellen; dadurch werden die Maxima scharf und die Wellenlänge lässt sich präzise bestimmen.

= Bragg-Reflexion

An Netzebenen mit Abstand $d$ ist der Zusatzweg der zweiten Welle $2 d sin(theta)$:

#herleitung[
  *Bragg-Gleichung* \
  1. Zwei parallele Strahlen werden an zwei benachbarten Netzebenen im Abstand $d$ reflektiert.
  2. Der untere Strahl läuft zusätzlich den Weg $Delta s$. Im rechtwinkligen Dreieck mit
     Hypotenuse $d$ und Gegenkathete $Delta s\/2$ gilt $sin(theta) = (Delta s\/2)\/d$.
  3. Also $Delta s = 2 d sin(theta)$.
  4. Konstruktive Interferenz für $Delta s = n lambda$; damit folgt $2 d sin(theta) = n lambda$.
]

#figure(
  image("../fig/schule/s1_bragg.png", width: 54%),
  caption: [Bragg-Reflexion an Netzebenen aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/13bragginterferometer/bragg_modell_01.png")[Schulseite].],
)

#experiment[
  *Aufbau.* Röntgenröhre, Kristall mit bekanntem Netzebenenabstand und drehbarer Detektor. \
  *Durchführung.* Den Glanzwinkel $theta$ verändern und die Intensität der reflektierten Strahlung
  messen. \
  *Beobachtung.* Nur bei bestimmten Winkeln entsteht ein scharfes Maximum. \
  *Auswertung.* $2 d sin(theta) = n lambda$; bei bekanntem $d$ folgt die Wellenlänge.

  *Fehler und Sicherheit.* Winkel und Netzebenenabstand tragen die Unsicherheit; die Nullage des Detektors wirkt systematisch. Röntgenstrahlung abschirmen, Türkontakt und Dosimeter benutzen.]

Der zweite Strahl dringt eine Netzebene tiefer ein und läuft dadurch den Weg $2 d sin(theta)$ länger; nur wenn dieser Weg ein Vielfaches von $lambda$ ist, verstärken sich die reflektierten Wellen.

= Elektromagnetische Wellen

$c_0 = 2","998 dot 10^8$ m/s im Vakuum, $c = c_0 \/ n_"Med"$ im Medium. Beim Übergang bleibt $f$
konstant, $lambda$ ändert sich:

Eine elektromagnetische Welle besteht aus einem elektrischen und einem magnetischen Feld. Beide
schwingen senkrecht zueinander und senkrecht zur Ausbreitungsrichtung; die Felder erzeugen sich
gegenseitig, sodass die Welle im Vakuum ohne Ladungen existieren kann. Im Vakuum breitet sie sich mit $c_0$ aus, im
Medium mit $c = c_0\/n_"Med"$. Die Frequenz wird vom Erreger vorgegeben und bleibt beim
Medienwechsel gleich; weil $c$ kleiner wird, wird $lambda$ kleiner.

$ frac(sin(alpha), sin(beta)) = frac(c_1, c_2) = frac(n_"Med,2", n_"Med,1") $

Beim Eintritt in ein optisch dichteres Medium knickt der Strahl zum Lot; die Ursache ist die kleinere Ausbreitungsgeschwindigkeit, nicht eine Änderung der Frequenz.

= Messung der Lichtgeschwindigkeit

Dass Licht sich nicht unendlich schnell ausbreitet, erkannte Ole Rømer 1676 an den
Jupitermonden: Der Schattenaustritt des Mondes Io verspätet sich im Lauf eines Jahres um bis
zu etwa 17 Minuten, weil die Erde auf ihrer Bahn unterschiedlich weit von Jupiter entfernt ist.
Rømer selbst schätzte noch 22 Minuten; der heutige Wert für die Laufzeit über den
Erdbahndurchmesser beträgt 16,6 Minuten.

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
Michelson-Interferometer (Abschnitt 13) für Längenmessungen; die Photonenenergie $E = h f$
behandelt Skript 2.

= Polarisation

Licht ist eine Transversalwelle: Das elektrische Feld schwingt senkrecht zur
Ausbreitungsrichtung. Bei einer Glühlampe ist diese Schwingungsebene statistisch verteilt, bei
einem Laser liegt sie fest.

#definition[
  *Polarisator:* Ein Filter, der nur eine Schwingungsebene durchlässt. *Analysator:* Ein zweiter
  Filter dahinter; er zeigt, in welcher Ebene das Licht nach dem ersten Filter schwingt.
]

#experiment[
  *Aufbau.* Lampe oder Laser, Polarisator, drehbarer Analysator und eine Photodiode als
  Intensitätsmesser. \
  *Durchführung.* Den Analysator schrittweise drehen und die Intensität messen. \
  *Beobachtung.* Bei paralleler Stellung ist die Intensität maximal, bei gekreuzter Stellung
  praktisch null. \
  *Auswertung.* $I(alpha) = I_0 cos^2(alpha)$ (Malus-Gesetz).

  *Fehler und Sicherheit.* Photodiodenstrom und Winkelstellung sind die Messgrößen; die Nullage von Polarisator und Analysator wirkt systematisch. Nur Laser kleiner Leistung verwenden und den Strahl abdecken.]

Stehen Polarisator und Analysator im Winkel $alpha$ zueinander, gilt das Malus-Gesetz

$ I = I_0 cos^2 alpha $

Das elektrische Feld nach dem Polarisator hat die Amplitude $E_0$. Der Analysator lässt nur
die Komponente $E_0 cos(alpha)$ durch; die Intensität ist proportional zum Quadrat der
Amplitude, also $I = I_0 cos^2(alpha)$.

#merksatz[
  Nur Transversalwellen lassen sich polarisieren. Schall ist eine Longitudinalwelle und hat keine
  Polarisationsebene; ein Polarisator hat für ihn keine definierte Wirkung. Deshalb ist
  Polarisation der Nachweis, dass Licht transversal schwingt.
]

= Michelson-Interferometer

Ein Strahlteiler teilt den Laserstrahl in zwei Teilstrahlen. Sie laufen zu je einem Spiegel und
werden auf einen Schirm zurückgeworfen, wo sie sich überlagern. Ein Arm ist fest, der andere
beweglich.

Wird der bewegliche Spiegel um $Delta d$ verschoben, ändert sich der Weg dieses Teilstrahls um
$2 Delta d$ – hin und zurück. Der Gangunterschied ist also

$ Delta s = 2 Delta d $

#figure(
  image("../fig/schule/s1_michelson.png", width: 66%),
  caption: [Michelson-Interferometer aus dem Schulmaterial: Strahlteiler, fester und beweglicher
    Spiegel, Schirm.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/10michelsoninterferometer/michelson01.png")[Schulseite].],
)

Mit Mikrowellen statt Licht lässt sich dasselbe Interferometer betreiben: Die
Wellenlänge ist dann Zentimeter statt Nanometer, und die Verschiebung eines Spiegels um
$lambda\/2$ ergibt wieder einen Hell-Dunkel-Wechsel.

#experiment[
  *Aufbau.* Laser, 45°-Strahlteiler, fester Spiegel M1, auf einer Schiene verschiebbarer Spiegel
  M2 und ein Schirm. Der Strahlteiler erzeugt zwei Teilstrahlen; M1 und M2 werfen sie zurück. \
  *Durchführung.* M2 langsam verschieben und die am Schirm vorbeiziehenden hellen Streifen zählen. \
  *Beobachtung.* Das Streifenmuster wandert; eine Verschiebung um $lambda\/2$ ergibt einen
  Hell-Dunkel-Wechsel. \
  *Auswertung.* $Delta s = 2 Delta d$ und $Delta d = N lambda\/2$.

  *Fehler und Sicherheit.* Spiegelverschiebung und die Zählung der Helligkeitswechsel bestimmen die Unsicherheit; die Justage wirkt systematisch. Laser nicht ins Auge, optische Bank gegen Verrutschen sichern.]

Am Schirm treffen beide Teilstrahlen wieder zusammen; verschiebt man den beweglichen Spiegel, wandert das Streifenmuster über den Schirm.

Maxima erscheinen bei $Delta s = k lambda$, Minima bei $Delta s = (2k+1) lambda\/2$. Beim
Verschieben um $lambda\/2$ wechselt das Bild einmal zwischen hell und dunkel. Zählt man $N$
Streifen, die am Schirm vorbeiziehen, folgt

$ Delta d = N frac(lambda, 2) $

Damit lassen sich Längenänderungen von Bruchteilen einer Wellenlänge messen – das ist die
technische Verwendung, die im Kerncurriculum verlangt wird.

= Aufgaben

#aufgabe(1, punkte: 10, afb: "II")[
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

#aufgabe(2, punkte: 10, afb: "II")[
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

#aufgabe(3, punkte: 12, afb: "III")[
  Ein Gitter mit $N$ Spalten wird mit monochromatischem Licht beleuchtet.

  #enum(
    [Erklären Sie, warum die Hauptmaxima mit wachsendem $N$ schmaler werden.],
    [Begründen Sie, warum zwischen zwei Hauptmaxima $N-2$ Nebenmaxima liegen.],
    [Beurteilen Sie, ob ein Doppelspalt für eine Präzisionsmessung der Wellenlänge geeignet ist.]
  )
]

#lösung[
  (1) Im Zeigermodell addieren sich $N$ Zeiger. Im Hauptmaximum zeigen alle in dieselbe
  Richtung; schon eine kleine Winkeländerung dreht die äußeren Zeiger gegeneinander, sodass die
  Summe schnell kleiner wird. Die Halbwertsbreite nimmt mit $1\/N$ ab.

  (2) Zwischen zwei Hauptmaxima durchlaufen die $N$ Zeiger relative Phasen von $0$ bis $2 pi$.
  Bei $N-1$ gleichmäßig verteilten Phasen heben sich die Zeiger auf; das ergibt $N-2$ Minima
  und dazwischen $N-2$ Nebenmaxima.

  (3) Nur bedingt: Die Maxima sind breit und die Intensität fällt kaum ab; die Lage ist schwer
  zu messen. Ein Gitter mit vielen Spalten liefert schmale Maxima und damit eine kleinere
  Unsicherheit.
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
  [Dämpfung], [$A(t) = A_0 e^(-gamma t)$],
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
  *Quellen (Abruf 2026-11-02).*
  - Schwingungen: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/01schwingungen/docs.md
  - Resonanz/Schwingkreis: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/03resonanz/docs.md
  - Stehende Wellen/Ultraschall: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/09stehendewellen/docs.md
  - Gitter: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md
  - Bragg: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/13bragginterferometer/docs.md
  - Polarisation: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/06polarisation/docs.md
  - Michelson: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md
  - Lichtgeschwindigkeit: https://www.physik.gym-wst.de/docs/d12/12schwingungenwellen/14messunglichtgeschw/docs.md
  - Kerncurriculum Physik Niedersachsen 2022: https://cuvo.nibis.de/
  - Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
