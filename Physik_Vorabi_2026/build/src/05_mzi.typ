#import "../template.typ": *

#show: setup.with(title: "Mach-Zehnder und Welcher Weg", kicker: "Skript 5 · Interferometer")

#cover(
  "Skript 5 · Welcher Weg?",
  "Mach-Zehnder und Welcher Weg",
  "Strahlteiler, Phasenverschiebung, Weginformation, Komplementarität, Delayed Choice",
  lernziele: (
    "den Aufbau des Mach-Zehnder-Interferometers beschreiben",
    "die Ausgangsintensitäten aus Phasenverschiebung berechnen",
    "Welcher-Weg-Information als Ursache des Interferenzverlusts erklären",
    "das Delayed-Choice-Experiment ohne Fehldeutung darstellen",
    "Komplementarität und Nichtlokalität am MZI deuten",
  ),
)

#toc-page()

= Aufbau

#figure(
  image("../fig/schule/s5_mzi.png", width: 88%),
  caption: [Mach-Zehnder-Aufbau aus dem Schulmaterial: Laser, Strahlteiler ST1 und ST2, Spiegel
    M1 und M2 sowie die Detektoren D1 und D2.],
)

Im idealen MZI sind beide Arme gleich lang; jede zusätzliche Phasenverschiebung im oberen Arm wirkt sich deshalb eins zu eins auf den Gangunterschied am zweiten Strahlteiler aus.

#table(
  columns: (auto, 1fr),
  [Bauteil], [Funktion],
  [Laser], [kohärente Quelle, feste Phase],
  [Strahlteiler 1], [teilt die Amplitude je zur Hälfte: $psi arrow.l frac(1, sqrt(2))(psi_1 + psi_2)$],
  [Spiegel], [Richtungsänderung, Phasensprung $pi$],
  [Strahlteiler 2], [überlagert die beiden Teilwellen],
  [Detektoren D1, D2], [zählen Photonen],
)

#experiment[
  *Aufbau.* Ein Laserstrahl trifft auf Strahlteiler ST1. Der eine Teilstrahl läuft senkrecht nach
  oben über Spiegel M1, der andere waagerecht nach rechts über Spiegel M2; an ST2 werden beide
  wieder überlagert. Hinter ST2 stehen die Detektoren D1 (geradeaus) und D2 (senkrecht). Ein
  Phasenplättchen im oberen Arm verändert $Delta phi$. \
  *Durchführung.* Zähle die Photonen an D1 und D2 für verschiedene Phasenverschiebungen. \
  *Beobachtung.* D1 und D2 sind komplementär: Bei $Delta phi = 0$ ist D1 dunkel und D2 hell, bei
  $Delta phi = pi$ umgekehrt. \
  *Auswertung.* $I_1 = sin^2(Delta phi\/2)$, $I_2 = cos^2(Delta phi\/2)$; die Summe ist 1.
]

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
  image("../fig/schule/s5_zeiger.jpg", width: 62%),
  caption: [Zeigerbild zur Überlagerung der Amplituden am MZI aus dem Schulmaterial.],
)

Im Zeigerbild addieren sich die beiden Amplituden vektoriell; bei $Delta phi = 0$ zeigen sie in entgegengesetzte Richtungen und löschen sich aus – das ist D1.

= Welcher-Weg im MZI

#table(
  columns: (1fr, 1fr, 1fr),
  [Eingriff], [Weg bekannt?], [Beobachtung],
  [nichts], [nein], [Interferenz, Zählraten hängen von $Delta phi$ ab],
  [Markierung in Weg 1 (Polarisator)], [ja], [keine Interferenz, je 50 % pro Detektor],
  [ein Weg blockiert], [ja], [nur der andere Weg trägt bei, kein Muster],
)

Wird die Weginformation im Prinzip verfügbar, verschwinden die Interferenzstreifen. Das Quant
wird dabei nicht „gestört“; entscheidend ist, ob die beiden Möglichkeiten unterscheidbar sind.

= Delayed Choice

Aufbau nach Wheeler: Die Entscheidung, ob ein Welcher-Weg-Detektor eingeschaltet wird, fällt
*erst*, wenn das Quant den ersten Strahlteiler längst passiert hat – die Laufzeit ist so lang,
dass „später“ physikalisch später ist.

*Nichtlokalität.* Die beiden Möglichkeiten gehören zu einem einzigen Quantenzustand. Die
Weginformation ist nicht einem lokalen Bahnstück zuzuordnen; erst die gesamte Anordnung
entscheidet, ob Interferenz oder Welcher-Weg sichtbar wird. Das ist keine Signalübertragung
schneller als Licht und keine Änderung der Vergangenheit, sondern die quantenmechanische
Beschreibung des ganzen Experiments.

Die Anordnung ist zugleich eine Anwendung der Quantenphysik: Sie zeigt, dass Welcher-Weg-
Information und Interferenz komplementär sind, und sie wird in verschränkten Systemen als
Quantenradierer genutzt – wird die Markierung gelöscht, erscheint die Interferenz wieder.

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

= Aufgaben

#aufgabe(1, punkte: 10, afb: "II")[
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

#aufgabe(2, punkte: 10, afb: "II")[
  In Weg 1 des MZI steht ein Polarisator, in Weg 2 nicht.

  #enum(
    [Erklären Sie, warum das Interferenzmuster verschwindet.],
    [Begründen Sie, ob der Polarisator das Photon absorbiert.]
  )
]

#lösung[
  (1) Die Polarisation markiert den Weg. Die beiden Möglichkeiten sind damit im Prinzip
  unterscheidbar; die Amplituden addieren sich nicht mehr zu einem streifenförmigen Muster.

  (2) Nein. Der Polarisator lässt einen Teil der Amplitude durch; die Interferenz verschwindet
  allein deshalb, weil die Weginformation verfügbar ist.
]

#aufgabe(3, punkte: 12, afb: "III")[
  In populären Darstellungen heißt es, das Photon „entscheide sich nachträglich“, ob es Welle
  oder Teilchen sei. Bewerten Sie diese Formulierung mithilfe des Delayed-Choice-Aufbaus.
]

#lösung[
  Die Formulierung ist irreführend. Das Photon hat vor der Messung keinen festen Zustand
  „Welle“ oder „Teilchen“; der Zustand beschreibt beide Möglichkeiten. Erst die gesamte
  Anordnung – einschließlich der späteren Wahl des Detektors – legt fest, welche Eigenschaft
  sichtbar wird. Es gibt keine Signalübertragung in die Vergangenheit und keine nachträgliche
  Änderung eines schon abgelaufenen Ereignisses.
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
  [Delayed Choice], [späte Messwahl ändert die sichtbare Eigenschaft, nicht die Vergangenheit],
)

*Verstehen, nicht auswendig:* warum $I_1 + I_2 = 1$ gilt und warum „später entscheiden“ keine
Kausalitätsverletzung ist.

#prüfung[
  *Das musst du können:*
  - *erklären*, wie Strahlteiler und Spiegel die Phase ändern und warum D1 bei $Delta phi = 0$ dunkel ist;
  - *berechnen*: Detektorwahrscheinlichkeiten aus Phasendifferenz und Amplituden;
  - *begründen*, warum Delayed Choice die Vergangenheit nicht ändert;
  - *skizzieren*: Zeigerdiagramm für beide Wege und beide Detektoren.
]

#quelle[
  *Quellen (Abruf 2026-11-02).*
  - Mach-Zehnder: https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/06machzehnderinterferometer/docs.md
  - MZI-Labor: https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/07mzilabor/docs.md
  - Welcher Weg: https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/08welcherweg/docs.md
  - Delayed Choice: https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/10delayedchoice/docs.md
  - Kerncurriculum Physik Niedersachsen 2022: https://cuvo.nibis.de/
  - Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
