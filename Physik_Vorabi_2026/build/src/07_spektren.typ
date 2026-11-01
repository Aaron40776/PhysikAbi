#import "../template.typ": *

#show: setup.with(title: "Spektren und Franck-Hertz-Versuch", kicker: "Skript 7 · Spektroskopie")

#cover(
  "Skript 7 · Spektren und Quantisierung",
  "Spektren und Franck-Hertz-Versuch",
  "Emissions- und Absorptionsspektren, Röntgenstrahlung, Resonanzabsorption und der Franck-Hertz-Versuch",
  lernziele: (
    "kontinuierliche Spektren und Linienspektren unterscheiden",
    "Spektrallinien mit Energieniveaus verknüpfen und berechnen",
    "das Röntgenspektrum in Brems- und charakteristische Strahlung zerlegen",
    "den Franck-Hertz-Versuch aufbauen, auswerten und deuten",
    "die Anregung durch Photonen und durch Elektronen vergleichen",
  ),
)

#toc-page()

= Einstieg: Was verrät uns Licht über Atome?

Ein leuchtendes Gas sendet Licht nur in bestimmten Farben aus. Zerlegt man dieses Licht mit einem
Gitter, so erscheinen *scharfe Linien* statt eines Regenbogens. Diese Linienspektren sind der
direkteste Zugang zu den Energieniveaus von Atomen: Jede Linie entspricht einem Übergang zwischen
zwei erlaubten Energien.

Damit wird die Quantenhypothese überprüfbar: Wenn Atome wirklich nur diskrete Energien besitzen,
müssen ihre Spektren diskret sein – und umgekehrt.

#merksatz[
  Eine Spektrallinie ist die „Signatur“ eines Energieübergangs. Aus ihrer Wellenlänge folgt
  $Delta E = h c\/lambda$; aus der Lage der Linien lässt sich das Niveauschema rekonstruieren.
]

= Spektrenarten

== Kontinuierliche Spektren

Glühende Festkörper und dichte Gase senden ein *kontinuierliches* Spektrum aus: alle Wellenlängen
sind vertreten, die Intensität folgt der planckschen Verteilung. Ursache: Viele Atome wechselwirken
miteinander, die Energieniveaus verschmieren zu Bändern.

== Linienspektren

Verdünnte Gase in einer Entladungsröhre senden *Linienspektren* aus: einzelne scharfe Linien auf
dunklem Grund. Ursache: Freie Atome haben wohldefinierte, diskrete Niveaus.

#table(
  columns: (auto, 1fr, 1fr),
  [Spektrum], [Entstehung], [Beispiel],
  [kontinuierlich], [dichte Materie, viele Wechselwirkungen], [Glühlampe, Sonneninneres],
  [Emissionslinienspektrum], [angeregte freie Atome], [Wasserstoff-Entladung],
  [Absorptionslinienspektrum], [weißes Licht durch kaltes Gas], [Fraunhofer-Linien der Sonne],
)

== Emissions- und Absorptionsspektrum

#definition[
  *Emission:* Ein angeregtes Atom geht in einen tieferen Zustand über und sendet ein Photon mit
  $h f = E_"oben" - E_"unten"$ aus.
  *Absorption:* Ein Atom im tieferen Zustand absorbiert ein Photon genau passender Energie und geht
  in den höheren Zustand über.
]

#merksatz[
  Emissions- und Absorptionslinien desselben Gases liegen bei *denselben* Wellenlängen. Die
  Absorptionslinien erscheinen als dunkle Linien im kontinuierlichen Spektrum, weil genau diese
  Photonen „herausgefiltert“ werden.
]

#figure(
  image("../fig/energieniveaus_h.svg", width: 88%),
  caption: [Energieniveauschema des Wasserstoffs mit ausgewählten Übergängen. Die eingezeichneten Wellenlängen gehören zur Balmer-Serie (Zielniveau $n = 2$).],
)

= Energieniveaus und Spektrallinien

== Berechnung von Wellenlängen

Für Wasserstoff gilt $E_n = -13","6 "eV"\/n^2$. Ein Übergang von $n$ nach $m$ ($n > m$) liefert

$ Delta E = E_n - E_m = 13","6 "eV" (1/m^2 - 1/n^2) quad "und" quad lambda = h c/(Delta E) $

Mit $h c = 1240$ eV nm wird die Rechnung zur Einzeiler-Aufgabe.

#herleitung[*Balmer-Serie*]
  Für $m = 2$: $Delta E = 13","6 (1\/4 - 1\/n^2)$ eV. Für $n = 3$:
  $Delta E = 13","6 (0","25 - 0","1111) = 1","89$ eV, also
  $lambda = 1240\/1","89 = 656$ nm (rot). Für $n = 4$: $Delta E = 2","55$ eV,
  $lambda = 486$ nm (blaugrün). Für $n -> infinity$ strebt $Delta E -> 3","4$ eV, also
  $lambda -> 365$ nm – die *Seriengrenze*.

== Serien des Wasserstoffs

#table(
  columns: (auto, auto, 1fr),
  [Serie], [Zielniveau], [Spektralbereich],
  [Lyman], [$m = 1$], [UV (91–122 nm)],
  [Balmer], [$m = 2$], [sichtbar + nahes UV (365–656 nm)],
  [Paschen], [$m = 3$], [Infrarot],
)

#prüfung[
  Eine typische Aufgabe gibt ein Niveauschema und verlangt: „Berechnen Sie die Wellenlängen aller
  möglichen Übergänge und ordnen Sie sie den beobachteten Linien zu.“ Arbeiten Sie immer von oben
  nach unten und prüfen Sie, ob die Summe der Energiedifferenzen stimmt
  ($Delta E_(3->1) = Delta E_(3->2) + Delta E_(2->1)$).
]

= Das Röntgenspektrum

== Aufbau der Röntgenröhre

#experiment[
  *Aufbau.* Glühkathode, Anode (Metalltarget) in einer evakuierten Röhre, hohe
  Beschleunigungsspannung $U_B$ (typisch 20–100 kV), Kühlung des Targets.
  *Durchführung.* Röntgenspektrum mit einem Kristallspektrometer (Bragg-Reflexion) aufnehmen.
  *Beobachtung.* Ein kontinuierliches *Bremsspektrum* mit einer scharfen *kurzwelligen Grenze*
  $lambda_min$ und überlagerte *charakteristische Linien* des Targetmaterials.
  *Erklärung.* Bremsstrahlung entsteht, wenn Elektronen im Feld der Atomkerne abgebremst werden;
  die maximale Photonenenergie ist $e U_B$. Die charakteristischen Linien entstehen durch
  Übergänge in den inneren Schalen der Targetatome.
  *Auswertung.* $lambda_min$: $h = e U_B lambda_min \/ c$; charakteristische Linien: aus den
  Niveaus des Targetmaterials (Moseley-Gesetz).
]

== Kurzwellige Grenze

Ein Elektron kann höchstens seine gesamte kinetische Energie in ein Photon umwandeln:

$ e U_B = h c/lambda_min quad => quad lambda_min = (h c)/(e U_B) $

#herleitung[*Zahlenbeispiel zur Grenzwellenlänge*]
  Für $U_B = 30$ kV: $lambda_min = (6","626 dot 10^(-34) dot 2","998 dot 10^8)\/(1","602 dot
  10^(-19) dot 3","0 dot 10^4) = (1","987 dot 10^(-25))\/(4","806 dot 10^(-15))
  = 4","1 dot 10^(-11)$ m $= 41$ pm. Merkregel: $lambda_min \/[ "nm"] approx 1240\/(U_B\/"V")$
  (grob), also bei 30 kV rund $0","041$ nm.

== Charakteristische Strahlung

Wird ein inneres Elektron (z. B. aus der K-Schale) herausgeschlagen, rückt ein Elektron aus einer
höheren Schale nach und sendet ein Photon mit der Energiedifferenz aus. Diese Linien sind
*elementspezifisch* – daher der Name. Sie sind die Grundlage der Röntgenfluoreszenzanalyse.

#achtung[
  Verwechseln Sie nicht: Das *Bremsspektrum* ist kontinuierlich und hängt nur von $U_B$ ab; die
  *charakteristischen Linien* sind diskret und hängen vom Targetmaterial ab. Die kurzwellige
  Grenze gehört zum Bremsspektrum.
]

= Resonanzabsorption und Fluoreszenz

== Resonanzabsorption

Ein Gas absorbiert nur Photonen, deren Energie genau einer Niveaudifferenz entspricht. Bestrahlt
man Natriumdampf mit dem Licht einer Natriumdampflampe, so wird genau die Natrium-D-Linie
absorbiert; das durchgehende Licht zeigt eine dunkle Linie.

#experiment[
  *Aufbau.* Natriumdampf in einer evakuierten Küvette (erhitzt), dahinter eine Natriumdampflampe
  und ein Spektrometer.
  *Beobachtung.* Die Natrium-Doppellinie erscheint im durchgehenden Licht als Absorptionslinie;
  erwärmt man stärker (mehr Dampf), wird sie tiefer.
  *Erklärung.* Nur Photonen mit $h f = Delta E$ können absorbiert werden; die Atome gehen in den
  angeregten Zustand und senden die Energie später in alle Richtungen wieder ab (Resonanzfluoreszenz).
  *Bedeutung.* Belegt die Existenz diskreter Niveaus unabhängig von Emissionsspektren.
]

== Fluoreszenz

#definition[
  *Fluoreszenz:* Absorption eines Photons, strahlungslose Relaxation in einen tieferen angeregten
  Zustand und Emission eines Photons geringerer Energie (längere Wellenlänge). Die Emission endet
  praktisch sofort nach dem Absorptionsvorgang.
]

Anwendungen: Leuchtstoffröhre (UV-Anregung von Quecksilberdampf, Emission sichtbaren Lichts durch
Leuchtstoffe), weiße LED (blauer Chip + gelbgrüner Leuchtstoff), Textmarker.

= Der Franck-Hertz-Versuch

== Die zentrale Frage

Bei der Anregung durch Photonen gilt: Nur passende Energien werden aufgenommen. Gilt das auch, wenn
*freie Elektronen* mit Atomen stoßen? Ein freies Elektron kann man beliebig beschleunigen – es
könnte also theoretisch jede Energiemenge übertragen. Der Franck-Hertz-Versuch zeigt: Nein, auch
beim Stoß werden nur bestimmte Energiebeträge übertragen.

== Aufbau

#experiment[
  *Versuchsaufbau.* Evakuierte Röhre mit einem Tropfen Quecksilber (oder Neon), das durch Erhitzen
  auf etwa $180 degree$ C verdampft. Glühkathode (ca. 6 V Heizspannung) emittiert Elektronen;
  eine Gitteranode wird mit der Beschleunigungsspannung $U_B$ betrieben; dahinter liegt eine
  Auffangelektrode mit einer *Gegenspannung* von etwa 1 V. Ein Amperemeter misst den
  Auffängerstrom.
  *Funktion der Gegenspannung.* Sie sorgt dafür, dass bei $U_B = 0$ kein Strom fließt: Nur
  Elektronen mitmindestens 1 eV kinetischer Energie erreichen die Auffangelektrode.
  *Durchführung.* $U_B$ langsam von 0 an erhöhen und $I$ messen; Messkurve $I(U_B)$ aufnehmen.
]

#figure(
  image("../fig/franckhertz.svg", width: 88%),
  caption: [$I$-$U_B$-Kennlinie (schematisch): periodische Maxima im Abstand $Delta U approx 11$ V (Neon). Die Verschiebung des ersten Maximums von null heißt Kontaktspannung.],
)

== Beobachtung

- Der Strom steigt zunächst an.
- Bei einer bestimmten Spannung fällt er steil ab (erstes Maximum).
- Danach steigt er wieder, fällt erneut ab usw. – periodische Maxima mit konstantem Abstand
  $Delta U$.
- Bei Neon leuchtet die Röhre in einem Bereich zwischen Kathode und Gitter orange; die leuchtende
  Schicht wandert mit steigender Spannung in Richtung Gitter und es erscheinen mehrere Leuchtstreifen.

#table(
  columns: (auto, auto, auto),
  [Gas], [Anregungsenergie], [Abstand der Maxima],
  [Quecksilber], [4,9 eV], [4,9 V],
  [Neon], [ca. 16,7 eV (erste Anregung); beobachtet oft ca. 11 V durch Stöße zweiter Art], [ca. 11 V (unterrichtsüblich)],
)

#achtung[
  Die in Schulversuchen mit Neon beobachtete Periodizität von etwa 11 V ist *nicht* einfach die
  erste Anregungsenergie von Neon (diese liegt bei etwa 16,7 eV). Die Ursache sind zusätzliche
  Stoßprozesse (unter anderem Stöße zweiter Art, bei denen Neon bereits angeregte Zustände
  übernimmt). Im Abitur wird in der Regel mit dem *gemessenen* Abstand gerechnet – verwenden Sie
  die Werte aus der Aufgabenstellung.
]

== Erklärung

Bei kleinen Spannungen reicht die kinetische Energie nicht aus, um ein Atom anzuregen; die
Elektronen stoßen elastisch und erreichen die Auffangelektrode. Erreicht die Energie die
Anregungsenergie $Delta E$, so kann ein Elektron bei einem Stoß *genau* $Delta E$ abgeben; es
verliert fast seine gesamte Geschwindigkeit und wird von der Gegenspannung abgefangen – der Strom
sinkt.

Nach einem unelastischen Stoß wird das Elektron erneut beschleunigt. Bei $U_B = 2 Delta E \/ e$
kann es zweimal anregen, bei $3 Delta E \/ e$ dreimal usw. Daher die Periodizität.

#herleitung[*Anregungsenergie aus dem Maximumsabstand*]
  Die Maxima liegen bei $U_n = n dot Delta E\/e + U_"Kontakt"$. Der Abstand benachbarter Maxima
  ist $Delta U = Delta E\/e$, also $Delta E = e dot Delta U$. Mit $Delta U = 11$ V folgt
  $Delta E = 11$ eV. Die Kontaktspannung ($U_"Kontakt"$) verschiebt alle Maxima um einen
  konstanten Betrag und lässt sich aus dem ersten Maximum bestimmen.

== Leuchterscheinung und Kennlinie

Das angeregte Atom sendet beim Zurückfallen ein Photon mit $h f = Delta E$ aus – das ist die
Leuchterscheinung. Bei Neon liegt die emittierte Wellenlänge im orangen Bereich
($lambda = 1240\/16","7 approx 74$ nm im UV für die erste Anregung; die sichtbare Emission stammt
von tieferen Übergängen). Mit steigender Spannung verschiebt sich die Zone, in der die Elektronen
die Anregungsenergie erreichen, in Richtung Gitter – die Leuchtschicht wandert.

== Anregung durch Photonen und durch Elektronen

#table(
  columns: (1fr, 1fr),
  [Anregung mit Photonen], [Anregung mit Elektronen],
  [Nur Photonen mit $h f = Delta E$ werden absorbiert (Resonanz).], [Elektronen mit $E >= Delta E$
  können anregen; sie geben genau $Delta E$ ab und behalten den Rest.],
  [Das Photon verschwindet vollständig (Absorption).], [Das Elektron bleibt erhalten und fliegt
  weiter (verringerte Geschwindigkeit).],
  [Sehr selektiv; keine Anregung „auf Vorrat“.], [Weniger selektiv; Überschussenergie bleibt als
  kinetische Energie.],
)

#merksatz[
  Beide Experimente zeigen dieselbe Quantisierung, aber mit unterschiedlichem Mechanismus:
  Photonen werden *ganz* absorbiert, Elektronen geben *nur den Quantenbetrag* ab.
]

= Experimente

== Experiment: Franck-Hertz mit Neon (Auswertung)

#experiment[
  *Messgrößen.* $U_B$ und $I$; zusätzlich Beobachtung der Leuchtschicht.
  *Auswertung.* Maxima lokalisieren, Abstände mitteln:
  $Delta U = (U_3 - U_1)\/2$; daraus $Delta E = e Delta U$.
  *Fehlerquellen.* Kontaktspannung, Raumladung, elastische Stöße, Temperaturschwankungen.
]

== Experiment: Bestimmung von $h$ aus dem Röntgenbremsspektrum

#experiment[
  *Aufbau.* Röntgenröhre, Drehkristall oder Bragg-Spektrometer, Detektor.
  *Auswertung.* $lambda_min$ bei zwei Spannungen bestimmen und $h = e U_B lambda_min\/c$ berechnen;
  alternativ $lambda_min$ über $1\/U_B$ auftragen (Ursprungsgerade).
  *Bedeutung.* Unabhängige Bestätigung der Quantenhypothese.
]

= Abituraufgaben

#aufgabe(1, punkte: 14)[
  Eine Franck-Hertz-Röhre mit Neon wird betrieben. Die Strommaxima liegen bei
  $U_1 = 18","6$ V, $U_2 = 29","4$ V und $U_3 = 40","2$ V.
  #enum(
    [Bestimmen Sie den Abstand der Maxima und die Anregungsenergie.],
    [Erklären Sie das Zustandekommen der Periodizität mit einem Energieschema.],
    [Erläutern Sie, warum die Leuchtschicht mit steigender Spannung wandert.],
  )
]

#lösung[
  *Zu 1.* $Delta U = (40","2 - 18","6)\/2 = 10","8$ V; also $Delta E = 10","8$ eV. Der
  Kontaktabstand ergibt sich aus $U_1 = Delta U + U_"Kontakt"$ zu $U_"Kontakt" = 7","8$ V.

  *Zu 2.* Bei $U_B < 10","8$ V stoßen die Elektronen elastisch und erreichen die Auffangelektrode.
  Bei $10","8$ V können sie erstmals genau $10","8$ eV an ein Neonatom abgeben; sie verlieren
  ihre kinetische Energie und werden von der Gegenspannung abgefangen – der Strom sinkt. Bei
  $21","6$ V reicht die Energie für zwei Anregungen, bei $32","4$ V für drei. Da die Elektronen
  nach jeder Anregung wieder beschleunigt werden, entstehen Maxima im Abstand von $10","8$ V.

  *Zu 3.* Die Anregungszone liegt dort, wo die Elektronen gerade $10","8$ eV erreicht haben. Mit
  steigender Spannung wird diese Stelle weiter von der Kathode entfernt, also näher am Gitter –
  die Leuchtschicht wandert. Bei ausreichend hoher Spannung können mehrere Zonen entstehen
  (mehrere Leuchtstreifen).
]

#aufgabe(2, punkte: 12)[
  Ein Röntgenspektrum wird bei $U_B = 25","0$ kV aufgenommen.
  #enum(
    [Berechnen Sie die kurzwellige Grenze.],
    [Erklären Sie, warum diese Grenze unabhängig vom Targetmaterial ist.],
    [Die charakteristische K-Linie des Targets liegt bei 0","154 nm. Berechnen Sie die
     zugehörige Energie und ordnen Sie sie ein.],
  )
]

#lösung[
  *Zu 1.* $lambda_min = h c\/(e U_B) = (6","626 dot 10^(-34) dot 2","998 dot 10^8)\/
  (1","602 dot 10^(-19) dot 2","50 dot 10^4) = 4","96 dot 10^(-11)$ m $= 49","6$ pm.

  *Zu 2.* Die Grenze entsteht, wenn ein einzelnes Elektron seine *gesamte* kinetische Energie
  $e U_B$ in ein einziges Photon umwandelt. Diese Energie hängt nur von der Beschleunigungsspannung
  ab, nicht von der Atomsorte des Targets. Das Targetmaterial bestimmt nur die charakteristischen
  Linien.

  *Zu 3.* $E = h c\/lambda = 1240 "eV nm"\/0","154 "nm" = 8050$ eV $approx 8","1$ keV. Das ist
  eine typische K-Linien-Energie eines Übergangs in die innerste Schale eines mittelschweren
  Elements (z. B. Kupfer: 8,0 keV) – die charakteristische Strahlung liegt im Bereich harter
  Röntgenstrahlung.
]

#aufgabe(3, punkte: 10)[
  Erklären Sie den Unterschied zwischen Emissions- und Absorptionsspektrum am Beispiel des
  Wasserstoffs. Gehen Sie darauf ein, warum die Linien bei denselben Wellenlängen liegen.
]

#lösung[
  Im *Emissionsspektrum* erscheinen helle Linien auf dunklem Grund: Angeregte Wasserstoffatome
  gehen unter Emission von Photonen in tiefere Zustände über. Die Photonenenergie ist
  $h f = E_n - E_m$ (oben nach unten).

  Im *Absorptionsspektrum* durchstrahlt man Wasserstoff im Grundzustand mit kontinuierlichem Licht.
  Nur Photonen, deren Energie genau einer Niveaudifferenz entspricht, werden absorbiert; sie fehlen
  im durchgehenden Licht und erscheinen als dunkle Linien.

  Die Wellenlängen sind identisch, weil in beiden Fällen derselbe Energieunterschied zwischen
  denselben Niveaus auftritt: Emission ist der Übergang nach unten, Absorption der umgekehrte
  Übergang nach oben. Die Photonenenergie hängt nur von den Niveaus ab, nicht von der
  Übergangsrichtung. Ein Unterschied besteht in der *Besetzung*: Im kalten Gas sind die Atome
  überwiegend im Grundzustand, daher beobachtet man im Absorptionsspektrum vor allem Übergänge
  von $n = 1$ (Lyman-Serie).
]

= Typische Fehler

#achtung[
  *1. Emissions- und Absorptionslinien für verschieden gehalten.* Sie liegen bei denselben
  Wellenlängen.

  *2. Bremsspektrum und charakteristische Linien verwechselt.* Kontinuum hängt von $U_B$ ab,
  Linien vom Material.

  *3. $Delta E = E_n + E_m$ gerechnet.* Es ist die Differenz; Vorzeichen beachten (Niveaus sind
  negativ).

  *4. nm und eV gemischt.* Nutzen Sie $h c = 1240$ eV nm als Brücke.

  *5. Beim Franck-Hertz-Versuch die Kontaktspannung ignoriert.* Sie verschiebt die Maxima; für die
  Anregungsenergie zählt nur der *Abstand*.

  *6. „Das Elektron gibt beim Stoß beliebig viel Energie ab“. * Es gibt genau den Quantenbetrag ab
  und behält den Rest.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Linienspektren belegen diskrete Energieniveaus.
- Emission und Absorption liegen bei gleichen Wellenlängen.
- $Delta E = h c\/lambda$ verbindet Spektrum und Niveauschema.
- Das Röntgenspektrum besteht aus Bremsspektrum (kontinuierlich, $lambda_min = h c\/(e U_B)$) und
  charakteristischen Linien (elementspezifisch).
- Der Franck-Hertz-Versuch zeigt die Quantisierung bei *Elektronenstoß*; die Maxima haben den
  Abstand $Delta U = Delta E\/e$.

== Zentrale Formeln

#table(
  columns: (1fr, 1fr),
  [Formel], [Bedeutung],
  [$Delta E = h f = h c\/lambda$], [Übergangsenergie],
  [$E_n = -13","6 "eV"\/n^2$], [Wasserstoffniveaus],
  [$1\/lambda = R (1\/m^2 - 1\/n^2)$], [Serienformel],
  [$lambda_min = h c\/(e U_B)$], [kurzwellige Grenze],
  [$Delta E = e dot Delta U$], [Franck-Hertz],
  [$U_n = n Delta E\/e + U_"Kontakt"$], [Lage der Maxima],
)

== Wichtigste Experimente

#table(
  columns: (1fr, 1fr, 1fr),
  [Experiment], [Beobachtung], [Aussage],
  [Gasentladung + Gitter], [Linienspektrum], [diskrete Niveaus],
  [Absorption mit Natriumdampf], [Resonanzabsorption], [selektive Absorption],
  [Röntgenröhre + Spektrometer], [Bremsspektrum + Linien], [$h$, Materialabhängigkeit],
  [Franck-Hertz], [periodische Maxima], [quantenhafte Anregung durch Elektronen],
)

== Fachbegriffe

Kontinuierliches Spektrum · Linienspektrum · Emission · Absorption · Resonanzabsorption ·
Fluoreszenz · Seriengrenze · Balmer-Serie · Bremsspektrum · kurzwellige Grenze ·
charakteristische Strahlung · Anregungsenergie · Kontaktspannung · Leuchtschicht ·
Stoß zweiter Art

== Typische Prüfungsfragen

- „Erklären Sie die Entstehung eines Linienspektrums.“
- „Berechnen Sie die Wellenlänge eines Übergangs.“
- „Werten Sie die Franck-Hertz-Kurve aus.“
- „Warum ist die kurzwellige Grenze materialunabhängig?“
- „Vergleichen Sie Anregung mit Photonen und Elektronen.“

== Auswendig können

- $Delta E = h f = h c\/lambda$, $h c = 1240$ eV nm
- $E_n = -13","6 "eV"\/n^2$, $R = 1","097 dot 10^7$ 1/m
- $lambda_min = h c\/(e U_B)$
- $Delta E = e dot Delta U$ (Franck-Hertz)
- Reihenfolge: Lyman (UV), Balmer (sichtbar), Paschen (IR)

== Wirklich verstehen

- Warum Emission und Absorption dieselben Linien liefern
- Warum das Bremsspektrum kontinuierlich ist und trotzdem eine scharfe Grenze hat
- Warum der Franck-Hertz-Strom periodisch einbricht
- Warum die Leuchtschicht wandert

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik, Jahrgang 13: „Emissionsspektren“, „Absorptionsspektren“,
    „Franck-Hertz-Versuch“, „Röntgenspektrum“ (mit Simulationen) –
    https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022: Linienspektren, Resonanzabsorption,
    Franck-Hertz-Versuch, Röntgenspektrum, Fluoreszenz.
  - Grafiken: eigene Darstellungen (franckhertz.svg, energieniveaus_h.svg).
]
