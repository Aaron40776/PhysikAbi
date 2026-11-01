#import "../template.typ": *

#show: setup.with(title: "Gesamtübersicht", kicker: "Zusatzmaterial")

#cover(
  "Zusatzmaterial · Zusammenhang",
  "Gesamtübersicht: Wie alles zusammenhängt",
  "Die drei roten Fäden der Oberstufenphysik: Wellen – Quanten – Atome",
  lernziele: (
    "die Themen in eine sinnvolle Reihenfolge bringen",
    "Querverbindungen zwischen Wellenoptik, Quantenphysik und Atomphysik benennen",
    "zu jeder Formel sagen, woher sie kommt und wohin sie führt",
  ),
)

#toc-page()

= Die Landkarte

#figure(
  image("../fig/gesamtuebersicht.svg", width: 100%),
  caption: [Landkarte der Themen. Waagerecht: die drei Entwicklungslinien. Senkrecht: die Übergänge, an denen die Gebiete sich berühren.],
)

Liest man die Karte von links nach rechts, wiederholt sich derselbe Dreischritt – Beobachtung, Modell, Formel – auf jeder Stufe; die senkrechten Pfeile markieren die Stellen, an denen ein Thema das nächste vorbereitet.

= Drei rote Fäden

== Faden 1: Von der Schwingung zur Wellenlängenmessung (Skript 1)

*Schwingung* ($T$, $f$, $omega$, Amplitude) → *Welle* (Verzögerung $x\/c$, $c = lambda f$) →
*Überlagerung* (Gangunterschied $Delta s$, Kohärenz) → *Beugung* (Einzelspalt, Doppelspalt, Gitter,
Bragg) → *Messung* von Wellenlängen bis in den Nanometerbereich.

Leitidee: *Phase*. Alles, was in diesem Faden passiert, ist eine Aussage über Phasenbeziehungen.

== Faden 2: Vom Lichtquant zu den Quantenobjekten (Skript 2–5)

*Planck* ($E = h f$) → *Photon* ($p = h\/lambda$) → *Materiewelle* (de Broglie, Elektronenbeugung)
→ *Einzelquanten* (Doppelspalt, Komplementarität) → *Interferometer* (MZI, Welcher-Weg, Delayed
Choice) → *QED* (Amplituden aller Wege).

Leitidee: *Wahrscheinlichkeitsamplitude*. Der Faden beginnt mit einer Formel für die Energie und
endet mit einer Rechenvorschrift für Wahrscheinlichkeiten.

== Faden 3: Vom Kern zum Orbital (Skript 6–7)

*Rutherford* (Kern-Hülle) → *Bohr* (Quantisierung des Drehimpulses) → *Potenzialtopf*
(Randbedingungen statt Postulate) → *Spektren* (Übergänge) → *Franck-Hertz* (Anregung durch
Stöße) → *Orbitale* (Wahrscheinlichkeitsverteilungen, Pauli).

Leitidee: *Quantisierung*. Erst postuliert, dann begründet, schließlich verstanden als Folge von
Randbedingungen und Wellenlösungen.

= Die tragenden Ideen (fächerübergreifend im Fach)

#table(
  columns: (auto, 1fr, 1fr),
  [Idee], [Wo sie auftritt], [Was sie leistet],
  [Energiequant $h f$], [Planck, Photoeffekt, Spektren, Franck-Hertz, LED], [verbindet Frequenz und
  Energie; macht Spektren berechenbar],
  [Impulsquant $p = h\/lambda$], [Compton, de Broglie, Elektronenbeugung], [verbindet Teilchen- und
  Wellenbeschreibung],
  [Wahrscheinlichkeitsamplitude], [Doppelspalt, MZI, QED, Wellenfunktion], [erklärt Interferenz
  ohne Modellwechsel],
  [Komplementarität], [Welcher-Weg, Delayed Choice], [erklärt, wann Wellen- und wann
  Teilchenbeschreibung greift],
  [Unbestimmtheit], [Einzelspalt, Potenzialtopf-Grenzen], [erklärt, warum klassische Bahnen
  aufgeben werden müssen],
  [Randbedingungen], [Potenzialtopf, Orbitale, stehende Wellen], [erzeugt Quantisierung ohne
  Zusatzpostulate],
)

= Verbindungen im Detail

== Welle → Quant: Wo die Wellenoptik die Quantenphysik vorbereitet

- Der *Gangunterschied* $Delta s$ aus Skript 1 wird in Skript 4 zur *Phasendifferenz der
  Amplituden*. Dieselbe Mathematik, andere Deutung.
- Der *Einzelspalt* liefert $Delta p_x approx h\/b$ – die Unbestimmtheitsrelation ist eine
  wellenoptische Aussage.
- Die *Bragg-Bedingung* wird von Röntgenstrahlung auf Elektronen übertragen; nur $lambda$ ändert
  sich, nicht die Physik.

== Quant → Atom: Wo die Quantenphysik die Atomphysik trägt

- Das *Photonenmodell* erklärt die Spektrallinien: $h f = Delta E$.
- Der *Potenzialtopf* (Skript 6) ist eine Wellenrechnung wie beim Einzelspalt: erlaubte Wellenlängen
  durch Randbedingungen.
- Die *Unbestimmtheitsrelation* erklärt, warum das Bohr-Modell mit definierten Bahnen aufzugeben ist.
- Der *Franck-Hertz-Versuch* zeigt dieselbe Quantisierung für Stöße, die man von Photonen kennt.

== Atom → Welle: Rückkopplungen

- Die *Kohärenz* (Skript 1) ist Voraussetzung für alle Interferenzexperimente – und für den Laser.
- Die *Spektren* liefern die Wellenlängen, mit denen man in Skript 1 kalibriert.
- Die *Orbitale* sind Wellenfunktionen – also genau die Objekte aus Skript 4, nur in 3D.

= Typische Prüfungsketten

#prüfung[
  *Kette A (Optik/Quanten):* Elektronen werden beschleunigt → de-Broglie-Wellenlänge → Beugung am
  Graphit → Ringradius → Netzebenenabstand. Dazu: Warum sind die Ringe und keine Punkte? Warum
  werden sie bei höherer Spannung kleiner?

  *Kette B (Atomphysik):* Energieniveauschema → Übergang → Wellenlänge → Vergleich mit
  gemessenem Spektrum → Aussage über das Modell (Bohr vs. Orbital).

  *Kette C (Quantenoptik):* MZI-Aufbau → Phasenlage → Detektorwahrscheinlichkeiten → Welcher-Weg-
  Detektor einbauen → Komplementarität → Delayed Choice → QED-Deutung.
]

= Lernreihenfolge (Empfehlung)

#enum(
  [*Skript 1* (Wellen und Interferenz) – schafft das Handwerkszeug: Phase, Gangunterschied, Beugung.],
  [*Skript 2* (Lichtquanten) – führt $h$ ein und damit die Quantisierung.],
  [*Skript 3* (Elektronenwellen) – überträgt die Wellenoptik auf Materie.],
  [*Skript 4* (Doppelspalt/Quanten) – verbindet beides begrifflich: Amplituden, Komplementarität,
   Unbestimmtheit, Wellenfunktion.],
  [*Skript 5* (MZI/QED) – vertieft Komplementarität und zeigt eine einheitliche Modellierung.],
  [*Skript 6* (Atommodelle) – nutzt Quantisierung und Unbestimmtheit für die Atomhülle.],
  [*Skript 7* (Spektren/Franck-Hertz) – schließt den Kreis: Messung der Niveaus.],
)

#quelle[
  *Quellen.* Eigene Darstellung auf Basis der Skripte 1–7; Kerncurriculum Physik Niedersachsen 2022;
  https://www.physik.gym-wst.de; IQB-Aufgabenpool 2025/2026.
]
