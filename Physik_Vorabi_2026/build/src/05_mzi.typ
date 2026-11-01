#import "../template.typ": *

#show: setup.with(title: "Mach-Zehnder und Delayed Choice", kicker: "Skript 5 · Interferometer")

#cover(
  "Skript 5 · Welcher Weg?",
  "Mach-Zehnder, QED, Delayed Choice",
  "Strahlteiler, Phasenverschiebung, Weginformation, nachträgliche Wahl, Zeigerbild",
  lernziele: (
    "den Aufbau des Mach-Zehnder-Interferometers beschreiben",
    "die Ausgangsintensitäten aus Phasenverschiebung berechnen",
    "Welcher-Weg-Markierung und ihre Löschung erklären",
    "das Delayed-Choice-Experiment ohne Fehldeutung darstellen",
  ),
)

#toc-page()

= Aufbau

#figure(
  image("../fig/mzi.svg", width: 88%),
  caption: [Zwei Strahlteiler ($"ST"_1$, $"ST"_2$) und zwei Spiegel. Beide Wege sind gleich
    lang; über ein Phasenplättchen lässt sich ein Zusatz $Delta phi$ einstellen.],
)

Beide Teilstrahlen legen im Bild gleich lange Wege zurück; jede zusätzliche Phasenverschiebung im oberen Arm wirkt sich deshalb eins zu eins auf den Gangunterschied am zweiten Strahlteiler aus.

#table(
  columns: (auto, 1fr),
  [Bauteil], [Funktion],
  [Laser], [kohärente Quelle, feste Phase],
  [Strahlteiler 1], [teilt die Amplitude je zur Hälfte: $psi arrow.l frac(1, sqrt(2))(psi_1 + psi_2)$],
  [Spiegel], [Richtungsänderung, Phasensprung $pi$],
  [Strahlteiler 2], [überlagert die beiden Teilwellen],
  [Detektoren D1, D2], [zählen Photonen],
)

= Rechnung mit Amplituden

Jeder Strahlteiler halbiert die Amplitude ($1 \/ sqrt(2)$). Bei Reflexion am Strahlteiler springt
die Phase um $pi\/2$, an den Spiegeln um $pi$ – so modelliert es auch das Schulmaterial. Für die
beiden Wege zu D1 bleibt damit eine Differenz von $pi$, zu D2 von $0$. Die Amplituden am Ausgang
sind

$ psi_(D 1) = frac(1, 2) (1 - e^(i Delta phi)), quad psi_(D 2) = frac(i, 2) (1 + e^(i Delta phi)) $

Damit gilt für die Zählraten

$ I_1 = sin^2 frac(Delta phi, 2), quad I_2 = cos^2 frac(Delta phi, 2) $

#merksatz[
  *Konvention:* D1 ist der Ausgang, der bei $Delta phi = 0$ dunkel ist, D2 der helle; bei
  $Delta phi = pi$ ist es umgekehrt. Die beiden Ausgänge sind komplementär: $I_1 + I_2 = 1$.
  Schon eine kleine Phasenänderung $delta$ (Gas, Glasplatte, Spiegelverschiebung) ist messbar –
  daher die hohe Empfindlichkeit.
]

#figure(
  image("../fig/qed_zeiger.svg", width: 62%),
  caption: [Zeigerbild: Die beiden Amplituden schließen den Winkel $Delta phi$ ein; die
    Resultierende bestimmt die Zählrate.],
)

Im Zeigerbild addieren sich die beiden Amplituden vektoriell; bei $Delta phi = 0$ zeigen sie in entgegengesetzte Richtungen und löschen sich aus – das ist D1.

= Welcher-Weg im MZI

#table(
  columns: (1fr, 1fr, 1fr),
  [Eingriff], [Weg bekannt?], [Beobachtung],
  [nichts], [nein], [Interferenz, Zählraten hängen von $Delta phi$ ab],
  [Markierung in Weg 1 (Polarisator)], [ja], [keine Interferenz, je 50 % pro Detektor],
  [Markierung + Löscher vor ST2], [nein], [Interferenz kehrt zurück],
  [ein Weg blockiert], [ja], [nur der andere Weg trägt bei, kein Muster],
)

#definition[
  *Quantenradierer:* Eine Markierung, die die Weginformation im Prinzip verfügbar macht, wird
  vor der Überlagerung wieder gelöscht. Dann interferiert das Quant erneut – die Information
  war zwischenzeitlich vorhanden, aber nicht ausgelesen.
]

= Delayed Choice

Aufbau nach Wheeler: Die Entscheidung, ob ein Welcher-Weg-Detektor eingeschaltet wird, fällt
*erst*, wenn das Quant den ersten Strahlteiler längst passiert hat – die Laufzeit ist so lang,
dass „später“ physikalisch später ist.

#achtung[
  Dabei wird die Vergangenheit *nicht* geändert. Beobachtet wird:
  - Detektor aus: Interferenz.
  - Detektor an: Welcher-Weg, keine Interferenz.
  - Auswertung nachträglich getrennt: Beide Teilensembles zeigen für sich kein Muster; erst die
    *gemeinsame* Auswertung (Koinzidenz mit dem Markierungsdetektor) zeigt Interferenz.
  Falsch ist die Formulierung „das Photon entscheidet sich nachträglich, ob es Welle oder
  Teilchen war“. Richtig ist: Das Quant hat keinen der beiden Zustände vor der Messung; das
  Experiment legt fest, welche Eigenschaft sichtbar wird.
]

= QED in einem Satz

Die Quantenelektrodynamik beschreibt Licht-Materie-Wechselwirkung mit Wahrscheinlichkeits-
amplituden für *jeden möglichen Weg*, z. B. „Photon geht von A nach B“:

$ P(A -> B) = |sum_"Wege" psi_"Weg"|^2 $

Feynmans Zeigerbild addiert dazu auch Wege, die klassisch verboten wären (Photon wird kurz zu
Elektron-Positron-Paar). Für die Schule genügt: Amplituden aller Wege addieren, Betragsquadrat
bilden, über nicht beobachtete Möglichkeiten summieren.

#merksatz[
  Zwei Regeln reichen für alle Aufgaben: (1) Amplituden addieren, wenn die Wege nicht
  unterscheidbar sind. (2) Betragsquadrate addieren, wenn sie unterscheidbar sind.
]

= Aufgaben

#aufgabe(1, punkte: 10)[
  In einem MZI wird das Phasenplättchen so gedreht, dass $Delta phi = 60°$ entsteht.

  #enum(
    [Berechnen Sie die relativen Zählraten in D1 und D2.],
    [Erklären Sie, warum eine Verschiebung eines Spiegels um $lambda\/4$ das Signal umkehrt.]
  )
]

#lösung[
  (1) $I_1 = sin^2 30° = 0","25$, $I_2 = cos^2 30° = 0","75$. Also 25 % in D1, 75 % in D2.

  (2) $lambda\/4$ Hin- und Rückweg ergibt $lambda\/2$ Wegdifferenz, also $Delta phi = pi$: Aus
  $I_1 = sin^2(Delta phi\/2)$ wird $sin^2(90°) = 1$ – das Signal wechselt vollständig zum anderen
  Detektor.
]

#aufgabe(2, punkte: 12)[
  Ein MZI wird mit einzelnen Photonen betrieben. In Weg 1 wird ein Polarisator gestellt, in
  Weg 2 nicht; vor dem zweiten Strahlteiler sitzt ein um 45° gedrehter Analysator.

  #enum(
    [Erklären Sie, welches Verhalten ohne Analysator auftritt.],
    [Erklären Sie die Wirkung des Analysators.],
    [Ordnen Sie den Aufbau in das Schema Markierung/Löschung ein.]
  )
]

#lösung[
  (1) Die Polarisation markiert den Weg; die beiden Möglichkeiten sind unterscheidbar, also
  keine Interferenz – beide Detektoren zählen etwa gleich viel, unabhängig von $Delta phi$.

  (2) Der Analysator projiziert beide Teilwellen auf dieselbe Polarisationsrichtung. Damit ist
  die Weginformation gelöscht; es tritt wieder Interferenz auf.

  (3) Markierung durch den Polarisator, Löschung durch den Analysator – ein Quantenradierer.
  Die Information war vorhanden, wurde aber nicht ausgelesen.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [„Das Photon entscheidet sich nachträglich“], [der Zustand ist vor der Messung nicht
    festgelegt; das Experiment wählt die sichtbare Eigenschaft],
  [Intensitäten statt Amplituden addieren], [erst Amplituden, dann Betragsquadrat],
  [Phasensprung $pi$ an Spiegeln vergessen], [Vorzeichen prüfen – sonst vertauschte Ausgänge],
  [Delayed Choice als Zeitreise], [keine Änderung der Vergangenheit, nur Auswahl der Messung],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Aussage],
  [Strahlteiler], [halbe Amplitude, Faktor $1\/sqrt(2)$],
  [Ausgänge], [$I_1 = sin^2(Delta phi\/2)$, $I_2 = cos^2(Delta phi\/2)$],
  [Welcher-Weg], [unterscheidbar $arrow$ keine Interferenz],
  [Quantenradierer], [Löschung der Information $arrow$ Interferenz zurück],
  [Delayed Choice], [späte Messwahl ändert die sichtbare Eigenschaft, nicht die Vergangenheit],
  [QED-Regel], [Amplituden addieren, dann quadrieren],
)

*Verstehen, nicht auswendig:* warum $I_1 + I_2 = 1$ gilt; warum Markieren und Löschen dieselbe
Information betrifft; warum „später entscheiden“ keine Kausalitätsverletzung ist.

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 13.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - R. P. Feynman, QED: The Strange Theory of Light and Matter (Zeigerbild).
]
