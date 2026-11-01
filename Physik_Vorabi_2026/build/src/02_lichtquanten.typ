#import "../template.typ": *

#show: setup.with(title: "Lichtquanten und Planck", kicker: "Skript 2 · Quantenphysik")

#cover(
  "Skript 2 · Lichtquanten",
  "Lichtquanten und Planck",
  "Schwarzkörperstrahlung, Quantenhypothese, Photoeffekt und die Bestimmung des planckschen Wirkungsquantums",
  lernziele: (
    "das Scheitern der klassischen Strahlungstheorie erklären",
    "die plancksche Quantenhypothese formulieren und deuten",
    "den äußeren Photoeffekt mit dem Photonenmodell erklären",
    "Austrittsarbeit, Grenzfrequenz und Gegenspannung berechnen",
    "h aus Messwerten bestimmen und das f-E-Diagramm interpretieren",
  ),
)

#toc-page()

= Einstieg: Warum die klassische Physik scheitert

Ende des 19. Jahrhunderts war die Physik scheinbar vollendet: Newtons Mechanik, Maxwells
Elektrodynamik und die Thermodynamik erklärten fast alles. Zwei Beobachtungen passten nicht
ins Bild – und beide betreffen das Licht.

*Beobachtung 1: Das Schwarzkörperspektrum.* Erhitzt man einen Körper, so strahlt er Wärme ab. Die
Intensität dieser Strahlung hängt von Wellenlänge und Temperatur ab. Nach der klassischen
Theorie (Rayleigh-Jeans-Gesetz) müsste die Intensität für kleine Wellenlängen immer weiter
wachsen:

$ u(lambda) = 8 pi k_B T dot 1/lambda^4 $

Das hieße: Jeder warme Körper sendet unendlich viel Energie im ultravioletten Bereich aus. Die
Messung zeigt das Gegenteil – die Kurve hat ein Maximum und fällt zu kurzen Wellenlängen hin
steil ab. Diesen Widerspruch nannte man die *Ultraviolett-Katastrophe*.

*Beobachtung 2: Der äußere lichtelektrische Effekt.* Bestrahlt man eine Metallplatte mit Licht,
so treten Elektronen aus. Klassisch erwartet man: mehr Licht → mehr Energie → schnellere
Elektronen, und bei genügend langer Bestrahlung müsste auch langwelliges Licht Elektronen
lösen (die Energie sammelt sich ja an). Gemessen wird: Die *maximale* kinetische Energie hängt
nur von der *Frequenz* ab, nicht von der Intensität; unterhalb einer *Grenzfrequenz* passiert
gar nichts, egal wie hell das Licht ist.

#merksatz[
  Beide Beobachtungen lassen sich nur erklären, wenn man annimmt, dass Licht *nicht kontinuierlich*
  Energie aufnimmt oder abgibt, sondern in *Portionen* der Größe $E = h f$. Diese Portionen heißen
  Lichtquanten oder Photonen.
]

= Die plancksche Quantenhypothese

== Die Hypothese

Max Planck fand 1900 eine Formel, die Messkurven der Schwarzkörperstrahlung exakt beschreibt. Er
erhielt sie, indem er zwei Annahmen machte, die er selbst zunächst für einen „Akt der
Verzweiflung“ hielt:

1. Die Atome der Wand senden Energie nicht kontinuierlich, sondern in ganzzahligen Vielfachen
   eines kleinsten Betrags ab.
2. Dieser kleinste Betrag ist proportional zur Frequenz: $E_0 = h f$.

$ E = h f quad "mit" quad h = 6","626 dot 10^(-34) "J s" $

$h$ heißt *plancksches Wirkungsquantum*. Es ist eine Naturkonstante – so grundlegend wie $c$ oder
$e$.

#definition[
  *Quantenhypothese:* Die Energie eines harmonischen Oszillators der Frequenz $f$ kann nur die
  Werte $E_n = n h f$ mit $n in NN_0$ annehmen. Energie wird also in „Paketen“ der Größe $h f$
  ausgetauscht.
]

== Die plancksche Strahlungsformel

Mit dieser Annahme ergibt sich statt der divergierenden klassischen Verteilung die
*plancksche Strahlungsformel*

$ u_lambda (lambda, T) = (8 pi h c)/lambda^5 dot 1/(e^(h c \/ (k_B T lambda)) - 1) $

#figure(
  image("../fig/photoeffekt_fE.svg", width: 84%),
  caption: [Maximale kinetische Energie der Fotoelektronen über der Frequenz für drei Metalle. Alle Geraden sind parallel – die Steigung ist für jedes Metall $h$. Der Schnittpunkt mit der Frequenzachse ist die Grenzfrequenz $f_G = W_A \/ h$.],
)

Für große Wellenlängen (kleine Frequenzen) geht sie in die klassische Formel über – das ist der
Grund, warum der Widerspruch nur im ultravioletten Bereich auffiel. Für kleine Wellenlängen sorgt
der Exponentialterm im Nenner dafür, dass die Intensität gegen null geht. Die Kurve hat ein
Maximum, dessen Lage durch das *wiensche Verschiebungsgesetz* beschrieben wird:

$ lambda_max dot T = 2","898 dot 10^(-3) "m K" $

*Zahlenbeispiel:* Die Sonne hat eine Oberflächentemperatur von etwa $5800$ K. Dann ist
$lambda_max = 2","898 dot 10^(-3)\/5800 "m" approx 500$ nm – die Sonne strahlt also maximal im
grünen Bereich, was gut zur Empfindlichkeit unseres Auges passt.

== Vom Lichtquant zum Photon

Ein Lichtquant der Frequenz $f$ trägt die Energie $E = h f$. Mit $c = lambda f$ folgt

$ E = h f = h c/lambda $

Aus der Äquivalenz von Energie und Masse, $E = m c^2$, lässt sich eine „Masse“ des Lichtquants
zuordnen:

$ m_"Lq" = E/c^2 = (h f)/c^2 = h/(c lambda) $

und daraus ein Impuls:

$ p_"Lq" = m_"Lq" dot c = h/lambda $

#prüfung[
  $p = h\/lambda$ ist die *wichtigste* Formel der gesamten Quantenphysik. Sie verbindet eine
  Wellengröße ($lambda$) mit einer Teilchengröße (Impuls) und wird in Skript 3 für Elektronen
  wiederverwendet (de Broglie). Wer sie sicher beherrscht, kann fast alle Rechenaufgaben der
  Quantenphysik beginnen.
]

= Der äußere lichtelektrische Effekt

== Beobachtungen

Bestrahlt man eine Metalloberfläche (z. B. Caesium) mit Licht, so treten Elektronen aus. Präzise
Messungen (etwa mit der Gegenfeldmethode) zeigen:

- Es gibt eine *Grenzfrequenz* $f_G$: Unterhalb von $f_G$ treten keine Elektronen aus, unabhängig
  von der Intensität.
- Die maximale kinetische Energie der Elektronen wächst *linear mit der Frequenz*.
- Die maximale kinetische Energie ist *unabhängig von der Intensität*; die Intensität bestimmt nur
  die *Anzahl* der Elektronen pro Sekunde (den Fotostrom).
- Der Effekt setzt *sofort* ein (keine messbare Verzögerung), auch bei sehr schwachem Licht.

== Einsteins Deutung (1905)

Albert Einstein erklärte den Effekt mit der Lichtquantenhypothese: Ein Elektron kann *nur ein
ganzes* Lichtquant absorbieren. Dabei muss es die *Austrittsarbeit* $W_A$ aufbringen – die Energie,
die nötig ist, um das Metall zu verlassen. Was übrig bleibt, ist kinetische Energie:

$ E_"Photon" = E_"kin,max" + W_A quad => quad E_"kin,max" = h f - W_A $

$W_A$ ist materialspezifisch (Caesium etwa $2","1$ eV, Zink etwa $4","3$ eV, Kupfer etwa
$4","7$ eV).

#definition[
  *Austrittsarbeit* $W_A$: die minimale Energie, die ein Elektron benötigt, um das Metall zu
  verlassen. *Grenzfrequenz* $f_G = W_A \/ h$: die kleinste Frequenz, bei der noch Elektronen
  austreten (dann ist $E_"kin" = 0$). *Grenzwellenlänge* $lambda_G = c\/f_G = h c \/ W_A$.
]

#figure(
  image("../fig/led_hbestimmung.svg", width: 76%),
  caption: [Bestimmung von $h$ mit Leuchtdioden: Die Einsatzspannung $U_S$ ist proportional zur Frequenz. Die Steigung der Ausgleichsgeraden ist $h\/e$, also $h = e dot "Steigung"$.],
)

== Zwei Messmethoden

*Gegenfeldmethode.* Man bremst die austretenden Elektronen mit einer Gegenspannung $U_B$. Der
Fotostrom verschwindet, wenn die elektrische Energie $e U_B$ gerade die maximale kinetische
Energie erreicht:

$ e U_B = E_"kin,max" = h f - W_A $

Trägt man $U_B$ über $f$ auf, entsteht eine Gerade mit der Steigung $h\/e$ und dem
Achsenabschnitt $-W_A\/e$.

*Kondensatormethode.* Die Elektronen laden eine isolierte Platte negativ auf, bis das entstehende
Feld die Emission stoppt. Die Sättigungsspannung ist wieder $U_B$ – gleiche Auswertung, anderer
Aufbau.

#achtung[
  Die Gegenfeldmethode misst die *maximale* kinetische Energie. Die Verteilung der
  Elektronengeschwindigkeiten sorgt dafür, dass der Strom nicht sprunghaft, sondern allmählich
  auf null geht. Der Knickpunkt („Knie“) der Kurve ist die gesuchte Spannung.
]

= Weitere Quantenphänomene des Lichts

== Der Compton-Effekt

Röntgenstrahlung wird an Graphit gestreut; dabei wächst die Wellenlänge der gestreuten Strahlung
in Abhängigkeit vom Streuwinkel. Klassisch (Wellenmodell) wäre keine Wellenlängenänderung zu
erwarten. Deutung: elastischer Stoß zwischen Photon und Elektron mit Energie- und
Impulserhaltung. Es gilt

$ Delta lambda = lambda_2 - lambda_1 = h/(m_0 c) (1 - cos alpha) $

mit der *Compton-Wellenlänge* $h\/(m_0 c) = 2","43$ pm. Der Compton-Effekt ist der direkteste
Beleg dafür, dass Licht auch *Impuls* trägt und sich bei Stößen wie ein Teilchen verhält.

== Welle-Teilchen-Dualismus (erste Fassung)

Licht zeigt in verschiedenen Experimenten verschiedene „Gesichter“:

#table(
  columns: (1fr, 2fr),
  [Wellenverhalten], [Teilchenverhalten],
  [Interferenz am Doppelspalt, Beugung am Gitter, Polarisation], [Photoeffekt, Compton-Effekt, Emission und Absorption einzelner Photonen],
)

In der Schulphysik wird dieses Verhalten oft als *Welle-Teilchen-Dualismus* bezeichnet: Man wählt
je nach Experiment das passende Modell. Wichtig ist die Einsicht, dass dies eine *Modellwahl* ist
und keine Aussage darüber, „was Licht wirklich ist“. Die Quantenelektrodynamik (Skript 5)
vermeidet den Modellwechsel, indem sie für jeden möglichen Weg eine Wahrscheinlichkeitsamplitude
ansetzt.

#merksatz[
  Ein Photon ist *nicht* halb Welle und halb Teilchen. Es ist ein Quantenobjekt, dessen
  Verhalten durch Wahrscheinlichkeitsamplituden beschrieben wird. „Welle“ und „Teilchen“ sind
  Grenzfälle der Beschreibung, keine Bauteile des Photons.
]

= Experimente

== Experiment: Fotozelle mit Gegenfeld (h-Bestimmung)

#experiment[
  *Aufbau.* Vakuum-Fotozelle mit Fotokathode (Caesium) und Anode; veränderbare Gegenspannung $U_B$
  und Amperemeter; Monochromator oder Farbfilter zur Einstellung der Wellenlänge.
  *Durchführung.* Für mehrere Wellenlängen jeweils $U_B$ so lange erhöhen, bis der Fotostrom null
  wird ($"Knie"$ der Kurve). $U_B$ über $f$ auftragen.
  *Beobachtung.* Lineare Abnahme des Fotostroms mit $U_B$; die Knickpunkte liegen auf einer
  Geraden über $f$. Unterhalb von $f_G$ ist kein Strom messbar.
  *Erklärung.* $e U_B = h f - W_A$; Steigung $h\/e$, Achsenabschnitt $-W_A\/e$.
  *Bedeutung.* Erste quantitative Bestätigung der Lichtquantenhypothese und Präzisionsmethode für
  $h$. *Grenzen:* Kontaktspannungen, spektrale Breite der Filter und der „weiche“ Knick begrenzen
  die Genauigkeit auf wenige Prozent.
]

== Experiment: h-Bestimmung mit Leuchtdioden

#experiment[
  *Aufbau.* LED (bekannte Wellenlänge aus dem Datenblatt), regelbare Spannungsquelle, Strom- und
  Spannungsmessgerät, Dunkelkammer.
  *Durchführung.* Spannung langsam erhöhen und die *Einsatzspannung* $U_S$ bestimmen, bei der die
  LED gerade zu leuchten beginnt. Dies für mehrere LEDs (rot, gelb, grün, blau) wiederholen.
  *Beobachtung.* $U_S$ wächst mit abnehmender Wellenlänge, also mit wachsender Frequenz.
  *Erklärung.* Die LED wandelt elektrische Energie in Licht um: $e U_S = h f$ (jedes Elektron
  erzeugt ein Photon).
  *Auswertung.* $U_S$ über $f$ auftragen; Steigung $m = h\/e$; $h = e m$. Typisches Ergebnis:
  $h approx 6","5 dot 10^(-34)$ J s (Abweichung einige Prozent, weil $U_S$ schwer exakt zu fassen
  ist).
  *Bedeutung.* Schülerversuchs- und Abiturklassiker: einfacher Aufbau, direkte Proportionalität.
  *Grenzen:* Der Knick der Kennlinie ist unscharf; ein Teil der Energie geht als Wärme verloren.
]

== Experiment: h aus dem Röntgenbremsspektrum

#experiment[
  *Aufbau.* Röntgenröhre mit einstellbarer Beschleunigungsspannung, Drehkristall oder
  Bragg-Aufbau zur Wellenlängenanalyse.
  *Durchführung.* Bremsspektrum bei bekannter Spannung $U_B$ aufnehmen; die *kurzwellige Grenze*
  $lambda_min$ bestimmen.
  *Beobachtung.* $lambda_min$ hängt nur von $U_B$ ab: höhere Spannung → kleinere Grenzwellenlänge.
  *Erklärung.* Ein Elektron gibt seine gesamte kinetische Energie $e U_B$ an ein einziges Photon ab:
  $e U_B = h c \/ lambda_min$.
  *Auswertung.* $h = e U_B lambda_min \/ c$.
  *Bedeutung.* Unabhängige, sehr genaue Methode; verbindet Quantenhypothese und Röntgenphysik
  (Skript 7).
]

= Herleitungen

#herleitung[*Grenzfrequenz und Grenzwellenlänge*]
  Am Einsatzpunkt ist die kinetische Energie gerade null:
  $0 = h f_G - W_A => f_G = W_A/h$. Mit $lambda_G = c\/f_G$ folgt $lambda_G = h c\/W_A$.
  *Gültigkeit:* äußerer Photoeffekt an reinen Metalloberflächen.

#herleitung[*Steigung im f-E-Diagramm*]
  Aus $E_"kin,max" = h f - W_A$ folgt durch Differenzieren nach $f$:
  $dif E_"kin,max" \/ dif f = h$. Die Steigung ist also unabhängig vom Material gleich $h$; die
  Austrittsarbeit verschiebt nur die Gerade nach rechts. Genau das prüft man im Experiment, wenn
  man mehrere Kathodenmaterialien vergleicht.

#herleitung[*Impuls des Photons*]
  $E = m c^2$ und $E = h c\/lambda$ gleichsetzen ergibt $m c^2 = h c\/lambda$, also
  $m = h\/(c lambda)$. Mit $p = m c$ folgt $p = h\/lambda$. *Anmerkung:* Die Gleichsetzung
  $E = m c^2$ ist für Photonen nur als Energie-Impuls-Relation sinnvoll; exakt gilt
  $E^2 = (p c)^2 + (m_0 c^2)^2$ mit $m_0 = 0$, also $E = p c$ und damit ebenfalls $p = E\/c = h\/lambda$.

#herleitung[*Energie eines Photons aus der Wellenlänge*]
  $E = h f$, $c = lambda f$ $=> f = c\/lambda$ $=> E = h c\/lambda$. Praktische Einheit:
  $h c = 1239","8$ eV nm, also $E/[e V] = 1239","8\/(lambda\/"nm")$. Diese Kurzform spart im
  Abitur viel Zeit und ist eine zulässige Umformung. Im Unterricht wird $h c$ meist auf
  $1240$ eV nm gerundet; der Unterschied beträgt 0,02 % und ändert bei drei gültigen Ziffern
  kein Ergebnis. Wer exakt rechnet, nimmt $h$ und $c$ einzeln.

= Abituraufgaben

#aufgabe(1, punkte: 12)[
  Eine Caesium-Fotozelle ($W_A = 2","10$ eV) wird mit Licht der Wellenlänge $450$ nm bestrahlt.
  #enum(
    [Berechnen Sie die Photonenenergie, die maximale kinetische Energie und die Gegenspannung.],
    [Bestimmen Sie die Grenzwellenlänge und beurteilen Sie, ob rotes Licht ($650$ nm) den Effekt
     auslösen kann.],
    [Erläutern Sie mit dem Photonenmodell, warum die Erhöhung der Intensität die maximale
     kinetische Energie nicht verändert.],
  )
]

#lösung[
  *Zu 1.* $E_"Ph" = h c\/lambda = 1240 "eV nm"\/450 "nm" = 2","756$ eV.
  $E_"kin,max" = 2","756 - 2","10 = 0","66$ eV. Gegenspannung:
  $U_B = E_"kin,max"\/e = 0","66$ V.

  *Zu 2.* $lambda_G = h c \/ W_A = 1240\/2","10 = 590$ nm. Da $650 "nm" > 590 "nm"$, also
  $f < f_G$, kann rotes Licht keine Elektronen auslösen – unabhängig von der Intensität.

  *Zu 3.* Jedes Elektron absorbiert genau ein Photon. Die Energie eines Photons ist $h f$ und
  hängt nur von der Frequenz ab. Eine höhere Intensität bedeutet mehr Photonen pro Sekunde, also
  mehr ausgelöste Elektronen (größerer Fotostrom) – aber jedes einzelne Photon überträgt dieselbe
  Energie. Deshalb bleibt $E_"kin,max" = h f - W_A$ gleich.
]

#aufgabe(2, punkte: 14)[
  Mit vier Leuchtdioden werden folgende Einsatzspannungen gemessen:

  #table(
    columns: (1fr, 1fr, 1fr),
    [Farbe], [$lambda$ in nm], [$U_S$ in V],
    [rot], [660], [1","86],
    [gelb], [590], [2","08],
    [grün], [525], [2","32],
    [blau], [470], [2","58],
  )

  #enum(
    [Berechnen Sie zu jeder LED die Frequenz und tragen Sie $U_S$ über $f$ auf (Skizze mit
     Achsenteilung genügt).],
    [Bestimmen Sie $h$ aus der Steigung.],
    [Beurteilen Sie, ob der ermittelte Wert mit dem Literaturwert vereinbar ist, und nennen Sie
     zwei Fehlerquellen.],
  )
]

#lösung[
  *Zu 1.* $f = c\/lambda$: $4","54 dot 10^14$ Hz; $5","08 dot 10^14$ Hz; $5","71 dot 10^14$ Hz;
  $6","38 dot 10^14$ Hz. Die Punkte liegen nahezu auf einer Geraden durch den Ursprung (mit
  positivem Achsenabschnitt, der hier im Rahmen der Messunsicherheit liegt).

  *Zu 2.* Steigung aus erstem und letztem Punkt:
  $m = (2","58 - 1","86)\/((6","38 - 4","54) dot 10^14) = 0","72\/(1","84 dot 10^14)
  = 3","91 dot 10^(-15) "V s"$. Daraus
  $h = e m = 1","602 dot 10^(-19) dot 3","91 dot 10^(-15) = 6","27 dot 10^(-34)$ J s.

  *Zu 3.* Der Literaturwert ist $6","626 dot 10^(-34)$ J s; die Abweichung beträgt rund $5 %$.
  Das ist für dieses Verfahren typisch und liegt an (a) der unscharfen Einsatzspannung, (b) der
  spektralen Breite der LED (keine exakt monochromatische Strahlung), (c) Verlusten durch
  Erwärmung. Innerhalb dieser Grenzen ist der Wert vereinbar – die Hypothese $U_S tilde f$ wird
  bestätigt.
]

#aufgabe(3, punkte: 10)[
  Ein Körper der Temperatur $T$ strahlt nach dem planckschen Gesetz. #enum(
    [Berechnen Sie die Wellenlänge maximaler Intensität für $T = 300$ K und für $T = 3000$ K.],
    [Erklären Sie, warum das klassische Gesetz für kleine Wellenlängen versagt.],
  )
]

#lösung[
  *Zu 1.* $lambda_max = 2","898 dot 10^(-3)\/(300) = 9","66$ µm (Infrarot, typische
  Wärmestrahlung); für $3000$ K: $0","966$ µm $approx 966$ nm (nahes Infrarot, Beginn des
  sichtbaren Bereichs – ein glühender Metallfaden).

  *Zu 2.* Das Rayleigh-Jeans-Gesetz $u tilde 1\/lambda^4$ wächst für $lambda -> 0$ über alle
  Grenzen. Physikalisch hieße das, dass ein Körper beliebig viel Energie in kurzwellige Strahlung
  stecken könnte, obwohl nur endlich viel Energie zur Verfügung steht. Die Quantenhypothese
  verhindert das: Ein Oszillator der Frequenz $f$ kann mindestens die Energie $h f$ abgeben; für
  sehr große $f$ wird diese Mindestmenge so groß, dass die Anregung praktisch nicht mehr
  stattfindet. Der Exponentialterm in der planckschen Formel beschreibt genau diese „Einfrierung“
  hochfrequenter Moden.
]

= Typische Fehler

#achtung[
  *1. Intensität und Energie verwechselt.* Intensität = Photonenzahl pro Zeit und Fläche; Energie
  pro Photon = $h f$. Nur die Frequenz entscheidet über die kinetische Energie.

  *2. eV und J gemischt.* $1 "eV" = 1","602 dot 10^(-19)$ J. Rechnen Sie in eV, wenn die
  Austrittsarbeit in eV gegeben ist, und wechseln Sie nur für die Endrechnung in SI.

  *3. Grenzfrequenz und Grenzwellenlänge vertauscht.* $lambda_G = c\/f_G$; größere Wellenlänge
  bedeutet kleinere Frequenz, also *unterhalb* der Grenzfrequenz.

  *4. $E = h f$ mit $f$ in Hz, aber $lambda$ in nm eingesetzt.* Erst umrechnen: nm → m.

  *5. Steigung im f-E-Diagramm als $h$ bezeichnet, obwohl $U_B$ aufgetragen ist.* Bei
  $U_B$ über $f$ ist die Steigung $h\/e$; erst mit $e$ multiplizieren ergibt $h$.

  *6. „Mehr Licht, schnellere Elektronen“.* Klassische Fehlvorstellung; wird in jeder Klausur als
  Distraktor verwendet.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Energie wird in Quanten $h f$ ausgetauscht; $h = 6","626 dot 10^(-34)$ J s.
- Lichtquanten tragen Energie und Impuls: $E = h f$, $p = h\/lambda$.
- Der Photoeffekt beweist die Quantisierung der Lichtenergie: $h f = E_"kin,max" + W_A$.
- Die Steigung im $f$-$E_"kin"$-Diagramm ist $h$; die Lage der Geraden hängt von $W_A$ ab.
- Planck löste mit der Quantenhypothese die Ultraviolett-Katastrophe.

== Zentrale Formeln

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Bemerkung],
  [$E = h f = h c\/lambda$], [Photonenenergie], [$h c = 1240$ eV nm],
  [$p = h\/lambda$], [Photonenimpuls], [gilt für alle Quantenobjekte],
  [$h f = E_"kin,max" + W_A$], [Photoeffekt], [Einstein 1905],
  [$e U_B = E_"kin,max"$], [Gegenfeldmethode], [$U_B$ = Knickpunkt],
  [$f_G = W_A\/h$], [Grenzfrequenz], [$lambda_G = h c\/W_A$],
  [$e U_S = h f$], [LED-Methode], [Steigung $h\/e$],
  [$e U_B = h c\/lambda_min$], [Röntgenbremsspektrum], [kurzwellige Grenze],
  [$Delta lambda = h\/(m_0 c)(1 - cos alpha)$], [Compton], [$2","43$ pm],
  [$lambda_max T = 2","898 dot 10^(-3) "m K"$], [Wien], [Maximum der Kurve],
)

== Wichtigste Experimente

#table(
  columns: (auto, 1fr, 1fr),
  [Experiment], [Beobachtung], [Auswertung],
  [Fotozelle + Gegenfeld], [Knick bei $U_B$], [$h = e U_B lambda\/c + W_A lambda\/c$],
  [LED], [Einsatzspannung], [$h = e dot U_S\/f$],
  [Röntgenröhre], [kurzwellige Grenze], [$h = e U_B lambda_min\/c$],
  [Compton], [Wellenlängenzunahme], [$Delta lambda$ winkelabhängig],
)

== Fachbegriffe

Lichtquant · Photon · Wirkungsquantum · Quantenhypothese · Schwarzkörper · Ultraviolett-Katastrophe ·
Austrittsarbeit · Grenzfrequenz · Grenzwellenlänge · Gegenfeldmethode · Kondensatormethode ·
Fotostrom · Compton-Effekt · Welle-Teilchen-Dualismus · Wahrscheinlichkeitsamplitude

== Typische Prüfungsfragen

- „Erklären Sie den Photoeffekt mit dem Photonenmodell.“
- „Bestimmen Sie $h$ aus den Messwerten.“
- „Begründen Sie, warum es eine Grenzfrequenz gibt.“
- „Vergleichen Sie Wellen- und Teilchenmodell des Lichts am Beispiel zweier Experimente.“
- „Erläutern Sie die Bedeutung des Compton-Effekts.“

== Auswendig können

- $E = h f$, $E = h c\/lambda$, $p = h\/lambda$, $h c = 1240$ eV nm
- $h f = E_"kin,max" + W_A$, $f_G = W_A\/h$
- Steigung im $U_B$-$f$-Diagramm: $h\/e$
- $h = 6","626 dot 10^(-34)$ J s, $e = 1","602 dot 10^(-19)$ C, $c = 2","998 dot 10^8$ m/s

== Wirklich verstehen

- Warum die Intensität die Energie pro Photon nicht ändert
- Warum $h$ aus drei völlig verschiedenen Experimenten gleich herauskommt
- Warum die klassische Theorie im UV versagt
- Warum $p = h\/lambda$ der Schlüssel zur gesamten Quantenphysik ist

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik: Jahrgang 13, „Lichtquanten“ (mit Simulationen zum Photoeffekt
    und zur h-Bestimmung), „Plancksches Wirkungsquantum“; Jahrgang 13, „Physikkrise“ –
    https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022, Kompetenzbereich „Quantenobjekte“.
  - Aufgabenpool der Länder (IQB), Physik 2025/2026 (Struktur und Operatoren der Aufgaben).
  - Grafiken: eigene Darstellungen (photoeffekt_fE.svg, led_hbestimmung.svg).
]
