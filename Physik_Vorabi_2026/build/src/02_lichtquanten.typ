#import "../template.typ": *

#show: setup.with(title: "Lichtquanten und Planck", kicker: "Skript 2 · Quantenhypothese")

#cover(
  "Skript 2 · Licht als Quant",
  "Lichtquanten und Planck",
  "Plancks Quantenhypothese, Photon, äußerer Photoeffekt, Gegenfeld, Compton",
  lernziele: (
    "die Quantenhypothese von der Strahlungsformel unterscheiden",
    "Energie und Impuls eines Photons berechnen",
    "die Einstein-Gleichung aufstellen und mit der Gegenfeldmethode auswerten",
    "Grenzfrequenz und Austrittsarbeit deuten",
  ),
)

#toc-page()

= Das Versagen der klassischen Physik

Ein Hohlraumstrahler hat ein Intensitätsmaximum bei einer Wellenlänge $lambda_max$. Klassisch
(Rayleigh-Jeans) müsste die Intensität zu kleinen Wellenlängen hin unbegrenzt wachsen – die
*Ultraviolettkatastrophe*; gemessen wird dagegen ein Maximum mit steilem Abfall.

Zwei Gesetzmäßigkeiten sind experimentell gesichert:

$ lambda_max dot T = 2","898 dot 10^(-3) "m K" quad "(Wien)" $

$ M(T) = sigma T^4 quad "(Stefan-Boltzmann)" $

#merksatz[
  Planck 1900: Energie wird von Oszillatoren nur in ganzen Portionen $h f$ aufgenommen oder
  abgegeben. $h$ ist eine neue Naturkonstante – kein Rechentrick, sondern eine Aussage über die
  Struktur der Wechselwirkung.
]

#definition[
  *Quantenhypothese:* Die Energie eines Oszillators der Frequenz $f$ ist $E = n h f$ mit
  $n = 0, 1, 2, dots$. Zwischenwerte kommen nicht vor.
]

= Das Photon

$ E = h f = frac(h c, lambda), quad p = frac(h, lambda) = frac(E, c) $

Mit $h = 6","626 dot 10^(-34)$ J s, $c = 2","998 dot 10^8$ m/s und $h c = 1239","8$ eV nm wird
die Rechnung in eV bequem:

$ E_"[eV]" = frac(1239","8, lambda_"[nm]") $

#figure(
  image("../fig/photoeffekt_fE.svg", width: 80%),
  caption: [Maximale kinetische Energie der Elektronen über der Frequenz: Gerade mit der Steigung
    $h$ für jedes Metall, verschoben um die Austrittsarbeit. Die Nullstelle liegt bei der
    Grenzfrequenz $f_G$.],
)

Die Gerade schneidet die Frequenzachse bei $f_G$; erst oberhalb dieser Frequenz verlassen Elektronen das Metall, und die Steigung ist für alle Metalle dieselbe.

= Der äußere Photoeffekt

#table(
  columns: (1fr, 1.3fr),
  [Beobachtung], [Klassisch erwartet],
  [unterhalb von $f_G$ passiert nichts, egal wie hell], [genug Intensität müsste reichen],
  [$E_"kin"$ wächst mit $f$, nicht mit der Intensität], [Energie kommt aus der Intensität],
  [sofortiger Einsatz, unter 10 ns], [erst nach Energieaufnahme „Anlaufzeit“],
)

#herleitung[
  *Einstein-Gleichung (1905)* \
  1. Ein Photon der Energie $h f$ trifft auf ein Elektron.
  2. Zum Herauslösen ist mindestens die Austrittsarbeit $W_A$ nötig (materialabhängig).
  3. Der Rest steht als kinetische Energie zur Verfügung:

  $ h f = W_A + E_"kin,max" $

  4. Mit der Gegenfeldmethode $E_"kin,max" = e U_B$ folgt

  $ U_B = frac(h, e) f - frac(W_A, e) $

  5. $U_B$ über $f$ ist eine Gerade: Steigung $h\/e$, Achsenabschnitt $-W_A \/ e$.
     Nullstelle bei $f_G = W_A \/ h$ (Grenzfrequenz).

]
#figure(
  image("../fig/led_hbestimmung.svg", width: 86%),
  caption: [LED-Methode: Einsatzspannung $U_S$ über der Frequenz. Die Steigung der
    Ausgleichsgeraden ist $h\/e$, der Achsenabschnitt hängt am Kontaktmaterial.],
)

Trägt man die gemessenen Einsatzspannungen über der Frequenz auf, liegen die Punkte auf einer Geraden; aus der Steigung folgt $h$, aus dem Achsenabschnitt die Austrittsarbeit des Kontaktmaterials.

#achtung[
  Die *Intensität* bestimmt die Zahl der Photonen (den Strom), nicht die Energie der einzelnen
  Elektronen. Deshalb ändert helleres Licht unterhalb von $f_G$ nichts.
]

= Compton-Effekt

Röntgenlicht wird an Elektronen gestreut; die gestreute Strahlung hat größere Wellenlänge.
Klassisch wäre $lambda$ unverändert. Das Photon gibt Energie und Impuls ab – der Stoß eines
Teilchens:

$ Delta lambda = lambda_C (1 - cos(phi)), quad lambda_C = frac(h, m_e c) = 2","43 "pm" $

= Welle-Teilchen-Dualismus

Interferenz und Beugung zeigen Welleneigenschaften, Photoeffekt und Compton Teilcheneigenschaften.
Beide Beschreibungen sind komplementär: Welche Seite man sieht, entscheidet der Versuch, nicht
das Licht.

= Experimente

#experiment[
  *Fotozelle mit Gegenfeld (h-Bestimmung).* \
  Aufbau: Vakuumröhre, Kathode (Cs), Anode, regelbare Spannung, Amperemeter, Monochromator. \
  Durchführung: $f$ über Farbfilter variieren, $U_B$ so einstellen, dass $I = 0$. \
  Beobachtung: $U_B$ wächst linear mit $f$; unterhalb $f_G$ kein Strom. \
  Auswertung: Steigung $m$ der $U_B$-$f$-Geraden, $h = m e$; Achsenabschnitt $b$, $W_A = -b e$. \
  Bedeutung: erste direkte Messung von $h$ aus dem Photoeffekt.
]

#experiment[
  *Leuchtdioden-Methode.* \
  LED leuchtet ab einer Schwellenspannung $U_S$; die emittierte Frequenz folgt $h f = e U_S$.
  Mehrere LEDs (rot bis blau) ergeben eine Gerade im $U_S$-$f$-Diagramm, Steigung $h\/e$.
  Vorteil: billig, kein Vakuum. Nachteil: $U_S$ ist unscharf, weil die Emissionslinie breit ist.
]

#experiment[
  *Röntgenbremsspektrum.* \
  Elektronen mit $U_B$ erzeugen ein kontinuierliches Spektrum mit scharfer kurzwelliger Grenze
  $lambda_min$. Dort wird die ganze kinetische Energie in ein Photon umgesetzt:

  $ e U_B = frac(h c, lambda_min) quad => quad lambda_min = frac(h c, e U_B) $

  Bei $U_B = 35$ kV folgt $lambda_min = 35$ pm.
]

= Aufgaben

#aufgabe(1, punkte: 10)[
  Eine Cäsium-Kathode ($W_A = 1","94$ eV) wird mit Licht der Wellenlänge 400 nm beleuchtet.

  #enum(
    [Berechnen Sie die Photonenenergie in eV.],
    [Bestimmen Sie $E_"kin,max"$ und die Gegenspannung.],
    [Berechnen Sie die Grenzwellenlänge.]
  )
]

#lösung[
  (1) $E = frac(1239","8, 400) = 3","10$ eV.

  (2) $E_"kin,max" = 3","10 - 1","94 = 1","16$ eV, also $U_B = 1","16$ V.

  (3) $lambda_G = frac(1239","8, 1","94) = 639$ nm. Längerwelliges Licht löst keine Elektronen
  aus, auch bei beliebiger Intensität.
]

#aufgabe(2, punkte: 12)[
  Bei der Gegenfeldmethode werden gemessen:

  #table(
    columns: 4,
    [$f$ in $10^14$ Hz], [5,49], [6,88], [7,40],
    [$U_B$ in V], [0,37], [0,94], [1,16],
  )

  #enum(
    [Tragen Sie $U_B$ über $f$ auf und bestimmen Sie die Steigung.],
    [Berechnen Sie $h$ und vergleichen Sie mit dem Literaturwert.],
    [Bestimmen Sie $W_A$ und die Grenzfrequenz.]
  )
]

#lösung[
  (1) Die Punkte liegen auf einer Geraden; Steigung $m = 4","11 dot 10^(-15)$ V s,
  Achsenabschnitt $b = -1","88$ V.

  (2) $h = m e = 4","11 dot 10^(-15) dot 1","602 dot 10^(-19) = 6","59 dot 10^(-34)$ J s. Der
  Literaturwert ist 6,626; die Abweichung von 0,6 % ist bei drei Messpunkten normal.

  (3) $W_A = -b e = 1","88$ eV, $f_G = -b\/m = 4","58 dot 10^14$ Hz ($lambda_G = 655$ nm).
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [$h f = W_A$ statt $h f = W_A + E_"kin"$], [die Gleichung ist eine Energiebilanz],
  [Einheiten eV und J gemischt], [$1$ eV $= 1","602 dot 10^(-19)$ J; mit $h c$ in eV nm rechnen],
  [„Intensität erhöht die Elektronenenergie“], [Intensität erhöht die Zahl, $f$ die Energie],
  [Grenzfrequenz und Grenzwellenlänge verwechselt], [$lambda_G = c \/ f_G$],
  [Steigung der $U_B$-$f$-Geraden als $h$ bezeichnet], [Steigung ist $h\/e$, erst mal $e$],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Formel],
  [Photonenenergie], [$E = h f = h c \/ lambda$],
  [Photonenimpuls], [$p = h \/ lambda$],
  [Photoeffekt], [$h f = W_A + e U_B$],
  [Grenzfrequenz], [$f_G = W_A \/ h$],
  [Steigung der $U_B$-$f$-Geraden], [$h \/ e$],
  [Compton], [$Delta lambda = lambda_C (1 - cos phi)$],
  [Röntgengrenze], [$lambda_min = h c \/ (e U_B)$],
)

*Verstehen, nicht auswendig:* warum die Intensität die Energie nicht ändert; warum $U_B$ gegen
$f$ eine Gerade ist; warum der Photoeffekt sofort einsetzt.

#prüfung[
  *Das musst du können:*
  - *erklären*, warum die klassische Wellentheorie den Photoeffekt nicht erklärt;
  - *berechnen*: Grenzfrequenz, Austrittsarbeit und $h$ aus der $U_B$-$f$-Geraden;
  - *begründen*, warum die Steigung dieser Geraden nicht vom Kathodenmaterial abhängt;
  - *skizzieren*: $U_B$ über $f$ und die Energiebilanz am Photon.
]

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12,
    „Quantenphysik“.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - CODATA 2018 für $h$, $c$, $e$, $m_e$.
]
