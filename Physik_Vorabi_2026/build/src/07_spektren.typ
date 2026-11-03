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

#leitfrage[
  *Worum geht es?* Wie liest man aus Spektren die Energiestufen von Atomen – und was zeigt
  der Franck-Hertz-Versuch über die diskreten Anregungen?
]

#vorwissen[
  *Das brauchst du:* Photon und $h f$ (Skript 2); Energieniveaus und Termschema (Skript 6);
  Gitter und Beugung (Skript 1, Abschnitt 8). \
  *Neu hier:* Spektrenarten, Röntgenspektrum, Resonanzabsorption, Fluoreszenz und
  Franck-Hertz-Kurve.
]

= Spektrenarten

#table(
  columns: (auto, 1fr, 1fr),
  [Typ], [Entstehung], [Aussehen],
  [kontinuierlich], [thermische Strahlung, Glühkörper], [alle Wellenlängen],
  [Emissionslinien], [angeregte Atome leuchten], [einzelne helle Linien],
  [Absorptionslinien], [weißes Licht durch kaltes Gas], [dunkle Linien auf Kontinuum],
  [Bandspektren], [Moleküle], [breite Banden],
)

Ein kontinuierliches Spektrum entsteht in dichten, heißen Körpern: Die Atome stoßen einander
und die Energiezustände überlappen, sodass alle Wellenlängen vorkommen. Ein Emissionslinienspektrum
entsteht in verdünntem Gas: Nur die Differenzen diskreter Niveaus werden als Photonen frei.
Bei der Absorption durchstrahlt weißes Licht ein kaltes Gas; das Gas entfernt genau die Photonen,
deren Energie zu einem Übergang passt, und erzeugt dunkle Linien an denselben Wellenlängen.
Moleküle zeigen zusätzlich Schwingungs- und Rotationsniveaus; viele dicht beieinanderliegende
Linien erscheinen als Bande.

#merksatz[
  Linienspektren sind der direkteste Beweis für diskrete Energieniveaus: Nur die Differenzen
  $E_m - E_n$ sind als Photonen zugänglich.
]

= Energieniveaus lesen

Das Termschema ist ein Energie-Lineal. Nach oben (Richtung $E = 0$) wird der Abstand zwischen
den Niveaus kleiner; $E = 0$ ist die Ionisationsgrenze.

#figure(
  image("../fig/schule/s7_energieniveaus.jpg", width: 86%),
  caption: [Wasserstoff-Termschema aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d13/14atomhuelle/05emissionsspektren/energieniveaudiagramm02.jpg")[Schulseite].],
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
  1. Die Energieniveaus des Wasserstoffs sind $E_n = -13","6 "eV" \/ n^2$. Für einen Übergang
     von $n$ nach $m$ (mit $n > m$) ist

  $ Delta E = 13","6 "eV" (frac(1, m^2) - frac(1, n^2)) $

  2. Mit $Delta E = h c \/ lambda$ folgt

  $ frac(1, lambda) = frac(13","6 "eV", h c) (frac(1, m^2) - frac(1, n^2)) = R (frac(1, m^2) - frac(1, n^2)) $

     mit der Rydberg-Konstante $R = 13","6 "eV" \/(h c) = 1","097 dot 10^7 "m"^(-1)$.

  3. Für $m = 2$ (Balmer) und $n = 3$:

  $ frac(1, lambda) = R dot frac(5, 36) quad => quad lambda = 656 "nm" quad "(H-alpha, rot)" $

  4. Seriengrenze $n -> infinity$:

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

Die charakteristischen Linien entstehen, wenn ein schnelles Elektron ein Elektron aus einer
inneren Schale des Anodenatoms herausschlägt. Fällt ein Elektron aus einer höheren Schale in
das frei gewordene Niveau, wird die Energiedifferenz als Photon emittiert. Der Übergang von
$L$ nach $K$ heißt $K_alpha$, der von $M$ nach $K$ heißt $K_beta$. Weil die Energieniveaus
vom Element abhängen, ist das Linienspektrum für das Anodenmaterial charakteristisch; die
Moseley-Beziehung $sqrt(f) tilde (Z - 1)$ ordnet die Linien der Kernladungszahl $Z$ zu.

$ lambda_min = frac(h c, e U_B) = frac(1239","8 "eV nm", U_B) quad (U_B "in V") $

Mit der Moseley-Beziehung $sqrt(f) tilde (Z - 1)$ lässt sich das Anodenmaterial bestimmen.

#figure(
  image("../fig/schule/s7_roentgenspektrum.png", width: 72%),
  caption: [Röntgenspektrum aus dem Schulmaterial: kontinuierliches Bremsspektrum mit scharfer
    Grenzwellenlänge und zusätzlichen charakteristischen Linien.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/05planckkonstante/roentgenspektrum.png")[Schulseite].],
)


#experiment[
  *Aufbau.* Röntgenröhre mit Glühkathode und Metallanode, regelbare Hochspannung $U_B$,
  Kristall-Spektrometer und Detektor. \
  *Durchführung.* $U_B$ verändern und das Intensitätsspektrum über der Wellenlänge aufnehmen. \
  *Beobachtung.* Kontinuierliches Bremsspektrum mit scharfer Grenzwellenlänge $lambda_min$ und
  zusätzliche charakteristische Linien des Anodenmaterials. \
  *Auswertung.* $lambda_min = h c\/(e U_B)$; die Linien folgen den Energieniveaus der
  Anodenatome.

  *Fehler und Sicherheit.* Winkel und Ordnung der Reflexe tragen die Unsicherheit; die Apparatefunktion wirkt systematisch. Röntgenschutz beachten und nur im abgeschirmten Gerät messen.]

= Resonanzabsorption und Fluoreszenz

Ein Gas absorbiert genau die Wellenlängen, die es auch emittieren kann (Energieerhaltung,
Resonanz). Fluoreszenz: Absorption im UV, Emission sichtbar – die Emission hat *kleinere*
Energie, weil ein Teil als Wärme abgegeben wird (Stokes-Verschiebung).

In der Leuchtstoffröhre erzeugt die Gasentladung UV-Licht; die Leuchtstoffschicht an der
Glaswand absorbiert es und sendet sichtbares Licht aus. Bei der weißen LED wird eine blaue oder
UV-LED mit einem Leuchtstoff kombiniert; der Leuchtstoff wandelt einen Teil des kurzwelligen
Lichts in längere Wellenlängen um. Überlagern sich viele Farben, erscheint das Licht weiß.

= Franck-Hertz-Versuch

#experiment[
  *Aufbau.* Evakuierte Röhre mit Hg-Dampf (oder Ne), Glühkathode, beschleunigende Gitter-
  spannung $U$, Gegenfeld $U_G$ zwischen Gitter und Auffänger, Amperemeter. \
  *Durchführung.* $U$ von 0 auf 30 V erhöhen, Strom $I$ messen. \
  *Beobachtung.* Im idealisierten Modell fällt $I$ bei 4,9 V, 9,8 V, 14,7 V … wieder ab
  (Periodizität $Delta U approx 4","9$ V). Die Quellenkurve zeigt das erste Maximum bei
  ca. 6 V; die weiteren Maxima liegen im Abstand von 4,9 V. Bei 32 V sind sechs Leuchtzonen
  sichtbar. Bei Ne leuchtet das Gas in einer orangeroten Schicht. \
  *Erklärung.* Elektronen geben bei Stößen genau $Delta E = e dot 4","9$ V an Hg-Atome ab; ihre
  Restenergie reicht nicht mehr über das Gegenfeld. Nach dem Stoß beginnt die Beschleunigung
  erneut – daher die Periodizität. \
  *Bedeutung.* Direkter Nachweis diskreter Anregungsenergien ohne Spektroskopie.

  *Fehler und Sicherheit.* Beschleunigungs- und Gegenfeldspannung sowie der Auffängerstrom sind die Messgrößen; die Kontaktspannung wirkt systematisch. Heizung und Hochspannung langsam regeln, Röhre nicht öffnen.]

#figure(
  image("../fig/schule/s7_franckhertz.jpg", width: 86%),
  caption: [Franck-Hertz-Kennlinie aus dem Schulmaterial.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d13/14atomhuelle/07franckhertz/fh06.jpg")[Schulseite].],
)

Im idealisierten Modell liegen die Minima bei 4,9 V, 9,8 V und 14,7 V. Die Quellenkurve ist
gegenüber diesem Modell um ca. 1,1 V verschoben: Ihr erstes Maximum liegt bei ca. 6 V. Diese
Verschiebung folgt aus der Gegenspannung von 1 V und dem Kontaktpotenzial; sie wird hier nicht
als eigene Messgröße verwendet. Der konstante Abstand von 4,9 V ist der Beweis, dass die Atome
nur feste Energiebeträge aufnehmen.

#herleitung[
  *Anregungsenergie und Emissionswellenlänge* \
  1. Maxima liegen bei $U_n = n dot Delta U + U_0$ ($U_0$: Verschiebung durch Gegenspannung
     und Kontaktpotenzial).
  2. Also $U_n$ gegen $n$ auftragen: Steigung $Delta U$, Achsenabschnitt $U_0$.
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

#aufgabe(1, punkte: 12, afb: "II")[
  Die Franck-Hertz-Kurve mit Quecksilber zeigt Maxima bei ca. 6,0 V, 10,9 V, 15,8 V und 20,7 V.

  #enum(
    [Bestimmen Sie die Anregungsspannung aus dem Abstand der Maxima.],
    [Berechnen Sie die Wellenlänge der emittierten Strahlung.],
    [Erklären Sie, warum das Gas beim Versuch leuchtet und warum das erste Maximum nicht
     bei 4,9 V liegt.]
  )
]

#lösung[
  (1) $U_n$ gegen $n$: Steigung $4","90$ V. Also $Delta U = 4","90$ V (Anregung).

  (2) $Delta E = 4","90$ eV, $lambda = 1239","8\/4","90 = 253$ nm – die bekannte
  Hg-UV-Linie.

  (3) Ein Teil der Hg-Atome wird durch Stöße angeregt und fällt unter Emission sichtbarer
  Linien zurück. Bei Neon ist das Leuchten besonders auffällig, weil viele der anschließenden
  Übergänge im Sichtbaren liegen; dort sieht man die Leuchtschicht direkt.
]

#aufgabe(2, punkte: 10, afb: "II")[
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

#aufgabe(3, punkte: 12, afb: "III")[
  Die Franck-Hertz-Kurve ist gegenüber dem idealisierten Modell um etwa 1,1 V verschoben.
  Beurteilen Sie, warum man trotzdem die Anregungsenergie 4,9 eV ablesen kann, und erklären
  Sie den Unterschied zwischen Steigung und Achsenabschnitt.
]

#lösung[
  Die Verschiebung addiert zu jedem Maximum denselben Betrag $U_0$ (Gegenspannung plus
  Kontaktpotenzial). Die Differenz zweier benachbarter Maxima bleibt deshalb $Delta U = 4","9$ V;
  die Anregungsenergie folgt aus der Steigung, nicht aus dem absoluten Wert eines Maximums.
  Der Achsenabschnitt $U_0$ ist keine Anregungsspannung und darf nicht als solche gelesen
  werden. Erst die Steigung $Delta U$ ergibt $Delta E = e Delta U = 4","9$ eV.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [Seriengrenze = Ionisationsgrenze], [Serie: Ziel $m$ fest, Start $n -> infinity$],
  [Energie in eV und Wellenlänge in m ohne Umrechnung], [$lambda$ in nm mit $h c = 1239","8$],
  [„Franck-Hertz zeigt, dass Elektronen Wellen sind“], [er zeigt diskrete Anregungsenergien],
  [Maximaabstand als Kontaktspannung gedeutet], [Steigung ist $Delta U$; der Achsenabschnitt $U_0$ ist Gegenspannung plus Kontaktpotenzial],
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
  [Franck-Hertz], [$U_n = n Delta U + U_0$],
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

#vertiefung[
  - Emissionsspektren: #link("https://www.physik.gym-wst.de/apps/ap/02b_emissionsspektren/emissionsspektren.html")[Schulseite]
  - Franck-Hertz: #link("https://www.physik.gym-wst.de/apps/ap/05_franckhertz/franckhertz.html")[Schulseite]
]

#quelle[
  *Bearbeitung:* Spektrenarten, Termschema, Röntgen und Franck-Hertz wurden gestrafft; die Franck-Hertz-Kurve folgt den Quellenwerten (erstes Maximum ca. 6,0 V, Abstand 4,9 V). Der He-Ne-Laser entfällt, weil er nicht im KC 2022 steht.

  *Quellen (Abruf 2026-11-02).*
  - Emissionsspektren: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/05emissionsspektren/docs.md
  - Absorptionsspektren: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/06absorptionsspektren/docs.md
  - Röntgenspektrum: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/08roentgenspektrum/docs.md
  - Franck-Hertz: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/07franckhertz/docs.md
  - Kerncurriculum Physik Niedersachsen 2022: https://cuvo.nibis.de/
  - CODATA 2018; Rydberg-Konstante $R = 1","097 dot 10^7$ 1/m.
  - Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
