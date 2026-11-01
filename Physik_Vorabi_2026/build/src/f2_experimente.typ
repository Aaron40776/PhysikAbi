#import "../template.typ": *

#show: setup.with(title: "Experimentesammlung", kicker: "Zusatzmaterial")

#cover(
  "Zusatzmaterial · Praktikum",
  "Experimentesammlung",
  "Alle prüfungsrelevanten Experimente mit Aufbau, Durchführung, Beobachtung, Erklärung und Bedeutung",
  lernziele: (
    "jedes Experiment in fünf Schritten strukturiert beschreiben",
    "Beobachtungen physikalisch begründen statt nur zu benennen",
    "Messgrößen und Auswertungsformeln sicher zuordnen",
  ),
)

#toc-page()

= Wie man ein Experiment im Abitur beschreibt

#merksatz[
  Immer dieselbe Struktur: *Aufbau* (welche Bauteile, welche Funktion?) → *Durchführung* (was wird
  variiert, was gemessen?) → *Beobachtung* (was sieht man konkret?) → *Erklärung* (welches Modell,
  welche Formel?) → *Bedeutung* (was beweist das, wo sind Grenzen?).
]

#achtung[
  Der häufigste Punktverlust: Die *Beobachtung* wird durch die *Erklärung* ersetzt („man sieht
  Interferenz, weil …“). Erst beschreiben, was man sieht (Streifen, Ringe, Knick, Leuchtschicht),
  dann erklären.
]

= Schwingungen und Wellen

== Feder-Masse-Pendel: Periodendauer

*Aufbau.* Feder mit Konstante $D$, angehängte Masse $m$, Kraftsensor oder Videoanalyse.
*Durchführung.* $m$ bzw. $D$ variieren, je 10 Perioden messen.
*Beobachtung.* Sinusförmiger Verlauf; $T$ wächst mit $sqrt(m)$, sinkt mit $sqrt(D)$.
*Erklärung.* Lineare Rückstellkraft → harmonische Schwingung, $T = 2 pi sqrt(m\/D)$.
*Bedeutung.* Bestätigt das lineare Kraftgesetz; Messmethode für $D$. Grenzen: Dämpfung,
Federmasse, große Amplituden (nichtlinear).

== Stehende Ultraschallwelle: Wellenlänge und Schallgeschwindigkeit

*Aufbau.* Ultraschallsender ($f$ bekannt), reflektierende Platte auf Schiene, Mikrofon/Empfänger.
*Durchführung.* Platte verschieben, Positionen maximaler Amplitude notieren.
*Beobachtung.* Periodische Maxima im Abstand $Delta x = lambda\/2$.
*Erklärung.* Überlagerung von einlaufender und reflektierter Welle zur stehenden Welle.
*Bedeutung.* $lambda = 2 Delta x$, $c = lambda f$; einfache Präzisionsmessung.

== Doppelspalt und Gitter: Wellenlängenmessung

*Aufbau.* Laser, Doppelspalt/Gitter, Schirm im Abstand $e$, Maßstab.
*Durchführung.* $e$ messen, Positionen $a_n$ der Maxima bestimmen.
*Beobachtung.* Äquidistante Streifen; beim Gitter scharf und bei weißem Licht spektral zerlegt.
*Erklärung.* Gangunterschied $Delta s = g sin alpha$; Verstärkung bei $n lambda$.
*Auswertung.* $lambda = g sin(arctan(a_n\/e))\/n$ bzw. $Delta a = lambda e\/g$.
*Bedeutung.* Nachweis der Wellennatur; Grenzen: Kleinwinkel, Spaltbreite.

== Michelson-Interferometer

*Aufbau.* Strahlteiler, zwei Arme mit Spiegeln, Schirm.
*Durchführung.* Spiegel um $Delta d$ verschieben, $N$ Streifen zählen.
*Beobachtung.* Jede Verschiebung um $lambda\/2$ ergibt einen Streifendurchlauf.
*Erklärung.* Wegänderung $2 Delta d$.
*Bedeutung.* $lambda = 2 Delta d\/N$; hochempfindliche Längenmessung, Brechungsindex von Gasen.

== Bragg-Reflexion (CD, Kristall)

*Aufbau.* Laser, CD/Kristall, Schirm.
*Durchführung.* Einfallswinkel variieren, Beugungsordnungen messen.
*Beobachtung.* Diskrete Reflexe unter Winkeln, die die Bragg-Bedingung erfüllen.
*Erklärung.* Gangunterschied $2 d sin alpha$ zwischen benachbarten Netzebenen.
*Bedeutung.* $d = n lambda\/(2 sin alpha)$; Brücke zur Elektronenbeugung.

= Lichtquanten

== Fotozelle mit Gegenfeld

*Aufbau.* Vakuum-Fotozelle, Gegenspannung, Amperemeter, Farbfilter/Monochromator.
*Durchführung.* Für mehrere Wellenlängen $U_B$ bis zum Verschwinden des Stroms erhöhen.
*Beobachtung.* Linearer Abfall; Knickpunkte liegen auf einer Geraden über $f$.
*Erklärung.* $e U_B = h f - W_A$.
*Bedeutung.* $h = e dot$ Steigung; Nachweis der Lichtquanten. Grenzen: Kontaktspannung,
spektrale Breite.

== h-Bestimmung mit LEDs

*Aufbau.* LEDs verschiedener Farbe, regelbare Spannungsquelle, Voltmeter, Dunkelkammer.
*Durchführung.* Einsatzspannung $U_S$ bestimmen, bei der die LED gerade leuchtet.
*Beobachtung.* $U_S$ wächst mit der Frequenz.
*Erklärung.* $e U_S = h f$.
*Bedeutung.* $h = e dot m$ aus der Steigung; einfacher Schülerversuch, Fehler einige Prozent.

== h aus dem Röntgenbremsspektrum

*Aufbau.* Röntgenröhre, Bragg-Spektrometer, Detektor.
*Durchführung.* Spektrum bei bekannter Spannung aufnehmen, $lambda_min$ bestimmen.
*Beobachtung.* Scharfe kurzwellige Grenze, unabhängig vom Target.
*Erklärung.* $e U_B = h c\/lambda_min$.
*Bedeutung.* Präzise, materialunabhängige $h$-Bestimmung.

== Compton-Effekt

*Aufbau.* Röntgenquelle, Graphitstreuer, Spektrometer unter variierbarem Winkel.
*Beobachtung.* Gestreute Strahlung hat größere Wellenlänge; Zunahme wächst mit dem Winkel.
*Erklärung.* Elastischer Stoß Photon–Elektron mit Energie- und Impulserhaltung.
*Bedeutung.* Beweis für Photonenimpuls $p = h\/lambda$.

= Materiewellen

== Elektronenbeugungsröhre (Graphit)

*Aufbau.* Glühkathode, Wehneltzylinder, Anode, Graphitfolie, Leuchtschirm; $U_B$ regelbar.
*Durchführung.* $U_B$ variieren, Ringradien $r_n$ messen; $a$ (Folie–Schirm) bestimmen.
*Beobachtung.* Zwei konzentrische Ringe, die mit steigender Spannung kleiner und schärfer werden.
*Erklärung.* Bragg-Reflexion an Netzebenen; $n lambda = 2 d sin delta$; mit
$sin delta = r\/(2a)$ folgt $lambda = d r\/(n a)$.
*Bedeutung.* Nachweis der Wellennatur von Elektronen, Bestätigung von $lambda = h\/p$.
Grenzen: mehrere Netzebenenscharen, dicke Folie, Kathodenfall.

== Davisson-Germer

*Aufbau.* Elektronenkanone auf Nickelkristall, drehbarer Detektor.
*Beobachtung.* Intensitätsmaxima unter diskreten Winkeln.
*Erklärung.* Bragg-Reflexion an Netzebenen des Nickels.
*Bedeutung.* Erster quantitativer Beleg der Materiewellen.

== Tonomura: Einzelelektronen am Doppelspalt

*Aufbau.* Elektronenquelle mit extrem kleiner Rate, Biprisma/Doppelspalt, Detektor.
*Beobachtung.* Einzelne Punkte; mit der Zeit Aufbau des Interferenzmusters.
*Erklärung.* Jedes Elektron interferiert mit sich selbst; Statistik der Amplituden.
*Bedeutung.* Stochastische Deutung, Selbstinterferenz.

= Quantenoptik

== Doppelspalt mit einzelnen Photonen

*Aufbau.* Einzelphotonenquelle, Doppelspalt, ortsauflösender Detektor, Koinzidenzlogik.
*Beobachtung.* Punktförmige Nachweise, die sich zum Interferenzmuster summieren.
*Erklärung.* Amplituden beider Wege interferieren; $P = |Psi_1 + Psi_2|^2$.
*Bedeutung.* Interferenz ohne Wechselwirkung zwischen Photonen.

== Welcher-Weg-Detektor

*Aufbau.* Doppelspalt oder MZI mit zusätzlichem Detektor in einem Weg.
*Beobachtung.* Aus: Interferenz. Ein: keine Interferenz, je 50 %.
*Erklärung.* Verfügbare Weginformation → Addition der Wahrscheinlichkeiten.
*Bedeutung.* Komplementarität; „prinzipielle Verfügbarkeit“ genügt.

== Mach-Zehnder-Interferometer

*Aufbau.* Quelle, zwei 50:50-Strahlteiler, zwei Spiegel, zwei Detektoren.
*Durchführung.* Spiegel verschieben (Phase ändern); Detektor ein-/ausbauen; Strahlteiler 2 spät
einfügen (Delayed Choice).
*Beobachtung.* Periodische Helligkeitsverteilung (Periode $lambda\/2$); mit Weginfo je 50 %.
*Erklärung.* Zeigeraddition aller möglichen Wege (QED).
*Bedeutung.* Komplementarität, Nichtlokalität, Delayed Choice ohne Modellwechsel.

== h-Bestimmung (LED) und Planck-Konstante — Kurzvergleich

#table(
  columns: (1fr, 1fr, 1fr),
  [Methode], [Messgröße], [Formel],
  [Fotozelle + Gegenfeld], [$U_B$ bei mehreren $f$], [$h = e U_B\/f + W_A\/f$],
  [LED], [$U_S$ bei mehreren $f$], [$h = e U_S\/f$],
  [Röntgen], [$lambda_min$ bei $U_B$], [$h = e U_B lambda_min\/c$],
)

= Atomphysik

== Rutherford-Streuung

*Aufbau.* Alpha-Quelle, Goldfolie, drehbarer Szintillationsschirm, Vakuum.
*Beobachtung.* Meist geringe Ablenkung, wenige große Winkel (bis Rückstreuung).
*Erklärung.* Coulomb-Abstoßung an einem kleinen, schweren, positiv geladenen Kern.
*Bedeutung.* Kern-Hülle-Modell; Kernradius $tilde 10^(-14)$ m.

== Linienspektren (Gasentladung)

*Aufbau.* Entladungsröhre (H, Na, Hg), Gitter/Prisma, Schirm oder Kamera.
*Beobachtung.* Diskrete helle Linien; beim Wasserstoff Balmer-Serie.
*Erklärung.* Übergänge zwischen diskreten Niveaus; $h f = Delta E$.
*Bedeutung.* Direkter Zugang zu den Energieniveaus.

== Resonanzabsorption (Natriumdampf)

*Aufbau.* Natriumdampfzelle, Natriumdampflampe, Spektrometer.
*Beobachtung.* Die Natrium-D-Linie erscheint als dunkle Absorptionslinie.
*Erklärung.* Nur Photonen mit $h f = Delta E$ werden absorbiert.
*Bedeutung.* Belegt diskrete Niveaus unabhängig von Emissionsspektren.

== Franck-Hertz-Versuch

*Aufbau.* Röhre mit Hg/Ne, Glühkathode, Gitteranode ($U_B$), Auffangelektrode (Gegenspannung
$approx 1$ V), Amperemeter.
*Durchführung.* $U_B$ langsam erhöhen, $I(U_B)$ aufnehmen, Leuchterscheinung beobachten.
*Beobachtung.* Periodische Maxima im Abstand $Delta U$; bei Neon orange Leuchtschicht, die mit
$U_B$ wandert.
*Erklärung.* Unelastische Stöße: Elektronen geben genau $Delta E = e Delta U$ ab; danach erneut
beschleunigt → Periodizität.
*Bedeutung.* Quantenhafte Anregung durch Elektronenstoß; $Delta E = e Delta U$.

== Röntgenröhre / Röntgenspektrum

*Aufbau.* Glühkathode, Metallanode, Hochspannung, Bragg-Spektrometer.
*Beobachtung.* Kontinuierliches Bremsspektrum mit Grenze $lambda_min$ plus charakteristische Linien.
*Erklärung.* Abbremsung von Elektronen im Kernfeld bzw. Übergänge in inneren Schalen.
*Bedeutung.* $h$-Bestimmung, Materialanalyse (Röntgenfluoreszenz).

= Schnellübersicht: Welches Experiment zeigt was?

#table(
  columns: (1fr, 1fr),
  [Aussage], [Experiment(e)],
  [Energie ist quantisiert (Licht)], [Photoeffekt, LED, Röntgenbremsspektrum],
  [Licht hat Impuls], [Compton-Effekt],
  [Elektronen sind Wellen], [Elektronenbeugung, Davisson-Germer],
  [Interferenz bei einzelnen Quanten], [Tonomura, Einzelphotonen-Doppelspalt],
  [Weginfo zerstört Interferenz], [Welcher-Weg, MZI],
  [Atome haben diskrete Niveaus], [Linienspektren, Franck-Hertz],
  [Kern ist klein und schwer], [Rutherford-Streuung],
)

#quelle[
  *Quellen.* Eigene Zusammenstellung nach den Skripten 1–7. Grundlage:
  https://www.physik.gym-wst.de (Versuchsdarstellungen und Simulationen), Kerncurriculum Physik
  Niedersachsen 2022, IQB-Aufgabenpool 2025/2026 (fachpraktische Anteile).
]
