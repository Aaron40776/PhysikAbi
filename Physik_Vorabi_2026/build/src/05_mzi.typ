#import "../template.typ": *

#show: setup.with(title: "Mach-Zehnder-Interferometer, Welcher-Weg und QED", kicker: "Skript 5 · Quantenoptik")

#cover(
  "Skript 5 · Interferometer und QED",
  "Mach-Zehnder-Interferometer, Welcher-Weg und Delayed Choice",
  "Strahlteiler, Wahrscheinlichkeitszeiger, Komplementarität und Feynmans Quantenelektrodynamik",
  lernziele: (
    "den Aufbau eines Mach-Zehnder-Interferometers beschreiben",
    "Detektorwahrscheinlichkeiten mit Wahrscheinlichkeitszeigern berechnen",
    "Welcher-Weg-Experimente unter Komplementarität und Nichtlokalität interpretieren",
    "Delayed-Choice-Experimente beschreiben und deuten",
    "die QED-Modellierung als Alternative zum Modellwechsel erklären",
  ),
)

#toc-page()

= Einstieg: Zwei Wege, zwei Detektoren

Das Mach-Zehnder-Interferometer (MZI) ist das „aufgeräumte“ Doppelspaltexperiment: Statt eines
Spaltpaars gibt es zwei klar getrennte Wege, die an Strahlteilern geteilt und wieder vereinigt
werden. Dadurch kann man einzelne Bauteile gezielt verändern, Wege blockieren oder Detektoren
einbauen – und beobachten, wie sich die Detektorwahrscheinlichkeiten ändern.

Das MZI ist damit die ideale Bühne für die begrifflichen Fragen der Quantenphysik:

- Was bedeutet es, dass ein Quantenobjekt „beide Wege“ nimmt?
- Warum verschwindet die Interferenz, sobald man nachsieht?
- Ist es paradox, wenn man den zweiten Strahlteiler erst *nach* dem Durchflug einfügt?

#merksatz[
  Im MZI zeigt sich die gesamte Quantenphysik in einem Aufbau, den man auf einem Tisch aufbauen
  kann. Deshalb ist es in Niedersachsen ein Kernthema des erhöhten Anforderungsniveaus.
]

= Aufbau und Funktion der Bauteile

#figure(
  image("../fig/mzi.svg", width: 92%),
  caption: [Mach-Zehnder-Interferometer: Quelle, Strahlteiler ST 1, zwei Spiegel M1 und M2, Strahlteiler ST 2, zwei Detektoren D1 und D2.],
)

#table(
  columns: (auto, 1fr),
  [Bauteil], [Funktion],
  [Quelle], [Sendet einzelne Photonen (Einzelphotonenquelle) oder Laserlicht aus.],
  [Strahlteiler ST 1], [Teilt den Strahl: Transmission und Reflexion je mit Wahrscheinlichkeit 50 % (idealer 50:50-Teiler).],
  [Spiegel M1, M2], [Umlenkung um 90°; jede Reflexion erzeugt eine Phasenverschiebung von $pi$.],
  [Strahlteiler ST 2], [Überlagert die beiden Teilwellen; hier entsteht die Interferenz.],
  [Detektor D1, D2], [Registrieren einzelne Photonen; ihre Zählraten sind die Messgrößen.],
)

*Wichtig:* Ein Strahlteiler ist für ein einzelnes Photon keine Weiche, die es „teilt“. Das Photon
wird an genau einem Detektor nachgewiesen. Beschrieben wird die *Möglichkeit* beider Wege durch
eine Wahrscheinlichkeitsamplitude. An einem 50:50-Strahlteiler gilt für jeden Weg:
$P_"transmitiert" = P_"reflektiert" = 1\/2$ – aber nur, wenn die beiden Möglichkeiten nicht
interferieren.

#achtung[
  Sprechen Sie nicht davon, dass sich „das Photon am Strahlteiler aufteilt“ und „zur Hälfte in
  jeden Arm geht“. Diese Formulierung führt zu unauflösbaren Widersprüchen, sobald man Detektoren
  in die Arme stellt: Dann wird das Photon immer *vollständig* in genau einem Arm gefunden.
]

= Drei Modelle für dasselbe Experiment

== Modell 1: Klassische Teilchen

Man stelle sich kleine Kugeln vor, die auf die Strahlteiler treffen. An jedem 50:50-Teiler wird
eine Kugel mit 50 % reflektiert und mit 50 % transmitiert. Nach zwei Teilern ergibt sich für jeden
Detektor eine Wahrscheinlichkeit von 50 % – *unabhängig von den Weglängen*. Es entsteht keine
Interferenz, weil sich Kugeln nicht überlagern.

== Modell 2: Elektromagnetische Wellen

Nun denkt man sich Licht als kontinuierliche Welle. Am Ausgang überlagern sich die Teilwellen
beider Arme. Ihre Phasendifferenz hängt von den Weglängen und von den Reflexionen ab. Bei
geeigneter Phasenlage kann sich die Welle an einem Detektor vollständig auslöschen und am anderen
verstärken.

Verschiebt man einen Spiegel langsam, so wandert die Helligkeit periodisch zwischen den Detektoren
hin und her – ein klares Wellenphänomen mit der Periode $lambda\/2$ (wie beim
Michelson-Interferometer).

== Modell 3: Photonen mit Wahrscheinlichkeitszeigern

Für einzelne Photonen braucht man eine Beschreibung, die beides enthält: die Statistik der
Einzelereignisse *und* die Interferenz. Genau das leisten Wahrscheinlichkeitsamplituden:

- Jeder mögliche Weg von der Quelle zu einem Detektor erhält einen *Zeiger*.
- Die Länge des Zeigers beschreibt die „Stärke“ des Weges (bei 50:50-Teilern gleich für beide
  Wege), die Richtung die *Phase*.
- Am Detektor werden die Zeiger aller Wege *vektoriell addiert*.
- Die Wahrscheinlichkeit ist das *Quadrat der Länge* des Summenzeigers.

#figure(
  image("../fig/qed_zeiger.svg", width: 62%),
  caption: [Addition zweier Wahrscheinlichkeitszeiger. Die Länge des Summenzeigers entscheidet über die Detektorwahrscheinlichkeit; bei gleicher Länge und Phasendifferenz $pi$ ist sie null.],
)

#herleitung[*Detektorwahrscheinlichkeiten im MZI (gleiche Armlängen)*]
  Beide Wege haben dieselbe Länge; die einzigen Phasenbeiträge stammen von den Reflexionen.
  Dann sind die beiden Zeiger an einem Detektor gleichphasig, am anderen gegenphasig. Für die
  Wahrscheinlichkeiten folgt:
  $ P_"D1" = cos^2((Delta phi)\/2), quad P_"D2" = sin^2((Delta phi)\/2), quad P_"D1" + P_"D2" = 1 $.
  Bei $Delta phi = 0$ landet das Photon mit Sicherheit in D1 (konstruktive Interferenz), bei
  $Delta phi = pi$ mit Sicherheit in D2. Beide Wahrscheinlichkeiten zusammen müssen immer 100 %
  ergeben – das ist die *Normierung*.

#prüfung[
  Die Normierung $P_1 + P_2 = 1$ ist ein starkes Argument in Klausuren: Wenn Sie für einen
  Detektor $P = 1$ erhalten, ist der andere zwangsläufig dunkel. Nutzen Sie das, um Ergebnisse zu
  kontrollieren.
]

= Welcher-Weg-Experimente im MZI

== Aufbau

In einen Arm wird ein „Welcher-Weg-Detektor“ eingebaut – gedanklich ein *idealer* Detektor, der
das Photon nicht absorbiert, sondern nur feststellt, welchen Arm es genommen hat.

== Beobachtung

#table(
  columns: (1fr, 1fr),
  [Welcher-Weg-Detektor *aus*], [Welcher-Weg-Detektor *ein*],
  [Interferenz: Die Zählraten an D1 und D2 hängen von der Phasenlage ab; bei passender Phasenlage
  ist ein Detektor vollständig dunkel.], [Keine Interferenz: Beide Detektoren zeigen je etwa 50 %
  der Ereignisse, unabhängig von der Phasenlage.],
)

== Deutung

Sobald die Information „welcher Weg“ *prinzipiell verfügbar* ist, addieren sich die
Wahrscheinlichkeiten der Wege:

$ P = |Psi_1|^2 + |Psi_2|^2 = 1/2 + 1/2 = 1 $

für jeden Detektor – also je 50 %. Die Interferenzterme fehlen.

#merksatz[
  Es genügt, dass die Weginformation *prinzipiell* gewinnbar ist. Wird der Detektor eingeschaltet
  und registriert kein Photon, weiß man, dass es den anderen Weg genommen hat – auch diese
  „Nichtregistrierung“ ist Information und zerstört die Interferenz.
]

#definition[
  *Komplementarität:* Je mehr Welcher-Weg-Information verfügbar ist, desto geringer ist der
  Interferenzkontrast. Vollständige Weginformation und vollständige Interferenz schließen sich aus.
  *Nichtlokalität:* Die Interferenz hängt von der Phasenbeziehung beider Arme ab – also von
  Eigenschaften des *gesamten* Aufbaus, nicht nur des durchlaufenen Arms.
]

== Der Quanten-Bomben-Test

Eine hübsche Anwendung: In einen Arm wird eine „Quanten-Bombe“ gelegt, die bei Absorption eines
einzigen Photons explodiert. Ist die Bombe defekt, absorbiert sie nichts. Man kann nun mit dem MZI
feststellen, ob eine Bombe funktionsfähig ist, *ohne* sie zur Explosion zu bringen: Detektiert man
ein Photon in dem Detektor, der bei intaktem Aufbau dunkel wäre, weiß man, dass die Bombe den
anderen Weg blockiert hat – die Bombe ist funktionsfähig, das Photon hat sie nicht getroffen. Dies
ist ein Beispiel für *Wechselwirkungsfreie Messung*.

= Delayed Choice

== Die Idee

Man kann den zweiten Strahlteiler ST 2 *erst dann* einfügen, wenn das Photon ST 1 bereits passiert
hat – also nachdem es „entschieden“ haben müsste. Das ist technisch mit schnellen Schaltern
(Pockelszellen) realisierbar.

#table(
  columns: (1fr, 1fr),
  [ST 2 *nicht* eingefügt], [ST 2 *eingefügt*],
  [Es gibt keinen Interferenzweg; die Detektoren zeigen je 50 %. Modell: Teilchen.], [Es gibt
  Interferenz; die Zählraten hängen von der Phase ab. Modell: Welle.],
)

== Das Modellierungsproblem

Mit dem Modell „Welle-Teilchen-Dualismus“ entsteht ein Problem: Das Modell müsste *im laufenden
Experiment* gewechselt werden, abhängig von einer Entscheidung, die nach dem Durchflug getroffen
wird. Das wirkt paradox, wenn man unterstellt, das Photon habe sich vorher schon „entschieden“.

#achtung[
  Das Paradox verschwindet, sobald man aufhört, dem Photon eine bereits festgelegte Bahn
  zuzuschreiben. Die Frage „welchen Weg ist es gegangen?“ ist nur dann sinnvoll, wenn eine
  Messung diese Information liefert. Ohne eine solche Messung ist sie keine Eigenschaft des
  Photons.
]

== Die QED-Modellierung

Feynman bietet eine Beschreibung, die ohne Modellwechsel auskommt:

1. Das Photon geht *alle möglichen Wege* von der Quelle zu den Detektoren.
2. Jedem Weg wird ein Zeiger zugeordnet, dessen Länge und Phase von der Präparation abhängen
   (Strahlteiler vorhanden? Welche Phasenverschiebung?).
3. An jedem Detektor werden alle Zeiger addiert; das Quadrat der Summenlänge ist die
   Nachweiswahrscheinlichkeit.
4. Die Summe der Detektorwahrscheinlichkeiten ist auf 100 % normiert.

Wird ST 2 spät eingefügt, ändert sich die Menge der möglichen Wege – und damit die Zeigersumme.
Es gibt keinen „Modellwechsel“, sondern nur eine andere Rechnung für eine andere Präparation.

#merksatz[
  Die Präparation des Experiments legt fest, welche Wege möglich sind. Erst daraus ergeben sich die
  Amplituden und damit die Wahrscheinlichkeiten. Das ist der Kern der QED-Beschreibung.
]

= Welcher-Weg-Information und Quantenradierer

Ein *Quantenradierer* ist ein Aufbau, bei dem die Welcher-Weg-Information zunächst erzeugt und
später wieder „gelöscht“ wird. Technisch nutzt man verschränkte Photonenpaare: Ein Photon geht
durch den Doppelspalt, sein Partner trägt die Weginformation. Registriert man den Partner so, dass
die Weginformation ausgelesen werden kann, verschwindet das Interferenzmuster. Wird die Information
durch zusätzliche Strahlteiler „verwischt“, erscheint es wieder – allerdings nur in den
*Koinzidenzmessungen* der passenden Detektorkombinationen.

#achtung[
  Der Quantenradierer „löscht“ keine Vergangenheit und erlaubt keine Nachrichten in die
  Vergangenheit. Die Muster entstehen erst in der gemeinsamen Auswertung (Koinzidenz) und
  verschwinden vollständig, wenn man alle Ereignisse unabhängig von den Partnern betrachtet.
]

= Nichtlokalität und Kausalität

Im MZI hängt das Ergebnis an einem Detektor von der Phasenbeziehung *beider* Arme ab. Diese
Phasenbeziehung ist eine Eigenschaft des *gesamten* präparierten Zustands. Man nennt das
*Nichtlokalität*: Der Zustand lässt sich nicht in unabhängige „Zustände der Arme“ zerlegen.

Wichtig ist die Abgrenzung zur *Kausalität*: Nichtlokalität bedeutet *nicht*, dass man mit dem MZI
schneller als das Licht Nachrichten senden könnte. Die Statistik an einem Detektor bleibt für sich
genommen immer 50:50; Korrelationen zeigen sich erst beim Vergleich beider Detektoren – und dieser
Vergleich braucht eine klassische, langsame Kommunikation.

#prüfung[
  Typische Prüfungsfrage: „Erläutern Sie am Beispiel des MZI die Begriffe Komplementarität und
  Nichtlokalität.“ Antwortstruktur: (1) Aufbau kurz, (2) zwei Präparationen vergleichen, (3)
  Komplementarität = Weginformation vs. Interferenz, (4) Nichtlokalität = Phasenbeziehung des
  Gesamtzustands, (5) Kausalität bleibt gewahrt, da keine Signale übertragbar sind.
]

= Anwendungen

- *Quantenschlüsselverteilung:* Sicherheit beruht darauf, dass ein Abhören die
  Interferenz/Korrelationen zerstört und damit auffällt.
- *Quantencomputer:* Interferometer-artige Schaltungen (Strahlteiler als Gatter) nutzen
  Amplitudenüberlagerung zur Rechnung.
- *Präzisionsmessung:* Interferometer als hochempfindliche Sensoren (Gravitationswellen).
- *Quanten-Bomben-Test* als Beispiel für wechselwirkungsfreie Messung.

= Experimente

== Experiment: MZI mit Einzelphotonen

#experiment[
  *Aufbau.* Einzelphotonenquelle, zwei 50:50-Strahlteiler, zwei Spiegel, zwei Einzelphotonen-
  detektoren mit Zählwerk.
  *Durchführung.* Zunächst ohne Veränderung die Zählraten an D1 und D2 messen; dann einen Spiegel
  schrittweise verschieben; danach einen Detektor (Welcher-Weg) in einen Arm einbauen.
  *Beobachtung.* Ohne Detektor: Die Zählraten schwanken periodisch mit der Spiegelverschiebung
  (Periode $lambda\/2$), und es gibt Stellungen, in denen ein Detektor praktisch nichts zählt. Mit
  Detektor: beide Detektoren je etwa 50 %, unabhängig von der Spiegelstellung.
  *Erklärung.* Im ersten Fall addieren sich Amplituden (Interferenz), im zweiten Fall
  Wahrscheinlichkeiten (Weginformation verfügbar).
  *Bedeutung.* Direkter Nachweis von Komplementarität mit einzelnen Quantenobjekten.
]

== Experiment: Delayed Choice

#experiment[
  *Aufbau.* MZI, bei dem ST 2 über eine schnelle optische Schaltung (Pockelszelle) erst nach dem
  Durchflug des Photons durch ST 1 eingefügt wird.
  *Durchführung.* Zufällige Entscheidung, ob ST 2 eingefügt wird; Zuordnung der Ereignisse
  getrennt auswerten.
  *Beobachtung.* Mit ST 2: Interferenzmuster. Ohne ST 2: keine Interferenz.
  *Erklärung.* Die Menge der möglichen Wege hängt von der Präparation ab; die QED summiert alle
  möglichen Wege. Es findet kein „Modellwechsel“ im Nachhinein statt.
  *Bedeutung.* Prüfstein für Interpretationen; zeigt, dass die Annahme einer vorab festgelegten
  Bahn nicht haltbar ist.
]

= Abituraufgaben

#aufgabe(1, punkte: 14)[
  Ein MZI mit gleichen Armlängen wird mit einzelnen Photonen betrieben. In einen Arm wird ein
  zusätzliches Glasplättchen gebracht, das die optische Weglänge um $lambda\/4$ verlängert.
  #enum(
    [Erläutern Sie, wie sich die Detektorwahrscheinlichkeiten ändern.],
    [Berechnen Sie die Wahrscheinlichkeiten für beide Detektoren.],
    [Begründen Sie, ob man mit diesem Aufbau ein Signal schneller als Licht übertragen kann.],
  )
]

#lösung[
  *Zu 1.* Das Plättchen erzeugt eine zusätzliche Phasenverschiebung
  $Delta phi = 2 pi (Delta s)\/lambda = 2 pi (lambda\/4)\/lambda = pi\/2$. Die beiden Zeiger stehen
  damit senkrecht aufeinander; die Interferenz wird weder vollständig konstruktiv noch
  vollständig destruktiv.

  *Zu 2.* $P_1 = cos^2((pi\/2)\/2) = cos^2(pi\/4) = 1\/2$; ebenso $P_2 = sin^2(pi\/4) = 1\/2$.
  Beide Detektoren zeigen 50 % – die Anordnung ist „auf halbem Weg“ zwischen den Extremfällen.

  *Zu 3.* Nein. Die Wahrscheinlichkeiten an *einem* Detektor bleiben 50 %; man kann daraus keine
  Information über die Phasenlage gewinnen, ohne die Ereignisse beider Detektoren (oder eine
  Referenzphase) klassisch zu vergleichen. Der Vergleich erfordert Kommunikation, also höchstens
  Lichtgeschwindigkeit. Die Nichtlokalität der Korrelationen erlaubt keine Signalübertragung.
]

#aufgabe(2, punkte: 12)[
  Ein MZI wird so präpariert, dass ohne Welcher-Weg-Detektor mit Sicherheit D1 anspricht
  (konstruktive Interferenz) und D2 dunkel bleibt. Nun wird ein Welcher-Weg-Detektor in den
  oberen Arm eingebaut. #enum(
    [Geben Sie die Zählraten an beiden Detektoren nach dem Einbau an und begründen Sie sie.],
    [Erläutern Sie, was beobachtet wird, wenn der Detektor eingeschaltet ist, aber kein Photon
     registriert.],
    [Beurteilen Sie die Aussage: „Der Detektor stört das Photon, deshalb verschwindet das Muster.“],
  )
]

#lösung[
  *Zu 1.* Beide Detektoren zeigen je etwa 50 %. Begründung: Die Weginformation ist prinzipiell
  verfügbar; damit addieren sich die Wahrscheinlichkeiten der beiden Wege
  ($|Psi_1|^2 + |Psi_2|^2 = 1\/2 + 1\/2$) und die Interferenzterme entfallen.

  *Zu 2.* Registriert der Detektor kein Photon, ist damit bekannt, dass das Photon den *anderen*
  Arm genommen hat. Diese „Nichtregistrierung“ ist ebenfalls Weginformation; das Interferenzmuster
  bleibt zerstört, und die Verteilung ist weiterhin 50:50.

  *Zu 3.* Die Aussage ist eine verkürzte, aber in der Schulphysik übliche Sprechweise. Präziser:
  Nicht die physikalische Störung ist entscheidend, sondern die *Verfügbarkeit der
  Weginformation*. Das zeigt sich daran, dass schon ein eingeschalteter, aber nicht auslösender
  Detektor die Interferenz zerstört. Der Begriff „Störung“ verdeckt diesen wichtigen Punkt.
]

#aufgabe(3, punkte: 10)[
  Erläutern Sie, warum die Quantenelektrodynamik ohne den „Modellwechsel“ zwischen Welle und
  Teilchen auskommt. Gehen Sie dabei auf die Rolle der möglichen Wege und der Zeiger ein.
]

#lösung[
  Im Welle-Teilchen-Dualismus wählt man je nach Experiment ein Modell: Bei vorhandenem ST 2 das
  Wellenmodell, ohne ST 2 das Teilchenmodell. Das ist unbefriedigend, weil dasselbe Quantenobjekt
  betrachtet wird und die Entscheidung über den Aufbau sogar nach dem Durchflug fallen kann.

  In der QED gibt es nur *eine* Rechenvorschrift: Man bestimmt alle Wege von der Quelle zu einem
  Detektor, ordnet jedem Weg einen Zeiger zu (Länge und Phase aus der Präparation), addiert die
  Zeiger und quadriert die Summe. Fehlt ST 2, gibt es nur einen Weg pro Detektor – die Summe
  reduziert sich auf einen Zeiger, und man erhält 50 %. Ist ST 2 vorhanden, gibt es zwei Wege,
  deren Zeiger interferieren. Der scheinbare „Modellwechsel“ ist also nur ein Wechsel in der Menge
  der möglichen Wege – kein Wechsel der Theorie.
]

= Typische Fehler

#achtung[
  *1. „Das Photon teilt sich“. * Falsch: Es wird immer als Ganzes an einem Detektor nachgewiesen.

  *2. Interferenz als Wechselwirkung zweier Photonen gedeutet.* Auch einzelne Photonen
  interferieren – mit sich selbst.

  *3. Delayed Choice als „Rückwirkung in die Vergangenheit“ gedeutet.* Es gibt keine
  Signalisierung in die Vergangenheit; die Präparation bestimmt die möglichen Wege.

  *4. Nichtlokalität mit Überlichtgeschwindigkeit verwechselt.* Korrelationen sind nichtlokal,
  Signale nicht.

  *5. Reflexion ohne Phase gedacht.* Jede Reflexion an einem dichteren Medium/Spiegel erzeugt eine
  Phasenverschiebung von $pi$ – entscheidend für die Zuordnung von hell und dunkel.

  *6. Normierung vergessen.* $P_"D1" + P_"D2" = 1$ ist immer eine gute Kontrolle.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Das MZI macht Interferenz mit einzelnen Quantenobjekten zugänglich.
- Amplituden addieren sich als Zeiger; die Wahrscheinlichkeit ist das Quadrat der Summenlänge.
- Weginformation (auch nur prinzipiell verfügbare) zerstört die Interferenz.
- Delayed Choice ist mit der QED zwanglos beschreibbar: andere Präparation, andere Wege.
- Nichtlokalität der Korrelationen verletzt keine Kausalität.

== Zentrale Formeln

#table(
  columns: (1fr, 1fr),
  [Formel], [Bedeutung],
  [$P = |Psi_1 + Psi_2|^2$], [Interferenz zweier Wege],
  [$P_1 + P_2 = 1$], [Normierung],
  [$P_"D1" = cos^2(Delta phi\/2)$], [MZI, gleiche Amplituden],
  [$Delta phi = 2 pi Delta s\/lambda$], [Phasenverschiebung],
  [$Delta s = 2 Delta d$], [Wegänderung bei Spiegelverschiebung],
)

== Wichtigste Experimente

#table(
  columns: (1fr, 1fr, 1fr),
  [Experiment], [Beobachtung], [Aussage],
  [MZI ohne Detektor], [Interferenz, Dunkelheit möglich], [Amplitudenaddition],
  [MZI mit Welcher-Weg], [je 50 %], [Komplementarität],
  [Delayed Choice], [Ergebnis folgt der Präparation], [keine vorab festgelegte Bahn],
  [Quanten-Bomben-Test], [Wechselwirkungsfreier Nachweis], [Anwendung der Komplementarität],
)

== Fachbegriffe

Mach-Zehnder-Interferometer · Strahlteiler · Phasenverschiebung · Wahrscheinlichkeitsamplitude ·
Zeiger · Superposition · Präparation · Komplementarität · Welcher-Weg-Information ·
Delayed Choice · Quantenradierer · Nichtlokalität · Kausalität · Quantenelektrodynamik ·
Normierung · Koinzidenz

== Typische Prüfungsfragen

- „Beschreiben Sie den Aufbau des MZI und die Funktion der Bauteile.“
- „Berechnen Sie die Detektorwahrscheinlichkeiten bei gegebener Phasenverschiebung.“
- „Erklären Sie den Unterschied zwischen ‚Detektor an‘ und ‚Detektor aus‘.“
- „Erläutern Sie das Delayed-Choice-Experiment mit der QED.“
- „Diskutieren Sie Nichtlokalität und Kausalität.“

== Auswendig können

- Aufbau des MZI mit allen Bauteilen
- $P = |Psi_1 + Psi_2|^2$, $P_1 + P_2 = 1$
- 50:50-Strahlteiler: je 50 % ohne Interferenz
- $pi$-Phasensprung bei Reflexion
- Definitionen von Komplementarität und Nichtlokalität

== Wirklich verstehen

- Warum „prinzipiell verfügbare Information“ genügt
- Warum Delayed Choice kein Paradox ist
- Warum Nichtlokalität keine überlichtschnellen Signale erlaubt
- Warum die QED denselben Sachverhalt ohne Modellwechsel beschreibt

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik: Jahrgang 13, „Mach-Zehnder-Interferometer“, „MZI-Labor“,
    „Welcher-Weg“, „Quantenfeldtheorie“, „Delayed Choice“ und „Quantenradierer“ (jeweils mit
    Simulationen) – https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022: MZI, Komplementarität, Nichtlokalität,
    Delayed Choice, Zustand/Präparation/Superposition.
  - R. P. Feynman: *QED – Die seltsame Theorie des Lichts und der Materie* (Grundidee der
    Pfadamplitude; als Hintergrund, nicht als Schulbuch).
  - Grafiken: eigene Darstellungen (mzi.svg, qed_zeiger.svg).
]
