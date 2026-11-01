#import "../template.typ": *

#let doc-title = "Wellen und Interferenz"
#let doc-subtitle = "Schwingungen, Wellenausbreitung, Überlagerung, Doppelspalt und Gitter"
#let doc-kicker = "Skript 1"

#show: setup.with(title: "Wellen und Interferenz", kicker: "Skript 1 · Wellenlehre")

#cover(
  "Skript 1 · Schwingungen und Wellen",
  "Wellen und Interferenz",
  "Von der harmonischen Schwingung zur Wellenlängenmessung mit Doppelspalt, Gitter und Bragg-Reflexion",
  lernziele: (
    "harmonische Schwingungen mit Amplitude, Periodendauer, Frequenz und Phase beschreiben",
    "die Wellengleichung aus der Zeitverzögerung herleiten und deuten",
    "konstruktive und destruktive Interferenz mit Gangunterschied und Zeigermodell erklären",
    "die Doppelspaltgleichung selbstständig herleiten und auswerten",
    "Einzelspalt, Gitter, stehende Wellen und Bragg-Reflexion fachlich sauber unterscheiden",
  ),
)

#toc-page()

= Einstieg: Was ist eine Welle?

Wer im Hafenbecken einen Stein ins Wasser wirft, sieht Kreise nach außen laufen – aber das Wasser
selbst bewegt sich nicht mit. Eine *Welle* ist ein sich ausbreitender Zustand, keine sich
ausbreitende Materie. Der Stoff schwingt um seine Ruhelage, weitergegeben wird nicht der Stoff,
sondern die *Störung*: Auslenkung, Druck, Feldstärke.

Dahinter steckt eine Kette von Ursache und Wirkung: Ein schwingender Körper zwingt seine
Nachbarn ebenfalls zum Schwingen, diese wieder ihre Nachbarn, und so läuft die Störung mit einer
endlichen Geschwindigkeit durch den Raum. Deshalb braucht jede Welle eine *Quelle* (den
schwingenden Oszillator) und ein *Medium* (bei mechanischen Wellen) beziehungsweise – bei
elektromagnetischen Wellen – nur die Felder selbst.

Diese Einebnung erklärt, warum Schwingung und Welle in der Oberstufe gemeinsam behandelt werden:
Die Welle ist die *räumliche Fortsetzung* der Schwingung. Alles, was Sie über eine Schwingung
wissen, gilt an jedem einzelnen Ort der Welle – nur mit einer Verzögerung, die vom Abstand zur
Quelle abhängt.

#merksatz[
  Eine Welle ist eine sich räumlich ausbreitende Schwingung. Die Welle transportiert Energie und
  Impuls, aber im Idealfall keine Materie.
]

*Leitfragen dieses Skripts.*
- Wie beschreibt man eine Schwingung vollständig, und woher kommt $T = 2 pi sqrt(m\/D)$?
- Wie wird aus einer Schwingung eine Welle, und wie lautet die Wellengleichung?
- Warum entstehen beim Doppelspalt helle und dunkle Streifen, und wie misst man damit eine
  Wellenlänge von $10^(-7)$ m?
- Wann interferiert Licht überhaupt (Kohärenz), und was unterscheidet Doppelspalt, Gitter,
  Einzelspalt und Bragg-Reflexion?

= Schwingungen als Grundlage der Wellenlehre

== Kenngrößen einer harmonischen Schwingung

Eine *harmonische Schwingung* liegt vor, wenn die Rückstellkraft proportional zur Auslenkung ist
und ihr entgegenwirkt:

$ F(t) = -D dot s(t) $

$D$ heißt Richtgröße (beim Federpendel Federkonstante). Genau diese lineare Kraft führt auf eine
sinusförmige Bewegung (Herleitung im Kasten unten).

#definition[
  *Auslenkung* $s(t)$: momentaner Abstand von der Ruhelage.
  *Amplitude* $A$: maximale Auslenkung.
  *Periodendauer* $T$: Dauer einer vollständigen Schwingung (Periode).
  *Frequenz* $f = 1\/T$: Schwingungen pro Sekunde, Einheit $1 "Hz" = 1\/"s"$.
  *Kreisfrequenz* $omega = 2 pi f = (2 pi)\/T$: Phasengeschwindigkeit im Phasenraum, Einheit $1\/"s"$.
  *Phase* $phi(t) = omega t + phi_0$: momentaner „Stand“ im Schwingungszyklus.
]

Die mathematische Beschreibung lautet damit

$ s(t) = A dot sin(omega t + phi_0) $

#figure(
  image("../fig/welle_raumzeit.svg", width: 92%),
  caption: [Zwei Momentaufnahmen einer Welle. Zwischen den Bildern ist die Welle um $Delta x = c dot Delta t$ gewandert. Amplitude $A$ und Wellenlänge $lambda$ bleiben unverändert.],
)

== Zeigermodell (Zeigerdarstellung)

Eine harmonische Schwingung lässt sich als *Projektion eines rotierenden Zeigers* auffassen: Ein
Zeiger der Länge $A$ rotiert mit der Winkelgeschwindigkeit $omega$; seine Projektion auf die
Hochachse ist $s(t) = A sin(omega t)$. Ein voller Umlauf entspricht einer Periodendauer $T$, ein
Umlaufwinkel von $2 pi$ einer Phase von $2 pi$.

#figure(
  image("../fig/zeigerkette.svg", width: 88%),
  caption: [Zeigerkette: An aufeinanderfolgenden Orten ist der Zeiger um denselben Winkel weitergedreht. Aus der Kette wird die Welle.],
)

Das Zeigermodell ist mehr als eine Zeichenhilfe. Es ist das Rechenwerkzeug für *Überlagerung*:
Zwei Wellen am selben Ort addieren sich wie zwei Zeiger – vektoriell, mit Phase. Genau so werden
später Doppelspalt, Gitter und das Mach-Zehnder-Interferometer gerechnet (Skript 5).

#merksatz[
  Die *Intensität* einer Welle ist proportional zum *Quadrat der Amplitude*: $I tilde A^2$.
  Deshalb ist die Intensität empfindlich gegenüber Phasenlagen: Schon eine Phasenverschiebung von
  $pi$ lässt sie auf null gehen, obwohl beide Amplituden unverändert sind.
]

== Gedämpfte Schwingung und Resonanz

Reale Schwinger verlieren Energie (Reibung, Luftwiderstand, Strahlung). Bei *exponentiell
abnehmender Amplitude* gilt

$ s(t) = s_0 e^(-k t) sin(omega t) $

mit der Dämpfungskonstante $k > 0$. Die Frequenz ändert sich dabei nur schwach; charakteristisch
ist die abnehmende Einhüllende $s_0 e^(-k t)$.

Wird ein System von außen mit der Frequenz $f_E$ angeregt, so antwortet es mit wachsender
Amplitude. *Resonanz* tritt auf, wenn die Erregerfrequenz nahe der Eigenfrequenz $f_0$ liegt:
$f_E approx f_0$. Je schwächer die Dämpfung, desto höher und schmaler die Resonanzkurve.

#definition[
  *Resonanzfrequenz* $f_R$: die Erregerfrequenz, bei der die Amplitude der erzwungenen Schwingung
  maximal wird. Für das Feder-Masse-Pendel ist bei schwacher Dämpfung
  $f_R approx f_0 = 1\/(2 pi) sqrt(D\/m)$;
  für den elektromagnetischen Schwingkreis $f_R approx f_0 = 1\/(2 pi sqrt(L C))$.
  Bei starker Dämpfung liegt das Amplitudenmaximum etwas unterhalb von $f_0$ – die Kurve wird
  flacher und breiter, im Grenzfall verschwindet das ausgeprägte Maximum ganz (Kriechfall).
]

#prüfung[
  Resonanz ist ein beliebtes Prüfungsthema im Kontext *elektromagnetischer Schwingkreis*:
  $f_0 = 1\/(2 pi sqrt(L C))$ (thomsonsche Schwingungsgleichung). Die Begründung „Resonanz bei
  $f_E = f_0$, weil dann Energieaufnahme und Energieabgabe phasengleich erfolgen“ genügt meist
  nicht – erwartet wird die Aussage, dass die Amplitude maximal wird, weil die erzwungene
  Schwingung mit der Erregung in Phase schwingt.
]

== Energie im Feder-Masse-Pendel

Bei vernachlässigter Reibung ist die Gesamtenergie konstant:

$ E_"ges" = E_"kin" + E_"pot" = 1/2 m v^2 + 1/2 D s^2 = 1/2 D A^2 $

Im Nulldurchgang ist die Energie vollständig kinetisch, in den Umkehrpunkten vollständig
potenziell. Diese Energiebetrachtung ist der einfachste Weg zu Geschwindigkeitsaussagen.

#herleitung[*Periodendauer des Feder-Masse-Pendels*]
  Ausgangspunkt ist das zweite Newtonsche Gesetz mit der rücktreibenden Kraft:

  $ m a(t) = -D s(t) quad => quad m s''(t) = -D s(t) quad => quad s''(t) = -D/m s(t) $

  Gesucht ist eine Funktion, deren zweite Ableitung das Negative der Funktion selbst ist. Für
  $sin$ und $cos$ gilt $(sin)' = cos$ und $(cos)' = -sin$, also $(sin)'' = -sin$. Mit dem Ansatz
  $s(t) = A sin(b t)$ folgt

  $ s''(t) = -b^2 A sin(b t) = -b^2 s(t) $

  Koeffizientenvergleich mit der Bewegungsgleichung liefert $b^2 = D\/m$, also $b = sqrt(D\/m)$.
  Wegen $omega = 2 pi\/T = b$ ergibt sich

  $ T = 2 pi sqrt(m/D) $

  *Gültigkeit:* lineare Rückstellkraft (hookesches Gesetz), keine Dämpfung, massefederlose Feder.
  *Deutung:* Größere Masse schwingt langsamer ($T tilde sqrt(m)$), steifere Feder schneller
  ($T tilde 1\/sqrt(D)$).

= Von der Schwingung zur Welle

== Entstehung und Wellenarten

Ein Oszillator an einem Ende eines Seils gibt seine Bewegung an das nächste Seilstück weiter. Das
nächste Stück beginnt *später* zu schwingen, nämlich genau dann, wenn die Störung es erreicht. Die
Verzögerungszeit ist $t_1 = x\/c$, wenn $c$ die Ausbreitungsgeschwindigkeit ist. Damit gilt für den
Ort $x$:

$ s_x (t) = s_0 (t - x/c) = A sin(omega (t - x/c)) $

#definition[
  *Transversalwelle:* Schwingungsrichtung senkrecht zur Ausbreitungsrichtung (Seilwelle,
  Licht als elektromagnetische Welle). Nur Transversalwellen sind polarisierbar.
  *Longitudinalwelle:* Schwingungsrichtung parallel zur Ausbreitungsrichtung (Schall in Luft,
  Ultraschall in Wasser).
]

#figure(
  image("../fig/reflexion_brechung.svg", width: 62%),
  caption: [Reflexion und Brechung an einer Grenzfläche. Beim Übergang in ein optisch dichteres Medium ($n_2 > n_1$) wird der Strahl zum Lot hin gebrochen: $sin(alpha)\/sin(beta) = n_2\/n_1$.],
)

Beim Übergang zwischen zwei Medien ändert sich die Ausbreitungsgeschwindigkeit, nicht die
Frequenz. Weil $c = lambda f$ gilt, ändert sich mit $c$ auch die Wellenlänge:

$ lambda_1 f = c_1, quad lambda_2 f = c_2 quad => quad lambda_2 = lambda_1 dot c_2/c_1 $

Diese Tatsache ist der Kern der *Brechung*: Wellenfronten werden „eingeknickt“, weil ein Teil der
Front im langsameren Medium zurückbleibt. Das Verhältnis $n = c_0\/c_"Medium"$ heißt
Brechungsindex.

== Die Wellengleichung

Setzt man $omega = 2 pi\/T$ und $c = lambda\/T$ in $s_x(t)$ ein, erhält man die Standardform:

$ s(x,t) = A sin(2 pi (t/T - x/lambda)) = A sin(omega t - k x) quad "mit" quad k = (2 pi)/lambda $

$k$ heißt *Wellenzahl*. Das Argument der Sinusfunktion ist die *Phase*
$phi(x,t) = omega t - k x$. Orte gleicher Phase bilden die Wellenfronten; sie wandern mit

$ c = (Delta x)/(Delta t) = lambda/T = lambda f $

#figure(
  image("../fig/doppelspalt_geometrie.svg", width: 88%),
  caption: [Zur Geometrie am Doppelspalt: Spaltmittenabstand $g$, Schirmabstand $e$, Ort des Maximums $a_n$, Beugungswinkel $alpha$. Aus $sin alpha = Delta s \/ g$ folgt die Interferenzbedingung.],
)

#achtung[
  Verwechseln Sie nicht *Wellenlänge* $lambda$ (Ort) mit *Periodendauer* $T$ (Zeit) und nicht die
  *Ausbreitungsgeschwindigkeit* $c$ mit der *Schnellen* $v_"Osz"$ eines Seilpunkts. Für einen
  harmonisch schwingenden Punkt gilt $v_"max" = omega A$ – das ist *nicht* die Wellengeschwindigkeit.
]

= Überlagerung und Interferenz

== Superpositionsprinzip und Gangunterschied

Treffen zwei Wellen am selben Ort zusammen, addieren sich die Auslenkungen:
$s_"ges" = s_1 + s_2$. Entscheidend ist der *Gangunterschied* $Delta s$ – der Wegunterschied, den
die beiden Wellen von der Quelle bis zum Beobachtungspunkt zurücklegen – beziehungsweise die
daraus folgende Phasendifferenz

$ Delta phi = 2 pi (Delta s)/lambda $

#definition[
  *Konstruktive Interferenz* (Verstärkung): $Delta s = n lambda$, $n in NN_0$; die Wellen sind
  gleichphasig, die Amplituden addieren sich: $A_"ges" = A_1 + A_2$.
  *Destruktive Interferenz* (Auslöschung): $Delta s = (2n+1) lambda\/2$; die Wellen sind
  gegenphasig: $A_"ges" = |A_1 - A_2|$, bei gleichen Amplituden null.
]

#merksatz[
  „Gleicher Weg = hell, halber Wellenlänge Unterschied = dunkel.“ Diese Kurzform gilt nur für
  gleiche Amplituden und kohärente Quellen.
]

== Kohärenz

Interferenz ist nur *stabil beobachtbar*, wenn die beiden Wellen *kohärent* sind: Sie müssen eine
zeitlich konstante Phasenbeziehung haben. Bei zwei Glühbirnen schwankt die Phase millionenfach pro
Sekunde – das Muster mittelt sich weg. Deshalb arbeitet man mit *einem* Laser, den man hinter dem
Spalt aufteilt, oder mit einer Punktlichtquelle und einem Spalt davor.

#definition[
  *Kohärenz* bedeutet: feste Phasenbeziehung zwischen zwei Wellen über die Beobachtungszeit.
  *Kohärenzlänge* ist die Strecke, über die diese Phasenbeziehung erhalten bleibt.
]

== Zeigermodell der Interferenz

Am Beobachtungspunkt setzt man die beiden Zeiger mit ihrer Phasendifferenz aneinander. Die
resultierende Zeigerlänge $A_"res"$ ergibt die Intensität:

$ A_"res"^2 = A_1^2 + A_2^2 + 2 A_1 A_2 cos(Delta phi) $

Für $A_1 = A_2 = A_0$ folgt $A_"res"^2 = 2 A_0^2 (1 + cos Delta phi) = 4 A_0^2 cos^2(Delta phi\/2)$.
Damit schwankt die Intensität zwischen $0$ und $4 A_0^2$. Diese Formel ist die Grundlage aller
Intensitätsverteilungen in diesem Skript.

= Stehende Wellen

Läuft eine Welle gegen ein festes Ende, so überlagert sich die einlaufende mit der reflektierten
Welle. Bei gleicher Amplitude entsteht eine *stehende Welle*: Sie wandert nicht, sondern hat
orts feste *Knoten* (Auslenkung immer null) und *Bäuche* (maximale Auslenkung).

#figure(
  image("../fig/stehende_welle.svg", width: 88%),
  caption: [Stehende Welle zu drei Zeitpunkten. Die Knoten liegen fest, die Bäuche schwingen. Der Abstand benachbarter Knoten ist $lambda\/2$.],
)

$ s(x,t) = 2 A sin(k x) cos(omega t) $

Der Ortsanteil $sin(k x)$ bestimmt die Lage der Knoten: Knoten bei $k x = n pi$, also
$x = n lambda\/2$. Daraus folgt die zentrale Messvorschrift:

$ lambda = 2 dot (x_(n+1) - x_n) quad "bzw." quad lambda = 2 dot Delta x $

#prüfung[
  Stehende Wellen sind *die* Standardmethode zur Messung von Schallwellenlängen (Ultraschall,
  Kundtsches Rohr) und von Saitenwellen. Die Auswertung „Abstand zweier benachbarter Knoten
  $= lambda\/2$“ ist fast immer einen Punkt wert. Achtung: manche Aufgaben geben den Abstand
  *zweier benachbarter Bäuche* an – ebenfalls $lambda\/2$.
]

= Beugung und Interferenz am Spalt

== Doppelspalt

Zwei sehr schmale Spalte im Abstand $g$ werden von *einer* kohärenten Welle beleuchtet. Am
Beobachtungspunkt unter dem Winkel $alpha$ ist der Gangunterschied näherungsweise

$ Delta s = g sin(alpha) $

weil die Strahlen praktisch parallel verlaufen (Fernfeld, $e >> g$). Mit der
Interferenzbedingung $Delta s = n lambda$ folgt die *Doppelspaltgleichung*:

$ n lambda = g sin(alpha) $

Der Ort auf dem Schirm im Abstand $e$ ist $a_n = e tan(alpha)$, also $alpha = arctan(a_n\/e)$.
Damit lautet die praxisgerechte Form, wie sie auch auf der Schulwebsite verwendet wird:

$ n lambda = g dot sin(arctan(a_n/e)) $

#figure(
  image("../fig/doppelspalt_intensitaet.svg", width: 90%),
  caption: [Berechnete Intensitätsverteilung hinter einem Doppelspalt ($lambda = 633$ nm, $g = 0","30$ mm, $e = 2","0$ m). Der Streifenabstand ist $Delta a = lambda e \/ g approx 4","2$ mm.],
)

*Kleinwinkel-Näherung.* Für $a_n << e$ gilt $sin(alpha) approx tan(alpha) approx alpha$, und es
folgt der bekannte Streifenabstand

$ Delta a = (lambda e)/g quad <=> quad lambda = (g dot Delta a)/e $

Diese Näherung ist bequem, aber nur zulässig, wenn $a_n\/e$ klein gegen 1 ist (etwa $< 0","1$).
Im Abitur wird erwartet, dass Sie die Näherung *benennen* und ihre Zulässigkeit prüfen.

#herleitung[*Interferenzbedingung am Doppelspalt*]
  1. Die beiden Spalte wirken als *kohärente* Punktquellen, weil sie von derselben Wellenfront
     getroffen werden.
  2. Für $e >> g$ sind die Strahlen zu einem weit entfernten Punkt nahezu parallel; der
     Gangunterschied entsteht allein durch das „Vorspringen“ eines Spalts um $g sin alpha$.
  3. Aus dem rechtwinkligen Dreieck mit Hypotenuse $g$ und Gegenkathete $Delta s$ folgt
     $sin alpha = Delta s \/ g$, also $Delta s = g sin alpha$.
  4. Konstruktive Interferenz verlangt $Delta s = n lambda$; Einsetzen ergibt
     $n lambda = g sin alpha$.
  5. Mit $tan alpha = a_n\/e$ und $sin alpha = sin(arctan(a_n\/e))$ folgt die auswertbare Form.
  #linebreak()
  *Gültigkeit:* kohärente Beleuchtung, $e >> g$, Spaltbreiten klein gegen $g$ (sonst überlagert
  sich die Beugungsfigur des Einzelspalts).

== Gitter

Ein Gitter ist ein Doppelspalt mit vielen Spalten im Abstand $g$ (Gitterkonstante). Die
Interferenzbedingung bleibt formal dieselbe, $n lambda = g sin(alpha)$, aber die Maxima werden
*deutlich schärfer*, weil sich schon bei kleiner Winkelabweichung viele Teilwellen gegenseitig
auslöschen. Deshalb sind Gitter die Standardmethode zur *Wellenlängenmessung* und zur
*Spektralzerlegung*: Bei polychromatischem Licht erscheint jede Ordnung als Spektrum, wobei rot
weiter außen liegt als blau.

$ lambda = g dot sin(alpha) quad "(1. Ordnung, " n = 1 ")" $

#merksatz[
  Doppelspalt: wenige, breite Streifen – gut für qualitative Aussagen.
  Gitter: viele, sehr scharfe Linien – gut für quantitative Messungen.
  Der Übergang ist ein fließender Übergang in der Spaltzahl, nicht in der Physik.
]

== Einzelspalt

Auch ein einzelner Spalt erzeugt ein Muster – nicht durch Interferenz zweier Spalte, sondern
durch Interferenz der vielen Teilwellen *innerhalb* der Spaltbreite $b$. Man zerlegt die
Spaltöffnung gedanklich in viele Elementarstrahler. Paarweise Auslöschung ergibt *Minima* bei

$ b sin(alpha_n) = n lambda quad (n = 1, 2, 3, ...) $

#figure(
  image("../fig/einzelspalt_doppelspalt.svg", width: 92%),
  caption: [Vergleich von Einzelspalt- und Doppelspaltmuster. Beim Doppelspalt moduliert die breite Einzelspalt-Beugungshülle (gestrichelt) die feinen Interferenzstreifen.],
)

Wichtig ist die *Umkehrung* gegenüber dem Doppelspalt: Beim Einzelspalt markiert die Bedingung
$b sin alpha = n lambda$ die *dunklen* Stellen, beim Doppelspalt die *hellen*. Das zentrale Maximum
des Einzelspalts ist doppelt so breit wie die Nebenmaxima und liegt zwischen den Minima bei
$plus.minus lambda\/b$:

$ "Breite des Zentralmaximums" approx 2 (lambda e)/b $

Damit gilt die qualitative Regel: *Schmaler Spalt → breite Beugungsfigur*; *breiter Spalt → enge
Figur*. Das ist die räumliche Fassung der Unbestimmtheitsrelation (Skript 4).

== Bragg-Reflexion

An periodischen Strukturen (Kristallgitter, CD-Oberfläche) wird eine Welle an parallelen
Netzebenen im Abstand $d$ reflektiert. Der zusätzliche Weg des Strahls, der eine Ebene tiefer
reflektiert wird, beträgt $2 d sin alpha$ (Hin- und Rückweg). Konstruktive Interferenz verlangt

$ n lambda = 2 d sin(alpha) quad "(Bragg-Bedingung)" $

#figure(
  image("../fig/bragg.svg", width: 58%),
  caption: [Bragg-Reflexion: Der untere Strahl legt gegenüber dem oberen den Zusatzweg $2 d sin alpha$ zurück.],
)

#achtung[
  Der Faktor 2 in der Bragg-Bedingung ist der häufigste Fehler. Merken Sie sich die Herkunft:
  Der Strahl läuft *zweimal* durch die Schichtdicke (hin und zurück) – daher $2 d sin alpha$, nicht
  $d sin alpha$.
]

= Elektromagnetische Wellen

Licht ist eine elektromagnetische Welle: Ein schwingendes elektrisches Feld erzeugt ein
magnetisches Feld und umgekehrt; beide stehen senkrecht aufeinander und senkrecht zur
Ausbreitungsrichtung. Die Ausbreitungsgeschwindigkeit im Vakuum folgt allein aus zwei
Naturkonstanten:

$ c_0 = 1/sqrt(mu_0 epsilon_0) approx 2","998 dot 10^8 "m/s" $

*Polarisation.* Weil die elektrische Feldstärke transversal schwingt, lässt sich Licht polarisieren.
Ein idealer Polarisator lässt nur die Komponente $E_0 cos alpha$ durch; die Intensität folgt dem
*Gesetz von Malus*:

$ I(alpha) = I_0 cos^2(alpha) $

#prüfung[
  Das Malus-Gesetz ist ein typisches Beispiel für „Quadrat der Amplitude = Intensität“. Bei zwei
  gekreuzten Polarisatoren ($90 degree$) ist $I = 0$; ein dritter Polarisator dazwischen lässt
  wieder Licht durch – ein beliebter Konzepttest.
]

= Experimente

== Experiment: Periodendauer eines Feder-Masse-Pendels

#experiment[
  *Versuchsaufbau.* Feder (Konstante $D$), daran eine Masse $m$; die Masse wird um $s_0$ nach
  unten gezogen und losgelassen. Ein Kraftsensor bzw. eine Videoanalyse registriert $s(t)$.
  *Durchführung.* $m$ variieren (Feder konstant), danach $D$ variieren (Masse konstant);
  jeweils 10 Perioden messen und durch 10 teilen.
  *Beobachtung.* $s(t)$ ist sinusförmig; $T$ wächst mit $sqrt(m)$ und sinkt mit $sqrt(D)$.
  *Erklärung.* Lineare Rückstellkraft → harmonische Schwingung; $T = 2 pi sqrt(m\/D)$.
  *Bedeutung.* Bestätigt das lineare Kraftgesetz und liefert eine Methode zur Bestimmung von $D$
  bzw. $m$. *Grenzen:* Bei großer Amplitude wird die Feder nichtlinear; die Masse der Feder und
  die Dämpfung verfälschen das Ergebnis.
]

== Experiment: Wellenlänge von Ultraschall mit stehenden Wellen

#experiment[
  *Aufbau.* Ultraschallsender ($f$ bekannt, z. B. $40$ kHz), Reflektor (Metallplatte) auf einer
  Schiene verschiebbar, Empfänger oder Staubfiguren im Rohr.
  *Durchführung.* Reflektor verschieben, bis die Empfangsamplitude maximal ist; Positionen
  notieren.
  *Beobachtung.* Die Amplitude schwankt periodisch mit dem Ort; benachbarte Maxima liegen
  $Delta x = lambda\/2$ auseinander.
  *Erklärung.* Überlagerung von einlaufender und reflektierter Welle zur stehenden Welle; Bäuche
  im Abstand $lambda\/2$.
  *Bedeutung.* Einfachste Präzisionsmessung einer Schallwellenlänge; mit $c = lambda f$ folgt die
  Schallgeschwindigkeit.
]

== Experiment: Wellenlänge von Laserlicht mit Doppelspalt und Gitter

#experiment[
  *Aufbau.* Laser ($lambda$ unbekannt), Doppelspalt bzw. Gitter, Schirm im Abstand $e$ (1–3 m),
  Maßband.
  *Durchführung.* Abstand $e$ messen; auf dem Schirm die Positionen $a_n$ der Maxima $n$-ter
  Ordnung (Mitte des Musters als Nullpunkt) markieren und ausmessen.
  *Beobachtung.* Symmetrische, äquidistante helle Streifen; beim Gitter zusätzlich farbige
  Spektren bei weißem Licht.
  *Erklärung.* Gangunterschied $Delta s = g sin alpha$; Verstärkung bei $n lambda$.
  *Auswertung.* $lambda = g sin(arctan(a_n\/e)) \/ n$; zweckmäßig $a_n$ über $n$ auftragen
  (Gerade durch den Ursprung), Steigung $m_a = lambda e \/ g$, also $lambda = m_a g \/ e$.
  *Bedeutung.* Bestätigt den Wellencharakter des Lichts und erlaubt $lambda$-Messungen im
  Nanometerbereich. *Grenzen:* Bei zu großem $a$ wird die Kleinwinkel-Näherung falsch; die
  Spaltbreite verbreitert die Linien.
]

== Experiment: Michelson-Interferometer

#experiment[
  *Aufbau.* Ein Strahlteiler teilt den Laserstrahl in zwei Arme; jeder Arm endet an einem
  Spiegel, die Strahlen werden wieder vereinigt und auf einen Schirm geführt.
  *Durchführung.* Einen Spiegel um $Delta d$ verschieben und die Zahl $N$ der durchlaufenden
  Interferenzstreifen zählen.
  *Beobachtung.* Jede Verschiebung um $lambda\/2$ lässt genau einen Streifen durchlaufen.
  *Erklärung.* Der Weg in einem Arm ändert sich um $2 Delta d$ (hin und zurück).
  *Auswertung.* $N lambda = 2 Delta d$, also $Delta d = N lambda\/2$.
  *Bedeutung.* Hochempfindliche Längenmessung (bis unter eine Wellenlänge), Nachweis des
  Brechungsindex von Gasen, historisch Michelson-Morley-Experiment.
]

== Experiment: Bragg-Reflexion an einer CD

#experiment[
  *Aufbau.* Laser senkrecht auf eine CD (Spurabstand $d$ als Reflexionsgitter), Schirm.
  *Durchführung.* Einfallswinkel $alpha$ einstellen, Beugungsordnung $n$ und Ort auf dem Schirm
  messen.
  *Beobachtung.* Geordnete Reflexe unter diskreten Winkeln; farbige Aufspaltung bei weißem Licht.
  *Erklärung.* Bragg-Bedingung $n lambda = 2 d sin alpha$.
  *Auswertung.* $d = n lambda \/ (2 sin alpha)$; typische Werte $d approx 1","6$ µm (CD),
  $0","74$ µm (DVD).
  *Bedeutung.* Brücke zwischen Wellenoptik und Atomphysik: dieselbe Gleichung erklärt später die
  Elektronenbeugung am Graphit (Skript 3).
]

= Herleitungen im Zusammenhang

#herleitung[*Zusammenhang $c = lambda f$*]
  Eine Welle bewegt sich in der Zeit $T$ (eine Periode) um genau eine Wellenlänge $lambda$ weiter.
  Also ist die Geschwindigkeit $c = "Weg"\/"Zeit" = lambda\/T$. Mit $f = 1\/T$ folgt
  $c = lambda f$. Diese Herleitung überzeugt nur, wenn man begründet, dass „eine Periode“ genau
  „eine Wellenlänge“ entspricht: Beide beschreiben denselben Zyklus, einmal in der Zeit, einmal
  im Raum.

#herleitung[*Minima am Einzelspalt (Zeigerargument)*]
  Man teilt die Spaltbreite $b$ in zwei Hälften. Für einen Beobachtungswinkel $alpha$ hat der
  Strahl vom oberen Rand der oberen Hälfte gegenüber dem entsprechenden Strahl der unteren Hälfte
  den Gangunterschied $(b\/2) sin alpha$. Ist dieser gleich $lambda\/2$, so löscht jedes Strahlenpaar
  seinen Partner aus – das gesamte Feld verschwindet. Also
  $(b\/2) sin alpha = lambda\/2 => b sin alpha = lambda$. Für das $n$-te Minimum muss man den Spalt
  in $2n$ Streifen teilen; daraus folgt $b sin alpha_n = n lambda$.

#herleitung[*Bragg-Bedingung*]
  Zwei parallele Netzebenen im Abstand $d$; der Strahl fällt unter dem Glanzwinkel $alpha$ ein. Der
  untere Strahl legt vor und nach der Reflexion je ein Stück $d sin alpha$ mehr zurück als der
  obere, insgesamt $2 d sin alpha$. Konstruktive Interferenz verlangt, dass dieser Zusatzweg ein
  ganzzahliges Vielfaches der Wellenlänge ist: $n lambda = 2 d sin alpha$.

#herleitung[*Schwebung (Ergänzung)*]
  Überlagert man zwei Schwingungen ähnlicher Frequenz $f_1 approx f_2$, so gilt mit
  $cos a + cos b = 2 cos((a-b)\/2) cos((a+b)\/2)$:
  $ s(t) = 2 A cos(2 pi (f_1 - f_2)\/2 dot t) dot cos(2 pi (f_1 + f_2)\/2 dot t) $.
  Der zweite Faktor ist die schnelle Schwingung, der erste die langsame Einhüllende. Die
  Schwebungsfrequenz ist $|f_1 - f_2|$ – Grundlage der Stimmgeräte und der
  Frequenzmessung durch Überlagerung.

= Abituraufgaben

#aufgabe(1, punkte: 12)[
  Ein Laser der Wellenlänge $lambda = 633$ nm beleuchtet einen Doppelspalt mit
  Spaltmittenabstand $g = 0","250$ mm. Auf einem $e = 2","40$ m entfernten Schirm werden die
  Positionen der Maxima gemessen: $a_1 = 6","0$ mm, $a_2 = 12","2$ mm, $a_3 = 18","3$ mm.

  #enum(
    [Berechnen Sie aus den Messwerten die Wellenlänge – einmal mit der exakten Form und einmal
     mit der Kleinwinkel-Näherung. Beurteilen Sie die Abweichung.],
    [Bestimmen Sie den Streifenabstand $Delta a$ und erläutern Sie, wie sich das Muster ändert,
     wenn der Spaltabstand $g$ verdoppelt wird.],
    [Der Doppelspalt wird durch ein Gitter mit $500$ Spalten pro Millimeter ersetzt. Berechnen
     Sie, wie viele Maxima höchstens auf dem Schirm auftreten können.],
  )
]

#lösung[
  *Zu 1.* Exakt: $lambda = g sin(arctan(a_n\/e)) \/ n$. Mit $a_1\/e = 6","0 dot 10^(-3)\/2","40 = 2","50 dot 10^(-3)$
  ist $arctan = 0","143^@$ und $sin = 2","500 dot 10^(-3)$, also
  $lambda = 0","250 dot 10^(-3) "m" dot 2","500 dot 10^(-3) = 6","25 dot 10^(-7) "m" approx 625$ nm.
  Näherung: $lambda approx g a_n\/(n e) = 0","250 dot 10^(-3) dot 6","0 dot 10^(-3)\/(2","40) = 6","25 dot 10^(-7)$ m.
  Für $n = 3$: $a_3\/e = 7","6 dot 10^(-3)$, $sin(arctan) = 7","6 dot 10^(-3)$;
  $lambda approx 634$ nm. Die Abweichung zwischen Näherung und exakter Rechnung liegt hier unter
  $0","1 %$, weil $a\/e < 0","01$ ist – die Näherung ist zulässig. Verglichen mit dem
  Literaturwert $633$ nm beträgt die Abweichung rund $0","3 %$ (Messunsicherheit des Abstands).

  *Zu 2.* $Delta a = a_2 - a_1 = 6","2$ mm (bzw. $6","1$ mm); mittlerer Wert $Delta a approx 6","15$ mm.
  Aus $Delta a = lambda e\/g$ folgt: Verdoppelt man $g$, so halbiert sich der Streifenabstand auf
  etwa $3","1$ mm. Begründung: Der Gangunterschied wächst bei gleichem Winkel doppelt so schnell,
  die Bedingung $Delta s = n lambda$ ist schon bei halbem Winkel erfüllt.

  *Zu 3.* Gitterkonstante $g = 1\/(500 "mm"^(-1)) = 2","0 dot 10^(-6)$ m. Maximal möglich ist
  $sin alpha = 1$, also $n_max = g\/lambda = 2","0 dot 10^(-6)\/6","33 dot 10^(-7) = 3","16$.
  Es sind also $n = 0, plus.minus 1, plus.minus 2, plus.minus 3$ beobachtbar, das sind $7$ Maxima
  (die Ordnung $n = 3$ liegt bei $sin alpha = 0","95$, also noch knapp auf dem Schirm).
]

#aufgabe(2, punkte: 14)[
  Zur Messung der Schallgeschwindigkeit in Luft wird ein Ultraschallsender ($f = 40","0$ kHz) auf
  eine reflektierende Platte gerichtet. Ein Mikrofon zwischen Sender und Platte zeigt bei
  Verschieben der Platte periodisch maximale Amplitude. Zwischen zwei benachbarten Maxima liegt
  eine Verschiebung von $Delta x = 4","3$ mm.

  #enum(
    [Erklären Sie das Zustandekommen der Maxima mit einer Skizze der beteiligten Wellen.],
    [Berechnen Sie Wellenlänge und Schallgeschwindigkeit.],
    [Die Messung wird bei $60 degree$ C wiederholt. Erläutern Sie, ob sich $lambda$ oder $f$
     ändert, und begründen Sie Ihre Aussage mit einem Teilchenmodell.],
  )
]

#lösung[
  *Zu 1.* Die einlaufende und die an der Platte reflektierte Welle überlagern sich zur stehenden
  Welle. Am Mikrofon entsteht ein Maximum, wenn dort ein *Bauch* liegt (konstruktive Interferenz,
  $Delta s = n lambda$). Verschiebt man die Platte, wandert das Knoten-Bauch-Muster; benachbarte
  Bäuche haben den Abstand $lambda\/2$.

  *Zu 2.* Aus $Delta x = lambda\/2$ folgt $lambda = 2 dot 4","3 "mm" = 8","6$ mm. Dann
  $c = lambda f = 8","6 dot 10^(-3) "m" dot 40","0 dot 10^3 "Hz" = 344$ m/s. Das ist ein
  plausibler Wert für Luft bei etwa $20 degree$ C.

  *Zu 3.* Es ändert sich die *Wellenlänge*, nicht die Frequenz. Die Frequenz ist durch den
  Sender vorgegeben (40 000 Schwingungen pro Sekunde). Bei höherer Temperatur bewegen sich die
  Luftmoleküle schneller, die Störung wird schneller weitergegeben: $c$ wächst, und mit
  $lambda = c\/f$ wächst auch $lambda$. Der Abstand benachbarter Maxima wird größer.
]

#aufgabe(3, punkte: 10)[
  Ein Gitter mit $g = 2","00$ µm wird mit Licht einer Natriumdampflampe beleuchtet. In der ersten
  Ordnung erscheinen zwei Linien unter $alpha_1 = 9","2 degree$ und $alpha_2 = 9","7 degree$.
  #enum(
    [Berechnen Sie beide Wellenlängen und ordnen Sie sie dem sichtbaren Spektrum zu.],
    [Begründen Sie, warum in der zweiten Ordnung die Linien weiter auseinanderliegen, und prüfen
     Sie, ob die zweite Ordnung noch beobachtbar ist.],
  )
]

#lösung[
  *Zu 1.* $lambda = g sin alpha$: $lambda_1 = 2","00 dot 10^(-6) dot sin(9","2^@) = 3","20 dot 10^(-7)$ m
  $approx 320$ nm (ultraviolett, hier als Rechenbeispiel), $lambda_2 = 2","00 dot 10^(-6) dot sin(9","7^@)
  = 3","37 dot 10^(-7)$ m $approx 337$ nm. Für die bekannte Natrium-Doppellinie bei 589,0 nm und
  589,6 nm müsste $alpha approx 17^@$ sein – die Zahlen zeigen, dass die Winkelangaben die
  Wellenlänge festlegen und man die Plausibilität prüfen muss.

  *Zu 2.* Aus $n lambda = g sin alpha$ folgt $sin alpha = n lambda\/g$; der Winkelunterschied
  wächst mit $n$, weil $arcsin$ für größere Argumente steiler verläuft. Für $n = 2$ wäre
  $sin alpha = 2 dot 0","160 = 0","32$ bzw. $0","337$ – beide Ordnungen sind beobachtbar
  ($sin alpha < 1$). Erst ab $n = 3$ wird $sin alpha > 0","96$; dann ist die Ordnung praktisch
  nicht mehr nutzbar.
]

#achtung[
  In Aufgabe 3 wurde bewusst mit unrealistischen Wellenlängen gerechnet. Prüfen Sie in Klausuren
  immer, ob Ihr Ergebnis im erwarteten Bereich liegt (sichtbares Licht: 380–780 nm). Eine
  „plausible“ Kontrolle kostet wenig Zeit und rettet Punkte.
]

= Typische Fehler

#achtung[
  *1. Knoten und Bauch verwechselt.* Knoten: Auslenkung immer null; Bauch: maximale Auslenkung.
  Benachbarte Knoten (und benachbarte Bäuche) liegen $lambda\/2$ auseinander, nicht $lambda$.

  *2. Faktor 2 bei Bragg vergessen.* $n lambda = 2 d sin alpha$.

  *3. Minima und Maxima vertauscht.* Beim Doppelspalt markiert $n lambda = g sin alpha$ die
  *Maxima*, beim Einzelspalt $b sin alpha = n lambda$ die *Minima*.

  *4. Winkel und Ort verwechselt.* $alpha$ ist der Winkel am Spalt, $a_n$ der Abstand auf dem
  Schirm. Ohne $e$ ist keine Umrechnung möglich.

  *5. Kleinwinkel-Näherung ungeprüft verwendet.* Sie gilt nur für $a << e$; bei großen Winkeln
  muss $sin(arctan(a\/e))$ gerechnet werden.

  *6. Frequenz und Wellenlänge beim Medienwechsel.* Beim Übergang in ein anderes Medium bleibt
  $f$ konstant, $lambda$ ändert sich mit $c$.

  *7. Einheiten.* mm, µm und nm gemischt: Rechnen Sie *vor* dem Einsetzen konsequent in SI
  (m, s, kg).
]

= Wiederholung

== Wichtigste Erkenntnisse

- Eine Welle ist eine räumlich ausbreitende Schwingung; die Quelle schwingt, das Medium gibt die
  Störung mit Verzögerung weiter.
- Die Wellengleichung entsteht aus $s(t - x\/c)$; daraus folgen $c = lambda f$ und die
  Phasenbeschreibung $omega t - k x$.
- Interferenz ist eine Phänomenologie der *Phase*: $Delta s = n lambda$ verstärkt,
  $Delta s = (2n+1) lambda\/2$ löscht aus.
- Beugung ist Interferenz mit vielen Elementarstrahlern; sie macht aus einem Spalt eine
  Intensitätsverteilung.
- Kohärenz ist die Voraussetzung für stabile Interferenz.

== Zentrale Formeln

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$y(t) = A sin(omega t + phi_0)$], [harmonische Schwingung], [lineare Rückstellkraft],
  [$T = 2 pi sqrt(m\/D)$], [Periodendauer Federpendel], [hookesch, ungedämpft],
  [$c = lambda f$], [Wellengeschwindigkeit], [alle harmonischen Wellen],
  [$s(x,t) = A sin(omega t - k x)$], [Wellengleichung], [$k = 2pi\/lambda$],
  [$Delta s = n lambda$], [konstruktive Interferenz], [kohärente Quellen],
  [$Delta s = (2n+1) lambda\/2$], [destruktive Interferenz], [gleiche Amplituden],
  [$n lambda = g sin(alpha)$], [Doppelspalt/Gitter], [$e >> g$],
  [$b sin(alpha_n) = n lambda$], [Einzelspalt-Minima], [ebene Welle],
  [$n lambda = 2 d sin(alpha)$], [Bragg], [Netzebenenabstand $d$],
  [$I(alpha) = I_0 cos^2 alpha$], [Malus], [idealer Polarisator],
)

== Wichtigste Experimente

#table(
  columns: (auto, 1fr, 1fr),
  [Experiment], [Messgröße], [Auswertung],
  [Federpendel], [$T$, $m$, $D$], [$T = 2pi sqrt(m\/D)$],
  [Stehende Ultraschallwelle], [Knotenabstand], [$lambda = 2 Delta x$, $c = lambda f$],
  [Doppelspalt/Gitter], [$a_n$, $e$, $g$], [$lambda = g sin(arctan(a_n\/e))\/n$],
  [Michelson], [Streifenzahl $N$, $Delta d$], [$lambda = 2 Delta d\/N$],
  [Bragg (CD)], [$alpha$, $n$], [$d = n lambda\/(2 sin alpha)$],
)

== Fachbegriffe

Amplitude · Periodendauer · Frequenz · Kreisfrequenz · Phase · Wellenlänge · Wellenzahl ·
Ausbreitungsgeschwindigkeit · Transversalwelle · Longitudinalwelle · Polarisation · Kohärenz ·
Gangunterschied · konstruktive/destruktive Interferenz · Superposition · stehende Welle · Knoten ·
Bauch · Beugung · Gitterkonstante · Bragg-Bedingung · Brechungsindex

== Typische Prüfungsfragen

- „Leiten Sie die Gleichung für die Interferenz am Doppelspalt her.“
- „Erklären Sie den Unterschied zwischen Einzelspalt- und Doppelspaltmuster.“
- „Berechnen Sie die Wellenlänge aus den Messwerten und beurteilen Sie die Messunsicherheit.“
- „Erläutern Sie, warum das Interferenzmuster bei weißem Licht farbig ist.“
- „Begründen Sie, warum das Gitter schärfere Maxima liefert als der Doppelspalt.“

== Auswendig können

- $c = lambda f$, $T = 1\/f$, $omega = 2 pi f$, $k = 2 pi\/lambda$
- $n lambda = g sin alpha$ (Doppelspalt), $b sin alpha = n lambda$ (Einzelspalt-Minima)
- $n lambda = 2 d sin alpha$ (Bragg), $Delta a = lambda e\/g$
- $lambda = 2 Delta x$ (stehende Welle), $Delta d = N lambda\/2$ (Michelson)
- $I = I_0 cos^2 alpha$ (Malus)

== Wirklich verstehen

- Warum die Verzögerung $x\/c$ die Wellengleichung erzeugt
- Warum die Intensität das Quadrat der Amplitude ist und Phasen deshalb so wirksam sind
- Warum Kohärenz nötig ist und wie man sie technisch herstellt
- Warum beim Einzelspalt die Minima-Bedingung, beim Doppelspalt die Maxima-Bedingung steht
- Warum beim Gitter die Linien schärfer werden (viele Teilwellen)

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien des Gymnasiums Westerstede: https://www.physik.gym-wst.de,
    Jahrgang 12, „Schwingungen und Wellen“ (Lektionen 01–15) sowie die dort veröffentlichten
    Kerncurriculum-Auszüge (KC Physik, Niedersachsen 2022).
  - Kerncurriculum für das Gymnasium – gymnasiale Oberstufe, Physik, Niedersachsen 2022
    (https://cuvo.nibis.de/).
  - Aufgabenpool der Länder, Physik 2025/2026 (IQB): Aufgaben „Eigenschaften von Licht“,
    „Interferenzen bei Bluetooth-Signalen“, „DECT-Telefon“, „Blitzdetektor“ –
    https://www.iqb.hu-berlin.de/de/schule/aufgaben/sekii/abiturprüfungsaufgaben-physik/.
  - Alle Grafiken: eigene Darstellungen mit Matplotlib nach den genannten Gleichungen.
]
