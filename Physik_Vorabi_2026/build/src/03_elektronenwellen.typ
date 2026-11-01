#import "../template.typ": *

#show: setup.with(title: "Elektronenwellen und Beugung", kicker: "Skript 3 · Materiewellen")

#cover(
  "Skript 3 · Materiewellen",
  "Elektronenwellen und Beugung",
  "de-Broglie-Wellenlänge, Elektronenkanone, Beugungsröhre, Graphit, Davisson-Germer",
  lernziele: (
    "die de-Broglie-Beziehung begründen und anwenden",
    "die Elektronenwellenlänge aus der Beschleunigungsspannung herleiten",
    "die Beugungsröhre von der Elektronenstrahlröhre unterscheiden",
    "Ringe und ihre Spannungssabhängigkeit deuten",
  ),
)

#toc-page()

= Die Hypothese

de Broglie 1924: Wenn Licht als Welle *und* als Teilchen auftritt, dann muss auch ein Elektron
eine Welle haben – mit derselben Verknüpfung $p = h \/ lambda$:

$ lambda = frac(h, p) = frac(h, m v) $

#merksatz[
  Je größer der Impuls, desto kürzer die Welle. Für makroskopische Körper ist $lambda$ so
  winzig, dass keine Beugung beobachtbar ist (ein 1-g-Körper bei 1 m/s: $lambda approx
  6","6 dot 10^(-31)$ m).
]

= Von der Spannung zur Wellenlänge

#herleitung[
  *Elektronenwellenlänge aus der Beschleunigungsspannung* \
  1. Energiebilanz in der Elektronenkanone:

  $ e U = frac(1, 2) m_e v^2 quad => quad v = sqrt(frac(2 e U, m_e)) $

  2. Impuls: $p = m_e v = sqrt(2 m_e e U)$.
  3. de Broglie:

  $ lambda = frac(h, sqrt(2 m_e e U)) $

  4. Zahlenwert einsetzen ($h$, $m_e$, $e$):

  $ lambda = frac(1","226 "nm", sqrt(U \/ "V")) $

  5. Gültig für $U$ bis etwa 10 kV; darüber wird der relativistische Impuls messbar größer.

]
#figure(
  image("../fig/elektronenbeugung_bild.svg", width: 62%),
  caption: [Beugungsbild am Graphit: zwei Ringe, weil zwei Netzebenenscharen beitragen. Zur
    Spannung $U$ gehört die Wellenlänge nach der Formel oben.],
)

Aus Ringradius und bekanntem Netzebenenabstand lässt sich umgekehrt $lambda$ bestimmen; die beiden Ringe gehören zu verschiedenen Netzebenenscharen desselben Graphits.

#table(
  columns: (auto, auto, auto),
  [$U$], [$lambda$ (nicht relativistisch)], [Kontrolle $1","226 \/ sqrt(U)$],
  [1 kV], [38,8 pm], [38,8 pm],
  [4 kV], [19,4 pm], [19,4 pm],
  [10 kV], [12,3 pm], [12,3 pm],
)

= Geometrie der Beugungsröhre

An den Netzebenen des Graphits wird gebeugt (Bragg). Für kleine Winkel und den Ringradius $r$
auf dem Schirm im Abstand $a$ gilt

$ sin(theta) = frac(r, 2 a) quad "und" quad 2 d sin(theta) = n lambda $

Zusammengesetzt:

$ r = frac(a lambda, d) quad => quad r^2 = frac(a^2 h^2, 2 m_e e d^2) dot frac(1, U) $

Das ist die Abituraufgabe in Reinform: $r^2$ über $1\/U$ auftragen ergibt eine Gerade, aus deren
Steigung $d$ folgt.

#achtung[
  $d$ ist der *Netzebenenabstand* des Graphits (etwa 0,21 nm), $a$ der Abstand
  Graphit–Schirm. Beide sind Gerätegrößen, keine Messgrößen.
]

#figure(
  image("../fig/bragg.svg", width: 52%),
  caption: [Bragg-Bedingung: Die zweite Netzebene liefert den Zusatzweg $2 d sin(theta)$.],
)

Bei festem Winkel wächst der Zusatzweg $2 d sin(theta)$ mit dem Netzebenenabstand; genau darauf beruht die Auswertung über die Steigung von $r^2$ über $1\/U$.

= Zwei Röhren, zwei Zwecke

#table(
  columns: (1fr, 1fr, 1fr),
  [Röhre], [Zweck], [Kennzeichen],
  [Elektronenstrahlröhre], [Ablenkung, „Fernsehröhre“, Feldmessungen],
  [Ablenkplatten, Leuchtschirm; kein Beugungsbild],
  [Elektronenbeugungsröhre], [Nachweis der Materiewelle],
  [Graphitfolie im Strahlweg, Ringe auf dem Schirm],
)

#merksatz[
  Nur die Beugungsröhre zeigt Interferenz. Die Elektronenstrahlröhre zeigt, dass Elektronen
  *Teilchen* mit Ladung sind – sie sagt über die Wellennatur nichts aus.
]

= Weitere Belege

#table(
  columns: (1fr, 1fr),
  [Versuch], [Aussage],
  [Davisson-Germer (1927)], [Elektronen an Nickelkristallen zeigen Maxima unter Winkeln, die
    zur Bragg-Bedingung passen],
  [Einzelelektronen], [Bei sehr kleiner Intensität treffen einzelne Elektronen punktuell ein;
    das Interferenzmuster baut sich mit der Zeit auf],
  [Neutronen-, Atominterferenz], [Die Beziehung $lambda = h\/p$ gilt für alle Teilchen],
)

= Experiment: Elektronenbeugung am Graphit

#experiment[
  *Aufbau.* Evakuierte Röhre, Glühkathode, Anode mit Lochblende, Graphitfolie, Leuchtschirm,
  regelbare Hochspannung. \
  *Durchführung.* $U$ von 2 kV bis 6 kV erhöhen, Ringdurchmesser auf dem Schirm messen
  (Radius $r$). \
  *Beobachtung.* Zwei konzentrische Ringe; beide werden mit steigender Spannung *kleiner*. \
  *Erklärung.* Höhere Spannung $arrow$ größerer Impuls $arrow$ kleinere Wellenlänge $arrow$
  kleinere Beugungswinkel. \
  *Auswertung.* $r^2$ gegen $1\/U$: Gerade mit Steigung $a^2 h^2 \/ (2 m_e e d^2)$. \
  *Bedeutung.* Direkter Nachweis der Materiewelle; liefert $h$ bzw. $d$.
]

= Aufgaben

#aufgabe(1, punkte: 10)[
  Elektronen werden mit 4,0 kV beschleunigt.

  #enum(
    [Berechnen Sie die Wellenlänge.],
    [Berechnen Sie die Frequenz, die einem Photon gleicher Energie entspricht, und vergleichen
     Sie.]
  )
]

#lösung[
  (1) $lambda = frac(1","226 "nm", sqrt(4","0)) = 0","613$ nm.

  (2) $E = e U = 4","0$ keV, also $f = E \/ h = 9","7 dot 10^17$ Hz und $lambda = c \/ f =
  0","31$ nm. Das Photon hätte die halbe Wellenlänge: Die Energie eines Elektrons ist
  $p^2\/(2 m_e)$, die eines Photons $p c$ – bei gleichem Impuls also verschieden.
]

#aufgabe(2, punkte: 12)[
  In einer Beugungsröhre ($a = 0","135$ m) wird der innere Ring gemessen:

  #table(
    columns: 5,
    [$U$ in kV], [3,0], [4,0], [5,0], [6,0],
    [$r$ in mm], [14,2], [12,3], [11,0], [10,0],
  )

  #enum([Zeigen Sie, dass $r^2 tilde 1\/U$ gilt.], [Bestimmen Sie $d$.])
]

#lösung[
  (1) $r^2$ gegen $1\/U$ ergibt eine Gerade durch den Ursprung (Steigung $M = 0","6086$
  m²V). Das folgt aus der hergeleiteten Beziehung: $r^2 = frac(a^2 h^2, 2 m_e e d^2) dot 1\/U$.

  (2) $d = frac(h a, sqrt(2 m_e e M)) = 2","1 dot 10^(-10)$ m, also $d approx 0","21$ nm – der
  Literaturwert für Graphit.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [$lambda = h\/(m v)$ mit $v$ aus $U$ ohne Wurzel], [$v = sqrt(2 e U \/ m_e)$],
  [Beugungs- und Strahlröhre gleichgesetzt], [nur die Beugungsröhre zeigt Ringe],
  [Ringradius und Ringdurchmesser verwechselt], [$r$ ist der Radius; $2 r$ der Durchmesser],
  [$r$ gegen $U$ auftragen], [$r^2$ gegen $1\/U$ ergibt eine Gerade],
  [relativistische Effekte ignorieren], [über 10 kV korrigieren oder anmerken],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Formel],
  [de Broglie], [$lambda = h \/ p$],
  [Impuls aus Spannung], [$p = sqrt(2 m_e e U)$],
  [Wellenlänge aus Spannung], [$lambda = 1","226 "nm" \/ sqrt(U\/"V")$],
  [Bragg], [$2 d sin(theta) = n lambda$],
  [Röhrengeometrie], [$r = a lambda \/ d$],
  [Auswertung], [$r^2$ über $1\/U$, Steigung $a^2 h^2\/(2 m_e e d^2)$],
)

*Verstehen, nicht auswendig:* warum höhere Spannung kleinere Ringe ergibt; warum dasselbe
Elektron punktförmig auftrifft und trotzdem interferiert; warum die Formel nur bis etwa 10 kV
gilt.

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12,
    „Quantenphysik / Materiewellen“.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - CODATA 2018 für $h$, $m_e$, $e$.
]
