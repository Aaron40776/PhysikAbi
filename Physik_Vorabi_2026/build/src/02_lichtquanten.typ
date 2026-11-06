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

#leitfrage[
  *Worum geht es?* Warum hängt die Energie des Lichts an der Frequenz und nicht an der
  Intensität – und wie misst man diese Energie im Gegenfeldversuch?
]

#vorwissen[
  *Das brauchst du:* Welle, Frequenz und Wellenlänge (Skript 1, Abschnitte 1 und 5);
  elektrische Spannung und Energie; die Einheit Elektronenvolt. \
  *Neu hier:* Photon, plancksches Wirkungsquantum, Austrittsarbeit und Gegenfeldmethode.
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

Ein Photon ist das Energiequant der elektromagnetischen Strahlung. Es hat keine Ruhemasse,
bewegt sich im Vakuum mit $c$ und trägt die Energie $E = h f$; $f$ ist die Frequenz der Welle,
$lambda$ ihre Wellenlänge. Für ein masseloses Teilchen gilt $E = p c$, deshalb folgt
$p = h\/lambda$. Die Konstante $h c = 1239","8$ eV nm ist keine neue Naturkonstante, sondern
eine Rechenhilfe: Sie verknüpft Energie in eV mit Wellenlänge in nm.

= Der äußere Photoeffekt

#table(
  columns: (1fr, 1.3fr),
  [Beobachtung], [Klassisch erwartet],
  [unterhalb von $f_G$ passiert nichts, egal wie hell], [genug Intensität müsste reichen],
  [$E_"kin"$ wächst mit $f$, nicht mit der Intensität], [Energie kommt aus der Intensität],
  [sofortiger Einsatz, unter 10 ns], [erst nach Energieaufnahme „Anlaufzeit“],
)

Ein Photon gibt seine Energie $h f$ bei der Wechselwirkung ganz an ein Elektron ab. Ein Teil
davon, die Austrittsarbeit $W_A$, ist nötig, um das Elektron aus dem Metall zu lösen; der Rest
bleibt als kinetische Energie. Nur die Elektronen an der Oberfläche verlieren wenig Energie,
deshalb ist die *maximale* kinetische Energie $h f - W_A$ messbar. Die Intensität legt fest,
wie viele Photonen pro Sekunde auftreffen und damit, wie viele Elektronen ausgelöst werden –
nicht aber, wie viel Energie ein einzelnes Elektron bekommt.

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
    die Steigung ist $h\/e$, die Nullstelle $f_G$.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/05planckkonstante/hbestimmung04.jpg")[Schulseite].],
)
Trägt man die gemessenen Gegenspannungen $U_B$ über der Frequenz auf, liegen die Punkte auf einer Geraden; aus der Steigung folgt $h$, aus dem Achsenabschnitt die Austrittsarbeit des Kathodenmaterials.

Bei der Gegenfeldmethode wird die Spannung so eingestellt, dass gerade kein Elektron mehr die
Anode erreicht. Dann gilt $e U_B = E_"kin,max"$; die Messung erfasst also die schnellsten
Elektronen. Bei fester Frequenz wächst der Fotostrom mit der Intensität, bis alle ausgelösten
Elektronen abgesaugt werden (Sättigungsstrom). Die Gegenspannung ändert dagegen nur die
kinetische Energie der Elektronen, nicht ihre Zahl.

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
  *Bedeutung.* Eine der ersten präzisen Messungen von $h$ aus dem Photoeffekt.

  *Fehler und Sicherheit.* Gegenfeld und Kathodenmaterial sind die kritischen Größen; die Austrittsarbeit wirkt systematisch. Hochspannung abschalten, Vakuumröhre nicht öffnen und UV-Strahlung abschirmen.]

#figure(
  image("../fig/schule/s2_messreihe_zink.jpg", width: 76%),
  caption: [Messreihe für Zink aus dem Schulmaterial: $U_B$ über $f$.
    Quelle: #link("https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/05planckkonstante/hbestimmung02.jpg")[Schulseite].],
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

  *Fehler und Sicherheit.* Schwellenspannung und Wellenlänge sind die Eingangsgrößen; der Serienwiderstand und die LED-Temperatur wirken systematisch. Immer mit Vorwiderstand betreiben und LEDs nicht überlasten.]

Die Auswertung $h f = e U_S$ setzt voraus, dass die Elektronen ihre elektrische Energie
vollständig in ein Photon umwandeln und keine Verluste im Halbleiter auftreten. Deshalb ist
$U_S$ eine Näherung; für eine genaue Bestimmung von $h$ wird die Geradensteigung über mehrere
LED-Farben verwendet.

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

  *Fehler und Sicherheit.* Hochspannung und Wellenlängenablesung tragen die Unsicherheit; die Anodenlinien überlagern das Bremsspektrum systematisch. Röntgenschutz beachten, Strahl nur im abgeschirmten Gerät.]

= Aufgaben

#aufgabe(1, punkte: 10, afb: "II")[
  Eine Cäsium-Kathode ($W_A = 2","14$ eV) wird mit Licht der Wellenlänge 400 nm beleuchtet.

  #enum(
    [Berechnen Sie die Photonenenergie in eV.],
    [Bestimmen Sie $E_"kin,max"$ und die Gegenspannung.],
    [Berechnen Sie die Grenzwellenlänge.]
  )
]

#lösung[
  (1) $E = frac(1239","8, 400) = 3","10$ eV.

  (2) $E_"kin,max" = 3","10 - 2","14 = 0","96$ eV, also $U_B = 0","96$ V.

  (3) $lambda_G = frac(1239","8, 2","14) = 579$ nm. Längerwelliges Licht löst keine Elektronen
  aus, auch bei beliebiger Intensität. Der Handbuchwert ist 2,14 eV; die Quellenmessung
  (536 nm, 0,18 V) ergibt 2,13 eV.
]

#aufgabe(2, punkte: 12, afb: "II")[
  Bei der Gegenfeldmethode werden Beispieldaten einer didaktischen Messreihe verwendet
  (die Quelle nennt für Cäsium 536 nm/0,18 V und für Platin 201 nm/0,53 V):

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
  (1) Die Punkte liegen auf einer Geraden; Steigung $m = 4","13 dot 10^(-15)$ V s,
  Achsenabschnitt $b = -1","90$ V.

  (2) $h = m e = 4","13 dot 10^(-15) dot 1","602 dot 10^(-19) = 6","62 dot 10^(-34)$ J s. Der
  Literaturwert ist 6,626; die Abweichung von 0,1 % ist bei drei Messpunkten normal.

  (3) $W_A = -b e = 1","90$ eV, $f_G = -b\/m = 4","60 dot 10^14$ Hz ($lambda_G = 653$ nm).
]

#aufgabe(3, punkte: 10, afb: "III")[
  Eine Fotozelle wird erst mit rotem, dann mit blauem Licht gleicher Intensität beleuchtet.
  Beurteilen Sie die Aussage: „Mehr Intensität erhöht die Energie der Photoelektronen.“
  Begründen Sie mit der Einstein-Gleichung und unterscheiden Sie Photonenstrom und
  Photonenenergie.
]

#lösung[
  Die Aussage ist falsch. Die maximale kinetische Energie folgt aus
  $h f = W_A + E_"kin,max"$; sie hängt nur von $f$ und $W_A$ ab. Mehr Intensität bedeutet mehr
  Photonen pro Sekunde, also einen größeren Photonenstrom und mehr Elektronen – aber nicht
  schnellere einzelne Elektronen. Blaues Licht hat eine höhere Frequenz und damit eine größere
  maximale Energie als rotes.
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

#vertiefung[
  - Photoeffekt-Simulation: #link("https://www.physik.gym-wst.de/apps/qp/01_photoeffekt01/photoeffekt01.html")[Schulseite]
  - Gegenfeldmethode: #link("https://www.physik.gym-wst.de/apps/qp/02_photoeffekt02a/photoeffekt02a.html")[Schulseite]
]

#quelle[
  *Bearbeitung:* Photoeffekt und Gegenfeld aus zwei Quellseiten zusammengeführt; die Cäsium-Austrittsarbeit ist mit dem Handbuchwert 2,14 eV angegeben, die Quellenmessung ergibt 2,13 eV. Die Gegenfeld-Messreihe ist ausdrücklich als Beispieldaten gekennzeichnet.

  *Quellen (Abruf 2026-11-02).*
  - Photoeffekt/Planck-Konstante: https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/05planckkonstante/docs.md
  - Kerncurriculum Physik Niedersachsen 2022: https://cuvo.nibis.de/
  - CODATA 2018 für $h$, $c$, $e$.
  - Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
