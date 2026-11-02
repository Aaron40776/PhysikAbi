#import "../template.typ": *

#show: setup.with(title: "Lichtquanten und Planck", kicker: "Skript 2 · Quantenhypothese")

#cover(
  "Skript 2 · Licht als Quant",
  "Lichtquanten und Planck",
  "Plancks Quantenhypothese, Photon, äußerer Photoeffekt, Gegenfeld",
  lernziele: (
    "die Quantenhypothese als Grundlage der Lichtquanten erklären",
    "Energie und Impuls eines Photons berechnen",
    "die Einstein-Gleichung aufstellen und mit der Gegenfeldmethode auswerten",
    "Grenzfrequenz und Austrittsarbeit deuten",
  ),
)

#toc-page()

#definition[
  *Quantenhypothese:* Die Energie eines Oszillators der Frequenz $f$ ist $E = n h f$ mit
  $n = 0, 1, 2, dots$. Zwischenwerte kommen nicht vor.
]

= Das Photon

$ E = h f = frac(h c, lambda), quad p = frac(h, lambda) = frac(E, c) $

Mit $h = 6","626 dot 10^(-34)$ J s, $c = 2","998 dot 10^8$ m/s und $h c = 1239","8$ eV nm wird
die Rechnung in eV bequem:

$ E_"[eV]" = frac(1239","8, lambda_"[nm]") $

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
  image("../fig/schule/s2_photoeffekt_fE.jpg", width: 80%),
  caption: [Photoeffekt aus dem Schulmaterial: $U_B$ bzw. $E_"kin,max"$ über der Frequenz;
    die Steigung ist $h\/e$, die Nullstelle $f_G$.],
)
Trägt man die gemessenen Gegenspannungen $U_B$ über der Frequenz auf, liegen die Punkte auf einer Geraden; aus der Steigung folgt $h$, aus dem Achsenabschnitt die Austrittsarbeit des Kathodenmaterials.

#achtung[
  Die *Intensität* bestimmt die Zahl der Photonen (den Strom), nicht die Energie der einzelnen
  Elektronen. Deshalb ändert helleres Licht unterhalb von $f_G$ nichts.
]

= Experimente

#experiment[
  *Fotozelle mit Gegenfeld (h-Bestimmung).* \
  *Aufbau.* Vakuumröhre, Kathode (Cs), Anode, regelbare Spannung, Amperemeter, Monochromator. \
  *Durchführung.* $f$ über Farbfilter variieren, $U_B$ so einstellen, dass $I = 0$. \
  *Beobachtung.* $U_B$ wächst linear mit $f$; unterhalb $f_G$ kein Strom. \
  *Auswertung/Formel.* Steigung $m$ der $U_B$-$f$-Geraden: $h = m e$; Achsenabschnitt $b$:
  $W_A = -b e$. \
  *Bedeutung.* Erste direkte Messung von $h$ aus dem Photoeffekt.
]

#figure(
  image("../fig/schule/s2_messreihe_zink.jpg", width: 76%),
  caption: [Messreihe für Zink aus dem Schulmaterial: $U_B$ über $f$.],
)

#experiment[
  *Leuchtdioden-Methode.* \
  *Aufbau.* Mehrere LEDs (rot bis blau), regelbare Spannungsquelle, Voltmeter, Strombegrenzung. \
  *Durchführung.* $U$ langsam erhöhen und die Einsatzspannung $U_S$ bestimmen, bei der die LED
  zu leuchten beginnt; $U_S$ über der bekannten Frequenz $f$ auftragen. \
  *Beobachtung/Formel.* Es gilt $h f = e U_S$; die Punkte liegen auf einer Geraden. \
  *Auswertung.* Steigung $h\/e$, daraus $h$. \
  *Bedeutung.* Einfache Bestimmung von $h$ ohne Vakuum; $U_S$ ist wegen der breiten
  Emissionslinie nur unscharf messbar.
]

#experiment[
  *Röntgenbremsspektrum.* \
  *Aufbau.* Röntgenröhre mit Glühkathode und Metallanode, regelbare Hochspannung $U_B$,
  Kristall-Spektrometer, Detektor. \
  *Durchführung.* $U_B$ einstellen und das Intensitätsspektrum über der Wellenlänge aufnehmen. \
  *Beobachtung.* Kontinuierliches Spektrum mit scharfer kurzwelliger Grenze $lambda_min$. \
  *Auswertung/Formel.* Dort wird die ganze kinetische Energie in ein Photon umgesetzt:
  $e U_B = h c\/lambda_min$, also $lambda_min = h c\/(e U_B)$. \
  *Bedeutung.* Bei $U_B = 35$ kV folgt $lambda_min = 35$ pm; aus der Grenze lässt sich $h$
  bestimmen.
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
  - CODATA 2018 für $h$, $c$, $e$.
- Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
