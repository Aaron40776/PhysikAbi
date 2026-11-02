#import "../template.typ": *

#show: setup.with(title: "Doppelspalt und Quantenphysik", kicker: "Skript 4 · Einzelquanten")

#cover(
  "Skript 4 · Einzelne Quanten",
  "Doppelspalt und Quantenphysik",
  "Einzelphotonen, Einzelelektronen, Superposition, Welcher-Weg, Komplementarität",
  lernziele: (
    "den Aufbau des Quanten-Doppelspalts beschreiben",
    "das Auftreten einzelner Treffer und das entstehende Muster deuten",
    "Superposition und Wahrscheinlichkeitsinterpretation erklären",
    "Welcher-Weg-Information als Ursache des Interferenzverlusts begründen",
  ),
)

#toc-page()

= Klassisch: zwei Wellen

Beim Doppelspalt überlagern sich die Feldstärken beider Spalte. Die Intensität ist
$I = |E_1 + E_2|^2$, also

$ I(alpha) = I_0 cos^2(frac(pi d sin(alpha), lambda)) $

Die Minima liegen bei $Delta s = (2n+1) lambda\/2$. Das ist Wellenoptik, kein Quantenproblem.

#figure(
  image("../fig/schule/s4_doppelspalt.png", width: 86%),
  caption: [Interferenzbild am Doppelspalt aus dem Schulmaterial.],
)

Die Kurve fällt vom Zentralmaximum zu den Nullstellen bei $Delta s = (2n+1) lambda\/2$ ab; die Lage der Maxima hängt nur vom Verhältnis $d\/lambda$ ab.

= Quanten: ein Quant nach dem anderen

#experiment[
  *Aufbau.* Lichtquelle so stark gedämpft, dass im Mittel nur ein Photon gleichzeitig unterwegs
  ist; Detektor (CCD/Photomultiplier) registriert einzelne Treffer. \
  *Durchführung.* Treffer über längere Zeit aufsummieren, anschließend Elektronen dasselbe. \
  *Beobachtung.*
  - Jeder Treffer ist ein *Punkt* – ganzzahlig, nicht verschmiert.
  - Nach wenigen Treffern: kein Muster erkennbar.
  - Nach Tausenden Treffern: das bekannte Streifenmuster. \
  *Erklärung.* Jedes Quant hat eine Wahrscheinlichkeitsverteilung; die Verteilung ist das
  Muster, der einzelne Treffer ist unvorhersagbar. \
  *Bedeutung.* Interferenz ist keine Folge vieler Quanten untereinander, sondern Eigenschaft
  des einzelnen Quants.
]

#achtung[
  Das Muster entsteht *nicht*, weil sich Photonen gegenseitig stören. Es entsteht auch mit
  einzelnen Quanten. Wer „Interferenz = Wechselwirkung zwischen Wellen“ sagt, verfehlt den
  Punkt.
]

#definition[
  *Koinzidenzmethode:* Zwei Detektoren werden gleichzeitig ausgelesen. Signale in einem sehr
  kurzen Zeitfenster heißen Koinzidenz. Ein Photon ist nicht teilbar – an einem Strahlteiler
  registriert deshalb immer nur *einer* der beiden Detektoren ein Ereignis, nie beide zugleich.
  Genau darauf beruht der Nachweis einzelner Photonen.
]

= Superposition und Wahrscheinlichkeit

Der Zustand „durch Spalt 1 oder Spalt 2“ wird als Summe der beiden Möglichkeiten beschrieben:

$ psi = frac(1, sqrt(2)) (psi_1 + psi_2) $

Die Wahrscheinlichkeitsdichte ist das Betragsquadrat:

$ P(x) = |psi(x)|^2 = frac(1, 2) |psi_1 + psi_2|^2 $

#merksatz[
  Amplituden addieren sich, Wahrscheinlichkeiten nicht. Der Mischterm $2 Re(psi_1^* psi_2)$
  erzeugt die Streifen – er verschwindet, sobald man weiß, welcher Weg genommen wurde.
]

= Welcher-Weg-Information

Wird an den Spalten gemessen, durch welchen Spalt das Quant ging, verschwindet das Muster:

#table(
  columns: (1fr, 1fr, 1fr),
  [Messung], [Zustand], [Muster],
  [keine Weginformation], [$psi_1 + psi_2$], [Streifen],
  [Weg bekannt (Detektor, Polarisator)], [entweder $psi_1$ oder $psi_2$], [keine Streifen],
)

#definition[
  *Komplementarität:* Wellen- und Teilchenverhalten schließen sich nicht aus, aber sie sind
  nicht gleichzeitig vollständig beobachtbar. Je mehr Weginformation, desto weniger
  Interferenzkontrast – quantitativ $V^2 + D^2 <= 1$ mit Visibilität $V$ und Unterscheidbarkeit
  $D$.
]

= Unbestimmtheit

Ort und Impuls sind keine gleichzeitig scharfen Größen:

$ Delta x dot Delta p >= frac(h, 4 pi) $

Das Schulmaterial rechnet mit der Schulnotation

$ Delta x dot Delta p_x >= h $

Lehrbücher schreiben stattdessen $Delta x dot Delta p_x >= (h\/(2 pi))\/2$, also mit dem
reduzierten Wirkungsquantum $h\/(2 pi)$. Der Faktor hängt davon ab, ob $Delta$
als Schwankungsbreite oder als Standardabweichung aufgefasst wird. Für Abschätzungen in Aufgaben
ist die Schulnotation gemeint, für Prinzipaussagen die Lehrbuchform.

#figure(
  image("../fig/schule/s4_unbestimmtheit.jpg", width: 88%),
  caption: [Einzelspalt und Unbestimmtheit aus dem Schulmaterial.],
)

Die Spaltbreite entspricht der Ortsunschärfe $Delta x$. Je schmaler der Spalt, desto breiter wird die Beugungsfigur und damit die Impulsunschärfe $Delta p$; bei einem breiten Spalt ist es umgekehrt.

#figure(
  image("../fig/schule/s4_wellenfunktion.jpg", width: 84%),
  caption: [Wellenfunktion und Aufenthaltswahrscheinlichkeit aus dem Schulmaterial.],
)

Die obere Kurve ist die Wellenfunktion selbst, die untere ihr Betragsquadrat; nur die untere gibt an, wo das Teilchen mit welcher Wahrscheinlichkeit gefunden wird.

#achtung[
  $Delta x$ ist die *Streuung* der Messwerte bei vielen gleichen Präparationen, nicht der Fehler
  eines einzelnen Experiments. „Das Elektron ist unbestimmt“ heißt: Es hat keinen scharfen
  Ort – nicht: „wir wissen ihn nur nicht“.
]

= Aufgaben

#aufgabe(1, punkte: 10)[
  Ein Doppelspalt ($d = 1","0$ µm) wird mit einzelnen Photonen ($lambda = 633$ nm) beleuchtet,
  Schirmabstand $e = 1","0$ m.

  #enum(
    [Berechnen Sie den Streifenabstand.],
    [Nach 100 Treffern ist kein Muster zu sehen. Erklären Sie.]
  )
]

#lösung[
  (1) $a = frac(lambda e, d) = frac(633 dot 10^(-9) dot 1","0, 1","0 dot 10^(-6)) = 0","63$ mm.

  (2) Die Treffer sind statistisch verteilt; um 0,63 mm Struktur von der Zufallsstreuung zu
  unterscheiden, braucht man viele Treffer. Bei 100 Treffern verteilen sich im Mittel etwa 5
  auf ein Maximum – zu wenig für ein erkennbares Bild.
]

#aufgabe(2, punkte: 12)[
  An den beiden Spalten wird mit Polarisatoren markiert, welchen Weg ein Quant genommen hat.

  #enum(
    [Beschreiben Sie die Beobachtung auf dem Schirm.],
    [Erklären Sie sie mit dem Superpositionsprinzip.],
    [Beurteilen Sie die Aussage: „Die Messung stört das Quant.“]
  )
]

#lösung[
  (1) Die Streifen verschwinden; es bleibt eine breite Verteilung ohne Modulation.

  (2) Mit Polarisationsmarkierung sind die beiden Möglichkeiten unterscheidbar, also
  $psi = psi_1 + psi_2$ geht in ein Gemisch über; der Mischterm und damit die Streifen fallen
  weg.

  (3) Die Formulierung ist zu grob. Die Messung muss das Quant nicht „anstoßen“; es genügt, dass
  die Weginformation im Prinzip verfügbar ist.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [„Photonen stören sich gegenseitig“], [Interferenz tritt auch bei einzelnen Quanten auf],
  [Wahrscheinlichkeiten addieren], [Amplituden addieren, dann Betragsquadrat],
  [Unbestimmtheit als Messfehler], [Streuung des Zustands, nicht Gerätefehler],
  [Wegmessung „zerstört“ das Quant], [Weginformation macht die Möglichkeiten unterscheidbar],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Aussage],
  [Einzeltreffer], [punktuell, unvorhersagbar],
  [Muster], [Wahrscheinlichkeitsverteilung vieler Quanten],
  [Superposition], [$psi_1 + psi_2$, Amplituden addieren],
  [Messbar], [$|psi|^2$],
  [Welcher-Weg], [Information vorhanden $arrow$ keine Streifen],
  [Komplementarität], [$V^2 + D^2 <= 1$],
  [Unbestimmtheit], [$Delta x dot Delta p >= h\/(4 pi)$],
)

*Verstehen, nicht auswendig:* warum einzelne Treffer und ein Muster zusammenpassen; warum
Weginformation die Streifen löscht, ohne das Quant zu „treffen“.

#prüfung[
  *Das musst du können:*
  - *erklären*, was Komplementarität bedeutet und warum Welcher-Weg-Information die Interferenz zerstört;
  - *begründen*, warum ein einzelnes Quant trotzdem ein Interferenzmuster aufbaut;
  - *berechnen*: Wahrscheinlichkeiten aus Amplituden und die Unbestimmtheit $Delta x Delta p$;
  - *skizzieren*: Intensitätsverteilung mit und ohne Welcher-Weg-Markierung.
]

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12/13.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - Grafiken: eigene Erstellung (`build/make_figures.py`).
]
