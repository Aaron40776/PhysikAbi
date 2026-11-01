#import "../template.typ": *

#show: setup.with(title: "Doppelspalt und Quantenphysik", kicker: "Skript 4 · Quantenobjekte")

#cover(
  "Skript 4 · Quantenobjekte",
  "Doppelspalt und Quantenphysik",
  "Einzelphotonen, Wahrscheinlichkeitsamplituden, Komplementarität, Unbestimmtheit und Wellenfunktion",
  lernziele: (
    "das Doppelspaltexperiment mit einzelnen Quantenobjekten beschreiben",
    "Interferenzmuster stochastisch deuten",
    "Wahrscheinlichkeitsamplituden mit Zeigern addieren",
    "Komplementarität am Welcher-Weg-Experiment erklären",
    "die Unbestimmtheitsrelation deuten und die Wellenfunktion einführen",
  ),
)

#toc-page()

= Einstieg: Ein Experiment, drei Fragen

Das Doppelspaltexperiment ist das zentrale Experiment der Quantenphysik. Es ist technisch einfach
und begrifflich radikal. Drei Fragen lassen sich daran stellen:

1. *Was passiert mit vielen Photonen?* Ein Interferenzmuster entsteht – wie bei jeder Welle.
2. *Was passiert mit einzelnen Photonen?* Jedes Photon trifft an genau *einem* Ort auf. Wo, ist
   nicht vorhersagbar.
3. *Was passiert, wenn man nachsieht, welchen Spalt das Photon genommen hat?* Das Muster
   verschwindet.

Die Antwort auf alle drei Fragen zusammen erzwingt ein neues Denken: Nicht die Bahn des einzelnen
Quantenobjekts ist vorhersagbar, sondern nur die *Wahrscheinlichkeitsverteilung* seiner
Nachweisorte. Und diese Verteilung wird durch *Amplituden* bestimmt, die sich überlagern können –
wie Wellen.

#merksatz[
  Quantenphysik sagt im Einzelfall nichts voraus, aber sehr präzise, *wie häufig* welches Ergebnis
  auftritt. Diese Art von Vorhersage heißt *stochastisch* (nicht: ungenau).
]

= Der klassische Doppelspalt mit Licht

Zwei schmale Spalte im Abstand $g$ werden von einer kohärenten Lichtquelle beleuchtet. Am Ort $a$
auf dem Schirm im Abstand $e$ gilt für den Gangunterschied $Delta s = g sin alpha$ mit
$alpha = arctan(a\/e)$. Verstärkung tritt auf, wenn $Delta s = n lambda$; mit der Intensität
$I tilde A^2$ und dem Zeigermodell folgt

$ I(a) = I_0 cos^2(pi (g sin alpha)/lambda) $

#figure(
  image("../fig/doppelspalt_intensitaet.svg", width: 88%),
  caption: [Intensitätsverteilung hinter einem Doppelspalt. Die Streifen sind äquidistant, solange die Kleinwinkelnäherung gilt.],
)

Dieses Ergebnis ist reine Wellenphysik: Zwei Teilwellen überlagern sich, ihre *Amplituden* addieren
sich, und daraus folgt die Intensitätsverteilung. Für die klassische Welle ist das unproblematisch –
die Welle ist über den ganzen Schirm ausgebreitet, jeder Punkt erhält einen Anteil.

= Einzelphotonen am Doppelspalt

== Der Versuch

Man ersetzt die Lampe durch eine Quelle, die *einzelne* Photonen aussendet (stark gedämpfter
Laser, Einzelphotonenquelle, spontane parametrische Fluoreszenz), und weist die Photonen mit
Detektoren nach. Da einzelne Photonen nur schwer direkt sichtbar sind, nutzt man die
*Koinzidenzmethode*: Man registriert nur solche Ereignisse, die innerhalb eines sehr kurzen
Zeitfensters ($approx$ ns) in zwei Detektoren auftreten, und wertet sie gemeinsam aus. Damit
lassen sich Einzelphotonen eindeutig identifizieren, obwohl die Detektoren selbst nicht
„photonenscharf“ sind.

== Beobachtung

- Bei *sehr geringer* Intensität erscheinen einzelne helle Punkte an zufälligen Orten.
- Bei *mittlerer* Intensität deutet sich eine Struktur an.
- Bei *hoher* Intensität (viele Photonen) entsteht das bekannte Interferenzmuster.

#merksatz[
  Das Interferenzmuster ist die *Statistik* vieler Einzelereignisse. Jedes Photon landet an einem
  Punkt; die Verteilung der Punkte ist das Muster.
]

== Stochastische Deutung

Man ordnet jedem möglichen Nachweisort $x$ eine *Wahrscheinlichkeitsdichte* zu. Die
Wahrscheinlichkeit, ein Photon in einem kleinen Intervall $dif x$ um $x$ zu finden, ist
$P(x) dif x$. Für den Doppelspalt gilt:

$ P(x) = |Psi_1 (x) + Psi_2 (x)|^2 $

Dabei sind $Psi_1$ und $Psi_2$ die *Wahrscheinlichkeitsamplituden* für die beiden Wege. Sie sind
im Allgemeinen komplexe Zahlen; man stellt sie als *Zeiger* dar (Länge = Betrag, Richtung =
Phase).

Entscheidend ist: *Amplituden addieren sich, nicht Wahrscheinlichkeiten.*

$ P_"mit Interferenz" = |Psi_1 + Psi_2|^2 != |Psi_1|^2 + |Psi_2|^2 = P_"ohne Interferenz" $

#figure(
  image("../fig/zeigerkette.svg", width: 82%),
  caption: [Zeigerdarstellung: Die Amplituden der beiden Wege werden vektoriell addiert. Die Länge des Summenzeigers im Quadrat ist die Nachweiswahrscheinlichkeit.],
)

#herleitung[*Von den Zeigern zur cos²-Verteilung*]
  Für zwei gleich lange Zeiger $A$ mit Phasendifferenz $Delta phi$ gilt nach dem Kosinussatz
  $ A_"res"^2 = A^2 + A^2 + 2 A^2 cos(Delta phi) = 2 A^2 (1 + cos Delta phi) = 4 A^2 cos^2(Delta phi\/2) $.
  Mit $Delta phi = 2 pi Delta s\/lambda$ und $Delta s = g sin alpha$ folgt
  $P tilde cos^2(pi g sin alpha \/ lambda)$ – genau die klassische Intensitätsverteilung. Das
  Muster „weiß“ also nichts von der Intensität; es entsteht aus der Phasenbeziehung.

= Einzelne Elektronen

Das gleiche Experiment funktioniert mit Elektronen (Tonomura 1989) und sogar mit großen Molekülen
(Fullerenen, etwa 1 nm groß). Ein Elektron nach dem anderen trifft auf den Schirm; nach Stunden
entsteht das Interferenzmuster. Wichtig:

- Es gibt keine Wechselwirkung *zwischen* den Elektronen (sie treffen einzeln ein).
- Jedes Elektron muss also „mit sich selbst“ interferieren.
- Die Wellenlänge ist die de-Broglie-Wellenlänge $lambda = h\/p$.

#figure(
  image("../fig/elektronenbeugung_bild.svg", width: 44%),
  caption: [Beugungs-/Interferenzbild aus vielen Einzelereignissen (schematisch). Erst die Statistik macht das Muster sichtbar.],
)

= Komplementarität und Welcher-Weg

Baut man in die Spalte Detektoren ein, die feststellen, durch welchen Spalt das Quantenobjekt
gegangen ist, so verschwindet das Interferenzmuster. Es entsteht die Summe zweier
Einzelspaltbilder:

$ P(x) = |Psi_1|^2 + |Psi_2|^2 $

Bemerkenswert: Es genügt, dass die Welcher-Weg-Information *prinzipiell verfügbar* ist. Schaltet man
die Detektoren wieder aus (die Information ist nicht mehr gewinnbar), erscheint das Muster erneut.

#definition[
  *Komplementarität:* Wellen- und Teilcheneigenschaften sind komplementär – sie treten nicht
  gleichzeitig in einem Experiment hervor. Je besser die Welcher-Weg-Information bekannt ist,
  desto schwächer die Interferenz (und umgekehrt).
]

#achtung[
  Formulierungen wie „das Photon entscheidet sich erst bei der Messung“ oder „die Messung stört
  das Photon“ sind vereinfachend und teilweise irreführend. Sauber ist: Die *Präparation des
  Experiments* legt fest, welche Information prinzipiell verfügbar ist; davon hängt ab, ob eine
  Interferenzbeschreibung möglich ist. Was das Quantenobjekt „zwischen“ Emission und Nachweis
  tut, ist keine sinnvolle Frage.
]

Das berühmte *Delayed-Choice-Experiment* und das Mach-Zehnder-Interferometer behandeln wir
ausführlich in Skript 5.

= Die Unbestimmtheitsrelation

== Die Aussage

Ort und Impuls eines Quantenobjekts können nicht gleichzeitig beliebig genau festgelegt sein. In
der Schreibweise der Schulphysik:

$ Delta x dot Delta p_x >= h $

$Delta x$ und $Delta p_x$ sind die *Streuungen* (Unsicherheiten) der Messwerte, nicht
„Messfehler“. Wichtig ist die richtige Lesart:

#merksatz[
  Die Unbestimmtheitsrelation ist *keine* Aussage über ungeschickte Messgeräte. Sie sagt: Ein
  Quantenobjekt, das gut lokalisiert ist ($Delta x$ klein), hat notwendig eine breite
  Impulsverteilung ($Delta p_x$ groß). Beides zugleich scharf zu haben, ist keine Eigenschaft
  eines Quantenzustands.
]

In der Lehrbuchnotation lautet die Relation $Delta x dot Delta p_x >= h\/(4 pi)$ ; dabei ist $h\/(2 pi)$ das reduzierte Wirkungsquantum.
Beide Formen unterscheiden sich nur um einen Faktor von der Größenordnung 1; für Abschätzungen
sind sie gleichwertig. Im Abitur ist die vom Unterricht verwendete Form zu benutzen.

== Die Unbestimmtheit am Einzelspalt

Ein Elektron fliegt durch einen Spalt der Breite $b$. Am Spalt ist sein Ort auf $Delta x = b$
festgelegt. Bei der Beugung entsteht ein zentrales Maximum der Breite $2 lambda\/b$ (Winkelmaß);
das entspricht einer Impulsunbestimmtheit quer zur Strahlrichtung von

$ Delta p_x approx h/b $

Damit ist $Delta x dot Delta p_x approx b dot h\/b = h$ – die Relation ist gerade erfüllt.

#figure(
  image("../fig/unbestimmtheit.svg", width: 92%),
  caption: [Schmaler Spalt (links): kleine Ortsunbestimmtheit, breite Beugungsfigur, große Impulsunbestimmtheit. Breiter Spalt (rechts): umgekehrt.],
)

#prüfung[
  Dieses Argument – „schmaler Spalt → breite Beugungsfigur“ – ist die Standardbegründung im
  Abitur. Ergänzen Sie immer die Interpretation: Die Breite der Figur ist ein Maß für die
  Impulsunbestimmtheit quer zur Ausbreitungsrichtung.
]

== Zeit und Frequenz

Analog gilt für die Dauer $Delta t$ eines Wellenzugs und die Frequenzunbestimmtheit $Delta f$:

$ Delta t dot Delta f >= 1 $

Ein kurzer Puls hat also ein breites Frequenzspektrum. Das erklärt, warum für sehr kurze Laserpulse
die Farbe nicht mehr scharf definiert ist, und warum Spektrallinien endliche Breite haben.

= Die Wellenfunktion

== Wahrscheinlichkeitsdichte

Der Quantenzustand eines Teilchens wird durch eine *Wellenfunktion* $Psi (x,t)$ beschrieben – im
Allgemeinen eine komplexe Funktion. Physikalisch zugänglich ist ihr Betragsquadrat:

$ rho (x) = |Psi (x)|^2 quad "bzw." quad P(x) dif x = |Psi (x)|^2 dif x $

$rho$ heißt *Wahrscheinlichkeitsdichte*, $P(x)$ die Aufenthaltswahrscheinlichkeit. Das ist die
*Bornsche Regel*.

#figure(
  image("../fig/wellenfunktion.svg", width: 88%),
  caption: [Wellenpaket: Der Realteil von $Psi$ schwingt (blaue Linie), das Betragsquadrat (orange) ist die Aufenthaltswahrscheinlichkeitsdichte.],
)

#definition[
  *Normierung:* Die Gesamtwahrscheinlichkeit, das Teilchen irgendwo zu finden, ist 1:
  $integral_(-infinity)^(infinity) |Psi (x)|^2 dif x = 1$.
  *Wellenpaket:* Eine Überlagerung vieler Wellen, die räumlich begrenzt ist und sich bewegt.
]

== Superposition und Messung

Kann ein Quantenobjekt auf zwei Wegen zum Detektor gelangen, so ist sein Zustand eine
*Superposition* der beiden Möglichkeiten:

$ Psi = Psi_1 + Psi_2 $

Die Amplituden addieren sich; erst das Quadrat ergibt die Wahrscheinlichkeit. Bei einer Messung
erhält man *einen* der möglichen Werte – mit der durch $|Psi|^2$ gegebenen Wahrscheinlichkeit.
Umgangssprachlich sagt man, die Superposition „kollabiere“ bei der Messung; das ist eine
Beschreibung des Formalismus, keine Aussage über einen physikalischen Mechanismus.

#achtung[
  Die Wellenfunktion ist *kein* materielles Ding (kein „verschmiertes Elektron“). Sie ist eine
  mathematische Beschreibung, aus der man Wahrscheinlichkeiten berechnet. Sagen Sie nicht „das
  Elektron ist überall gleichzeitig“; richtig ist: Der Zustand ist eine Superposition, und die
  Messung liefert einen Ort.
]

== Klassisch vs. quantenmechanisch

#table(
  columns: (1fr, 1fr),
  [Klassisch], [Quantenmechanisch],
  [Bahn $x(t)$ ist im Prinzip exakt berechenbar.], [Nur Wahrscheinlichkeitsverteilung vorhersagbar.],
  [Messung liest vorhandene Eigenschaft ab.], [Messung erzeugt einen der möglichen Werte gemäß $|Psi|^2$.],
  [Wellen und Teilchen sind verschiedene Dinge.], [Ein Quantenobjekt zeigt je nach Experiment Wellen- oder Teilcheneigenschaften.],
  [Störung durch Messung ist vermeidbar (idealisiert).], [Unbestimmtheit ist prinzipiell, nicht technisch.],
)

= Experimente

== Experiment: Einzelphotonen am Doppelspalt

#experiment[
  *Aufbau.* Einzelphotonenquelle (stark gedämpfter Laser oder SPDC-Quelle), Doppelspalt,
  ortsauflösender Detektor (CCD/EMCCD) bzw. Photomultiplier mit Koinzidenzlogik.
  *Durchführung.* Photonenrate so weit senken, dass sich praktisch immer nur ein Photon im Aufbau
  befindet; Positionen registrieren und über lange Zeit aufsummieren.
  *Beobachtung.* Einzelne Punkte in zufälliger Folge; nach vielen Ereignissen das
  Interferenzmuster.
  *Erklärung.* Jedes Photon hat eine Wahrscheinlichkeitsamplitude für beide Wege; die Amplituden
  interferieren. Die Nachweiswahrscheinlichkeit ist $|Psi_1 + Psi_2|^2$.
  *Bedeutung.* Zeigt, dass Interferenz keine Wechselwirkung vieler Photonen benötigt und dass
  Vorhersagen stochastisch sind. *Grenzen:* Detektorrauschen, endliche Kohärenz, keine
  Einzelphotonenquelle ist ideal.
]

== Experiment: Welcher-Weg mit Detektoren

#experiment[
  *Aufbau.* Doppelspalt wie oben, zusätzlich Detektoren an den Spalten (idealerweise
  zerstörungsfrei gedacht).
  *Durchführung.* Messung einmal mit ausgeschalteten, einmal mit eingeschalteten Detektoren.
  *Beobachtung.* Aus: Interferenzmuster. Ein: zwei überlagerte Einzelspaltbilder ohne Streifen.
  *Erklärung.* Ist die Weginformation prinzipiell verfügbar, addieren sich Wahrscheinlichkeiten
  statt Amplituden.
  *Bedeutung.* Kern der Komplementarität. *Grenzen:* Reale Welcher-Weg-Detektoren beeinflussen das
  Photon; der „ideale“ Detektor ist ein Gedankenexperiment.
]

== Experiment: Elektronen am Einzelspalt (Unbestimmtheit)

#experiment[
  *Aufbau.* Elektronenbeugungsröhre bzw. Elektronenmikroskop mit veränderbarer Spaltbreite.
  *Durchführung.* Spaltbreite $b$ variieren, Breite des zentralen Maximums messen.
  *Beobachtung.* Verkleinert man $b$, wird das Maximum breiter; das Produkt aus Spaltbreite und
  Winkelbreite bleibt etwa konstant.
  *Erklärung.* $Delta x = b$, $Delta p_x approx h\/b$; die Beugungsfigur ist das räumliche Abbild
  der Impulsunbestimmtheit.
  *Bedeutung.* Direkter experimenteller Zugang zur Unbestimmtheitsrelation.
]

= Herleitungen

#herleitung[*Breite des zentralen Maximums und $Delta p_x$*]
  Beim Einzelspalt liegt das erste Minimum bei $b sin alpha = lambda$, also $alpha approx lambda\/b$
  (kleine Winkel). Das zentrale Maximum reicht von $-alpha$ bis $+alpha$, hat also die
  Winkelbreite $2 lambda\/b$. Ein Elektron mit Impuls $p = h\/lambda$, das um $alpha$ abgelenkt
  wird, erhält einen Querimpuls $p_x approx p alpha = (h\/lambda)(lambda\/b) = h\/b$. Das ist die
  Impulsunbestimmtheit: $Delta p_x approx h\/b$.

#herleitung[*Zeit-Frequenz-Unbestimmtheit*]
  Ein Wellenzug der Dauer $Delta t$ enthält $N = Delta t dot f$ Schwingungen. Die Frequenz lässt
  sich nur auf $Delta f approx 1\/Delta t$ genau bestimmen, weil am Anfang und Ende des Zuges die
  Phase nicht festliegt. Also $Delta t dot Delta f >= 1$ – dieselbe Struktur wie bei Ort und
  Impuls, weil Frequenz und Zeit über die Fouriertransformation verknüpft sind.

#herleitung[*Superposition zweier Amplituden (komplex)*]
  Sei $Psi_1 = sqrt(p) e^(i pi)$ und $Psi_2 = sqrt(q)$ (Phasen 180° bzw. 0°). Dann gilt
  $ P = |sqrt(p)(-1) + sqrt(q)|^2 = (sqrt(q) - sqrt(p))^2 = p + q - 2 sqrt(p q) $.
  Für $p = q$ folgt $P = 0$ – vollständige Auslöschung. Ohne Phasenbezug wäre $P = p + q = 2p$.
  Der Unterschied ist der Interferenzterm $-2 sqrt(p q)$, der von der Phase abhängt.

= Abituraufgaben

#aufgabe(1, punkte: 14)[
  Ein Doppelspalt wird mit einzelnen Photonen beleuchtet. Die beiden Spalte haben den Abstand
  $g = 0","20$ mm; der Schirm ist $e = 1","5$ m entfernt; die Wellenlänge beträgt $633$ nm.
  #enum(
    [Berechnen Sie den Abstand zweier benachbarter Maxima.],
    [Erläutern Sie, wie sich das Bild bei sehr geringer Photonenrate ändert und wie es bei
     längerer Beobachtung entsteht.],
    [In einen Spalt wird ein Detektor eingebaut. Beschreiben Sie die beobachtete Veränderung und
     erklären Sie sie mit dem Begriff der Komplementarität.],
  )
]

#lösung[
  *Zu 1.* $Delta a = lambda e\/g = 633 dot 10^(-9) dot 1","5\/(0","20 dot 10^(-3))
  = 4","75 dot 10^(-3)$ m $approx 4","7$ mm.

  *Zu 2.* Bei sehr geringer Rate erscheinen einzelne Punkte an zufälligen Orten – der Ort jedes
  einzelnen Photons ist nicht vorhersagbar. Mit der Zeit sammeln sich die Punkte; die
  Häufigkeitsverteilung nähert sich der Verteilung $|Psi_1 + Psi_2|^2$, also dem
  Interferenzmuster. Das Muster ist eine statistische Aussage, keine Bahn eines einzelnen Photons.

  *Zu 3.* Das Interferenzmuster verschwindet; es entsteht die Summe zweier Einzelspaltbilder.
  Begründung: Sobald die Weginformation prinzipiell verfügbar ist, addieren sich die
  Wahrscheinlichkeiten der Wege ($|Psi_1|^2 + |Psi_2|^2$) statt der Amplituden. Wellen- und
  Teilcheneigenschaft sind komplementär: volle Weginformation schließt Interferenz aus.
]

#aufgabe(2, punkte: 12)[
  Ein Elektron wird auf $U_B = 2","0$ kV beschleunigt und passiert einen Spalt der Breite
  $b = 0","10$ µm. #enum(
    [Berechnen Sie die de-Broglie-Wellenlänge.],
    [Schätzen Sie die Impulsunbestimmtheit quer zur Strahlrichtung ab und prüfen Sie die
     Unbestimmtheitsrelation.],
    [Erläutern Sie, warum eine Verkleinerung des Spalts die Beugungsfigur verbreitert.],
  )
]

#lösung[
  *Zu 1.* $lambda = 1","226\/sqrt(2000) "nm" = 27","4$ pm.

  *Zu 2.* $Delta p_x approx h\/b = 6","626 dot 10^(-34)\/1","0 dot 10^(-7)
  = 6","6 dot 10^(-27)$ kg m/s. Mit $Delta x = b = 1","0 dot 10^(-7)$ m ist
  $Delta x dot Delta p_x approx 6","6 dot 10^(-34)$ J s $approx h$ – die Relation ist (bei
  dieser Abschätzung) gerade erfüllt, nicht verletzt.

  *Zu 3.* Die Beugungsfigur hat die Winkelbreite $approx 2 lambda\/b$; kleineres $b$ bedeutet
  größere Winkelbreite. Physikalisch: Eine kleinere Ortsunbestimmtheit erzwingt eine größere
  Impulsunbestimmtheit, und diese äußert sich in einer breiteren Verteilung der
  Ausbreitungsrichtungen.
]

#aufgabe(3, punkte: 10)[
  Die Wellenfunktion eines Teilchens im Grundzustand eines eindimensionalen Kastens der Breite $L$
  lautet $Psi (x) = sqrt(2\/L) sin(pi x \/ L)$ für $0 <= x <= L$. #enum(
    [Zeigen Sie durch Integration, dass $Psi$ normiert ist.],
    [Berechnen Sie die Wahrscheinlichkeit, das Teilchen in der linken Hälfte zu finden.],
    [Erläutern Sie den Unterschied zwischen $Psi$ und $|Psi|^2$.],
  )
]

#lösung[
  *Zu 1.* $integral_0^L (2\/L) sin^2(pi x\/L) dif x$. Mit $sin^2 u = 1\/2 (1 - cos 2u)$ folgt
  $ (2\/L) [x\/2 - (L\/(4 pi)) sin(2 pi x\/L)]_0^L = (2\/L)(L\/2) = 1 $.

  *Zu 2.* Wegen der Symmetrie von $sin^2$ um $L\/2$ ist die Wahrscheinlichkeit genau $1\/2$ –
  anschaulich: Die Aufenthaltswahrscheinlichkeit ist in beiden Hälften gleich groß.

  *Zu 3.* $Psi$ selbst ist (hier) reell, kann aber im Allgemeinen komplex sein; sie ist die
  Amplitude und hat kein direktes anschauliches Maß. $|Psi|^2$ ist die Wahrscheinlichkeitsdichte:
  Sie gibt an, wie häufig das Teilchen an diesem Ort nachgewiesen wird. Nur $|Psi|^2$ ist
  messbar; $Psi$ selbst nur über Interferenzeffekte.
]

= Typische Fehler

#achtung[
  *1. Wahrscheinlichkeiten statt Amplituden addiert.* $|Psi_1 + Psi_2|^2 != |Psi_1|^2 + |Psi_2|^2$.
  Nur ohne Weginformation darf man addieren.

  *2. Unbestimmtheit als Messfehler gedeutet.* Sie ist prinzipiell und Teil des Quantenzustands.

  *3. $Delta x$ und $Delta p$ mit absoluten Werten verwechselt.* Es sind Streuungen.

  *4. „Das Photon teilt sich am Strahlteiler“. * Es gibt nur einen Nachweis; die Amplitude
  beschreibt Möglichkeiten, nicht Materieaufteilung.

  *5. Wellenfunktion als Ladungsverteilung gedeutet.* $|Psi|^2$ ist Wahrscheinlichkeitsdichte,
  nicht Ladungsdichte.

  *6. Kausalität und Nichtlokalität durcheinandergebracht.* Dazu mehr in Skript 5.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Einzelne Quantenobjekte liefern Einzelereignisse; das Muster ist Statistik.
- Amplituden addieren sich; die Wahrscheinlichkeit ist das Betragsquadrat der Summe.
- Welcher-Weg-Information zerstört die Interferenz (Komplementarität).
- $Delta x dot Delta p_x >= h$ verhindert gleichzeitig scharfe Ort- und Impulsbestimmung.
- Die Wellenfunktion beschreibt den Zustand; $|Psi|^2$ liefert die Wahrscheinlichkeiten.

== Zentrale Formeln

#table(
  columns: (1fr, 1fr, 1fr),
  [Formel], [Bedeutung], [Bemerkung],
  [$P = |Psi_1 + Psi_2|^2$], [Interferenz zweier Wege], [Amplituden addieren],
  [$P = |Psi_1|^2 + |Psi_2|^2$], [ohne Weginformation nicht], [nur bei Welcher-Weg-Info],
  [$I tilde A^2$], [Intensität], [Zeigerlänge im Quadrat],
  [$Delta x dot Delta p_x >= h$], [Unbestimmtheit], [Schulnotation],
  [$Delta t dot Delta f >= 1$], [Zeit-Frequenz], [Wellenzug],
  [$rho = |Psi|^2$], [Wahrscheinlichkeitsdichte], [Born-Regel],
  [$Delta p_x approx h\/b$], [Einzelspalt], [Abschätzung],
)

== Wichtigste Experimente

#table(
  columns: (1fr, 1fr, 1fr),
  [Experiment], [Beobachtung], [Aussage],
  [Einzelphotonen-Doppelspalt], [Punkte → Muster], [Statistik der Amplituden],
  [Tonomura], [Elektronen bauen Muster auf], [Selbstinterferenz],
  [Welcher-Weg-Detektor], [Muster verschwindet], [Komplementarität],
  [Einzelspalt, variable Breite], [breitere Figur bei schmalerem Spalt], [Unbestimmtheit],
)

== Fachbegriffe

Wahrscheinlichkeitsamplitude · Wahrscheinlichkeitsdichte · Superposition · Komplementarität ·
Welcher-Weg-Information · Koinzidenzmethode · stochastische Deutung · Wellenfunktion ·
Born-Regel · Normierung · Wellenpaket · Unbestimmtheit · Quantenzustand · Präparation

== Typische Prüfungsfragen

- „Deuten Sie das Zustandekommen des Musters bei einzelnen Photonen.“
- „Erklären Sie, warum die Welcher-Weg-Information das Muster zerstört.“
- „Leiten Sie aus der Beugung am Einzelspalt die Unbestimmtheitsrelation plausibel her.“
- „Was bedeutet $|Psi|^2$? “
- „Vergleichen Sie klassische und quantenmechanische Beschreibung.“

== Auswendig können

- $P = |Psi_1 + Psi_2|^2$
- $Delta x dot Delta p_x >= h$, $Delta t dot Delta f >= 1$
- $lambda = h\/p$, $Delta p_x approx h\/b$
- $rho = |Psi|^2$, Normierung

== Wirklich verstehen

- Warum Amplituden und nicht Wahrscheinlichkeiten interferieren
- Warum das Muster auch bei einzelnen Quanten entsteht
- Warum Komplementarität keine Messstörung ist, sondern eine Aussage über verfügbare Information
- Warum die Unbestimmtheit aus der Wellenbeschreibung folgt

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik: Jahrgang 13, „Doppelspaltexperiment“, „Welcher-Weg“,
    „Unbestimmtheit“ und „Die Wahrscheinlichkeitswelle“ (inkl. Simulationen und
    Kerncurriculum-Bezügen) – https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022: stochastische Deutung, Komplementarität,
    Unbestimmtheit, Wellenfunktion.
  - IQB-Aufgabenpool 2025, „Elektroneninterferenz am Doppelspalt“ (Aufgabenstruktur; nicht
    wörtlich übernommen).
  - Grafiken: eigene Darstellungen (doppelspalt_intensitaet.svg, unbestimmtheit.svg,
    wellenfunktion.svg, zeigerkette.svg, elektronenbeugung_bild.svg).
]
