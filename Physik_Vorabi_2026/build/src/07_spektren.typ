#import "../template.typ": *

#show: setup.with(title: "Spektren und Franck-Hertz", kicker: "Skript 7 · Spektroskopie")

#cover(
  "Skript 7 · Spektren, Energieniveaus",
  "Spektren und Franck-Hertz",
  "Linienspektren, Termschema, Röntgen, Franck-Hertz-Versuch",
  lernziele: (
    "Spektrenarten unterscheiden",
    "Linien aus einem Termschema berechnen (längste, kürzeste, Ionisation)",
    "die Franck-Hertz-Kurve auswerten",
    "Anregung durch Photonen und durch Elektronen abgrenzen",
  ),
)

#toc-page()

= Spektrenarten

#table(
  columns: (auto, 1fr, 1fr),
  [Typ], [Entstehung], [Aussehen],
  [kontinuierlich], [thermische Strahlung, Glühkörper], [alle Wellenlängen],
  [Emissionslinien], [angeregte Atome leuchten], [einzelne helle Linien],
  [Absorptionslinien], [weißes Licht durch kaltes Gas], [dunkle Linien auf Kontinuum],
  [Bandspektren], [Moleküle], [breite Banden],
)

#merksatz[
  Linienspektren sind der direkteste Beweis für diskrete Energieniveaus: Nur die Differenzen
  $E_m - E_n$ sind als Photonen zugänglich.
]

= Energieniveaus lesen

Das Termschema ist ein Energie-Lineal. Nach oben (Richtung $E = 0$) wird der Abstand zwischen
den Niveaus kleiner; $E = 0$ ist die Ionisationsgrenze.

#figure(
  image("../fig/schule/s7_energieniveaus.jpg", width: 86%),
  caption: [Wasserstoff-Termschema aus dem Schulmaterial.],
)

Die Energiedifferenzen zwischen den Niveaus bestimmen die Photonenenergien; je kleiner die
Differenz, desto größer die Wellenlänge.

#table(
  columns: (1fr, 1.6fr),
  [Frage im Abitur], [Vorgehen],
  [Energie des Photons], [$Delta E = |E_m - E_n|$],
  [Wellenlänge], [$lambda = 1239","8 "eV nm" \/ Delta E_"[eV]"$],
  [längste Wellenlänge], [kleinster Sprung, also benachbarte Niveaus],
  [kürzeste Wellenlänge einer Serie], [größter Sprung innerhalb der Serie, Startniveau
    $n -> infinity$ bzw. oberstes gegebenes],
  [Ionisationsenergie], [Energie von $n$ bis $E = 0$],
  [Anregungsenergie], [Energie vom Grundzustand bis zum Zielniveau],
  [Seriengrenze], [$lambda_"min" = 1239","8 \/ |E_"Ziel"|$],
)

#herleitung[
  *Balmerformel aus dem Termschema* \
  1. Rydberg-Formel mit $n > m$:

  $ frac(1, lambda) = R (frac(1, m^2) - frac(1, n^2)) $

  2. Für $m = 2$ (Balmer) und $n = 3$:

  $ frac(1, lambda) = R dot frac(5, 36) quad => quad lambda = 656 "nm" quad "(H-alpha, rot)" $

  3. Seriengrenze $n -> infinity$:

  $ frac(1, lambda) = frac(R, 4) quad => quad lambda = 364","6 "nm" $

]
#achtung[
  Seriengrenze und Ionisationsgrenze sind verschieden: Die Seriengrenze gehört zur Serie
  (Ziel $m$ fest, Start $n -> infinity$), die Ionisationsgrenze zum Grundzustand ($n = 1 -> infinity$).
]

= Röntgenspektrum

#table(
  columns: (1fr, 1fr),
  [Bestandteil], [Ursache],
  [Bremsspektrum (kontinuierlich)], [Abbremsung der Elektronen, $e U_B = h c \/ lambda_min$],
  [charakteristische Linien], [Übergänge in den inneren Schalen des Anodenmaterials],
)

$ lambda_min = frac(h c, e U_B) = frac(1239","8 "eV nm", U_B) quad (U_B "in V") $

Mit der Moseley-Beziehung $sqrt(f) tilde (Z - 1)$ lässt sich das Anodenmaterial bestimmen.

#experiment[
  *Aufbau.* Röntgenröhre mit Glühkathode und Metallanode, regelbare Hochspannung $U_B$,
  Kristall-Spektrometer und Detektor. \
  *Durchführung.* $U_B$ verändern und das Intensitätsspektrum über der Wellenlänge aufnehmen. \
  *Beobachtung.* Kontinuierliches Bremsspektrum mit scharfer Grenzwellenlänge $lambda_min$ und
  zusätzliche charakteristische Linien des Anodenmaterials. \
  *Auswertung.* $lambda_min = h c\/(e U_B)$; die Linien folgen den Energieniveaus der
  Anodenatome.
]

= Resonanzabsorption und Fluoreszenz

Ein Gas absorbiert genau die Wellenlängen, die es auch emittieren kann (Energieerhaltung,
Resonanz). Fluoreszenz: Absorption im UV, Emission sichtbar – die Emission hat *kleinere*
Energie, weil ein Teil als Wärme abgegeben wird (Stokes-Verschiebung).

= Franck-Hertz-Versuch

#experiment[
  *Aufbau.* Evakuierte Röhre mit Hg-Dampf (oder Ne), Glühkathode, beschleunigende Gitter-
  spannung $U$, Gegenfeld $U_G$ zwischen Gitter und Auffänger, Amperemeter. \
  *Durchführung.* $U$ von 0 auf 30 V erhöhen, Strom $I$ messen. \
  *Beobachtung.* Im idealisierten Modell fällt $I$ bei 4,9 V, 9,8 V, 14,7 V … wieder ab
  (Periodizität $Delta U approx 4","9$ V); im realen Versuch verschiebt die Kontaktspannung
  die Minima auf 10,4 V, 15,3 V, 20,2 V … – der Abstand bleibt 4,9 V. Bei Ne leuchtet das Gas
  in einer orangeroten Schicht. \
  *Erklärung.* Elektronen geben bei Stößen genau $Delta E = e dot 4","9$ V an Hg-Atome ab; ihre
  Restenergie reicht nicht mehr über das Gegenfeld. Nach dem Stoß beginnt die Beschleunigung
  erneut – daher die Periodizität. \
  *Bedeutung.* Direkter Nachweis diskreter Anregungsenergien ohne Spektroskopie.
]

#figure(
  image("../fig/schule/s7_franckhertz.jpg", width: 86%),
  caption: [Franck-Hertz-Kennlinie aus dem Schulmaterial.],
)

Im idealisierten Modell liegen die Minima bei 4,9 V, 9,8 V und 14,7 V; mit der Kontaktspannung
$U_"K" approx 5","5$ V erscheinen sie bei 10,4 V, 15,3 V und 20,2 V. Der konstante Abstand ist
der Beweis, dass die Atome nur feste Energiebeträge aufnehmen.

#herleitung[
  *Anregungsenergie und Emissionswellenlänge* \
  1. Minima liegen bei $U_n = n dot Delta U + U_"K"$ ($U_"K"$: Kontaktspannung).
  2. Also $U_n$ gegen $n$ auftragen: Steigung $Delta U$, Achsenabschnitt $U_"K"$.
  3. Anregungsenergie $Delta E = e dot Delta U = 4","90$ eV.
  4. Die beim Zurückfallen emittierte Wellenlänge:

  $ lambda = frac(1239","8, 4","90) = 253 "nm" $

  5. Diese UV-Linie ist bei Hg bekannt – die Bestätigung, dass Elektronenstöße dieselben
     Niveaus anregen wie Photonen.

]
#table(
  columns: (1fr, 1fr),
  [Anregung durch], [Bedingung],
  [Photonen], [$h f = Delta E$ exakt; kein Überschuss möglich],
  [Elektronen], [kinetische Energie $>= Delta E$; Überschuss bleibt als $E_"kin"$],
)

= Aufgaben

#aufgabe(1, punkte: 12)[
  Die Franck-Hertz-Kurve mit Quecksilber zeigt Minima bei 10,4 V, 15,3 V, 20,2 V und 25,1 V.

  #enum(
    [Bestimmen Sie Anregungsspannung und Kontaktspannung.],
    [Berechnen Sie die Wellenlänge der emittierten Strahlung.],
    [Erklären Sie, warum das Gas beim Versuch leuchtet.]
  )
]

#lösung[
  (1) $U_n$ gegen $n$: Steigung $4","90$ V, Achsenabschnitt $5","50$ V. Also
  $Delta U = 4","90$ V (Anregung) und $U_"K" = 5","50$ V (Kontaktspannung).

  (2) $Delta E = 4","90$ eV, $lambda = 1239","8\/4","90 = 253$ nm – die bekannte
  Hg-UV-Linie.

  (3) Ein Teil der Hg-Atome wird durch Stöße angeregt und fällt unter Emission sichtbarer
  Linien zurück. Bei Neon ist das Leuchten besonders auffällig, weil viele der anschließenden
  Übergänge im Sichtbaren liegen; dort sieht man die Leuchtschicht direkt.
]

#aufgabe(2, punkte: 10)[
  Ein Wasserstoffgas wird mit weißem Licht durchstrahlt.

  #enum(
    [Skizzieren Sie das beobachtete Spektrum.],
    [Berechnen Sie die Grenzwellenlänge der Lyman-Serie.],
    [Begründen Sie, warum die Balmer-Linien schwächer sind.],
  )
]

#lösung[
  (1) Kontinuierliches Spektrum mit dunklen Linien bei 121,6 nm, 102,6 nm … (Lyman) und
  656 nm, 486 nm … (Balmer).

  (2) Seriengrenze $n -> infinity$: $Delta E = 13","6$ eV, $lambda = 1239","8\/13","6 = 91","2$ nm.

  (3) Im Grundzustand sind die Atome meist in $n = 1$; Übergänge nach $n = 2$ verlangen bereits
  angeregte Atome. Daher sind Balmer-Absorptionen bei Raumtemperatur schwach.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [Seriengrenze = Ionisationsgrenze], [Serie: Ziel $m$ fest, Start $n -> infinity$],
  [Energie in eV und Wellenlänge in m ohne Umrechnung], [$lambda$ in nm mit $h c = 1239","8$],
  [„Franck-Hertz zeigt, dass Elektronen Wellen sind“], [er zeigt diskrete Anregungsenergien],
  [Minimaabstand als Kontaktspannung gedeutet], [Achsenabschnitt ist $U_"K"$, Steigung $Delta U$],
  [Absorptionslinien als hell beschrieben], [Absorption = dunkle Linien],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Formel / Aussage],
  [Photonenenergie aus $lambda$], [$E = 1239","8 "eV nm" \/ lambda$],
  [Übergang], [$Delta E = E_m - E_n$],
  [Seriengrenze], [$lambda_"min" = 1239","8 \/ |E_"Ziel"|$],
  [Röntgengrenze], [$lambda_min = 1239","8 \/ U_B$],
  [Franck-Hertz], [$U_n = n Delta U + U_"K"$],
  [Anregungsenergie], [$Delta E = e Delta U$],
  [Photon oder Elektron], [Photon exakt, Elektron mindestens $Delta E$],
)

*Verstehen, nicht auswendig:* warum die Minima periodisch sind; warum die Emission langwelliger
als die Absorption sein kann; warum Linien diskret sind.

#prüfung[
  *Das musst du können:*
  - *erklären*, wie Emissions-, Absorptions- und kontinuierliche Spektren entstehen;
  - *erklären*, warum der Franck-Hertz-Strom periodische Einbrüche zeigt;
  - *berechnen*: Übergangsenergie, Wellenlänge, Seriengrenze und $lambda_min$ im Röntgenspektrum;
  - *begründen*, warum die Linien diskret sind und die Bremsstrahlung kontinuierlich;
  - *skizzieren*: Franck-Hertz-Kurve und Röntgenspektrum mit Grenzwellenlänge.
]

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 13.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - CODATA 2018; Rydberg-Konstante $R = 1","097 dot 10^7$ 1/m.
- Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
