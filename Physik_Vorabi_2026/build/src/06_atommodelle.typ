#import "../template.typ": *

#show: setup.with(title: "Atommodelle und Orbitalmodell", kicker: "Skript 6 · Atome")

#cover(
  "Skript 6 · Atombau",
  "Atommodelle und Orbitalmodell",
  "Rutherford, Bohr, Energieniveaus, Potenzialtopf, Orbitale",
  lernziele: (
    "den Rutherford-Streuversuch auswerten und das Modell kritisieren",
    "die Bohrschen Postulate nennen und die Energieniveaus herleiten",
    "Energieniveaus chemischer Elemente mit Übergängen verknüpfen",
    "das Orbitalmodell vom Bahnmodell abgrenzen",
  ),
)

#toc-page()

= Rutherford-Streuversuch

#experiment[
  *Aufbau.* Alphaquelle, dünne Goldfolie, drehbarer Detektor im Vakuum. \
  *Durchführung.* Zählrate unter verschiedenen Winkeln messen. \
  *Beobachtung.* Die meisten Alpha-Teilchen fliegen fast ungestört durch; etwa 1 von 8000 wird
  um mehr als 90° gestreut. \
  *Erklärung.* Der Kern ist klein und trägt fast die ganze Masse und die positive Ladung;
  nahe am Kern wirkt die Coulomb-Abstoßung stark. \
  *Bedeutung.* Kern-Hülle-Modell; Kernradius etwa $10^(-14)$ m, Atomradius etwa $10^(-10)$ m.
]

#figure(
  image("../fig/rutherford.svg", width: 72%),
  caption: [Streubahnhänge vom Winkel: große Ablenkung nur bei sehr kleinem Abstand zum Kern.],
)

#herleitung[
  *Kernradius-Abschätzung aus der Coulomb-Energie* \
  1. Das Alpha-Teilchen wird bis zum minimalen Abstand $r_min$ abgebremst:
     $ E_"kin" = frac(1, 4 pi epsilon_0) frac(2 e dot 79 e, r_min) $
  2. Bei $E_"kin" = 5$ MeV und $Z = 79$ folgt $r_min approx 4","6 dot 10^(-14)$ m.
  3. Der Kern ist also mindestens so klein – Rutherfords Schluss, keine exakte Messung.

]
#achtung[
  Im Rutherford-Modell müsste das kreisende Elektron Strahlung abgeben und in den Kern stürzen.
  Das Modell erklärt die Stabilität der Atome nicht – genau diese Lücke schließt Bohr.
]

= Das bohrsche Modell

#definition[
  *Postulat 1:* Elektronen bewegen sich auf Kreisbahnen ohne Strahlung (stationäre Zustände).
  *Postulat 2:* Der Drehimpuls ist quantisiert, $L = n h/(2 pi)$.
  *Postulat 3:* Strahlung entsteht nur beim Wechsel zwischen Zuständen, $h f = E_m - E_n$.
]

#herleitung[
  *Energieniveaus des Wasserstoffs* \
  1. Kreisbahn: Coulomb-Kraft ist Zentripetalkraft,

  $ frac(1, 4 pi epsilon_0) frac(e^2, r^2) = frac(m_e v^2, r) $

  2. Quantisierung: $m_e v r = n h/(2 pi)$.
  3. $v$ einsetzen und nach $r$ auflösen:

  $ r_n = frac(4 pi epsilon_0 (h/(2 pi))^2, m_e e^2) n^2 = r_1 n^2, quad r_1 = 5","29 dot 10^(-11) "m" $

  4. Gesamtenergie (halbe Potenzialenergie):

  $ E = E_"kin" + E_"pot" = -frac(1, 2) frac(1, 4 pi epsilon_0) frac(e^2, r_n) $

  $ E_n = -frac(13","6 "eV", n^2) $

  5. Gültig nur für Ein-Elektronen-Systeme (H, He⁺, Li²⁺); $n$ ist die Hauptquantenzahl.

]
#figure(
  image("../fig/energieniveaus_h.svg", width: 84%),
  caption: [Termschema des Wasserstoffs. Nach oben rücken die Niveaus zusammen; $n -> infinity$
    entspricht $E = 0$ (Ionisation). Pfeile nach unten sind Emissionen.],
)

#merksatz[
  Alles Rechnen am Termschema ist eine Zeile:

  $ Delta E = E_m - E_n, quad lambda = frac(h c, Delta E) = frac(1239","8 "eV nm", Delta E_"[eV]") $

  Größter Energiesprung $arrow$ kürzeste Wellenlänge. Kleiner Sprung $arrow$ langwellig,
  z. B. $n = 2 -> 1$ bei Wasserstoff: 121,6 nm (Lyman), $n = 3 -> 2$: 656 nm (Balmer, rot).
]

= Grenzen des Bohr-Modells

#table(
  columns: (1fr, 1.3fr),
  [Leistung], [Grenze],
  [Energieniveaus des H-Atoms exakt], [nur Ein-Elektronen-Systeme],
  [Spektrallinien des H], [keine Feinstruktur, kein Zeeman-Effekt],
  [Größenordnung der Atomradien], [keine Aussage über Aufenthaltsorte],
)

= Quantenmechanisches Modell

#definition[
  Das Elektron hat keinen Bahnradius. Beschrieben wird es durch eine Wellenfunktion $psi$; das
  Betragsquadrat $|psi|^2$ gibt die Aufenthaltswahrscheinlichkeitsdichte an. Orbitale sind
  Bereiche hoher Aufenthaltswahrscheinlichkeit.
]

#herleitung[
  *Energieniveaus im eindimensionalen Potenzialtopf* \
  1. Im Kasten der Breite $L$ muss eine stehende Welle passen: $L = n lambda \/ 2$.
  2. Also $lambda_n = 2 L \/ n$ und $p_n = h \/ lambda_n = n h \/ (2 L)$.
  3. Energie $E_n = p_n^2 \/ (2 m_e)$:

  $ E_n = frac(n^2 h^2, 8 m_e L^2) $

  4. Ergebnis: $E_n tilde n^2$, Niveaus rücken nach oben auseinander (Gegenteil zum
     Coulomb-Topf), und $E_1 > 0$ – kein Zustand bei null.
]

#figure(
  image("../fig/potenzialtopf.svg", width: 66%),
  caption: [Energieniveaus im Kasten der Breite $L$: $E_n tilde n^2$, die Abstände wachsen nach
    oben – das Gegenteil zum Coulomb-Topf.],
)

#table(
  columns: (1fr, 1fr),
  [Bohr], [Quantenmechanik],
  [Bahn mit Radius], [Orbital mit Aufenthaltswahrscheinlichkeit],
  [$n$ bestimmt die Bahn], [$n, l, m_l, m_s$ bestimmen den Zustand],
  [Elektron als Punktteilchen], [Elektron als Welle],
  [stabile Bahn], [stationärer Zustand, Pauli-Prinzip füllt Orbitale],
)

#figure(
  image("../fig/orbitale.svg", width: 82%),
  caption: [s- und p-Orbital als Wahrscheinlichkeitsflächen; Formen folgen aus $l$.],
)

= Aufgaben

#aufgabe(1, punkte: 10)[
  Ein Wasserstoffatom wird vom Zustand $n = 1$ in $n = 3$ angeregt.

  #enum([Berechnen Sie die Anregungsenergie.], [Berechnen Sie die Wellenlänge der
    Resonanzabsorption.], [Geben Sie alle möglichen Emissionslinien beim Zurückfallen an.])
]

#lösung[
  (1) $E_3 - E_1 = -13","6\/9 + 13","6 = 12","09$ eV.

  (2) $lambda = frac(1239","8, 12","09) = 102","6$ nm (Lyman-$beta$, UV).

  (3) $3 -> 1$: 102,6 nm; $3 -> 2$: 656 nm; $2 -> 1$: 121,6 nm.
]

#aufgabe(2, punkte: 12)[
  Ein Elektron ist in einem Kasten der Breite $L = 1","0$ nm.

  #enum(
    [Berechnen Sie $E_1$ und $E_2$.],
    [Berechnen Sie die Wellenlänge des Übergangs $2 -> 1$.],
    [Begründen Sie, warum das Modell nicht für ein Wasserstoffatom passt.]
  )
]

#lösung[
  (1) $E_1 = frac(h^2, 8 m_e L^2) = 0","376$ eV, $E_2 = 4 E_1 = 1","50$ eV.

  (2) $Delta E = 1","13$ eV, $lambda = frac(1239","8, 1","13) = 1097$ nm.

  (3) Im Wasserstoff ist das Potenzial Coulomb-förmig, nicht kastenförmig; dort gilt
  $E_n tilde -1\/n^2$ (Niveaus rücken zusammen) statt $+n^2$.
]

= Typische Fehler

#table(
  columns: (1fr, 1.2fr),
  [Fehler], [Richtig],
  [Energieniveaus als „Bahnen“ gezeichnet], [Termschema ist ein Energiediagramm, keine Bahn],
  [$E_n = +13","6\/n^2$], [Minuszeichen: gebundene Zustände haben negative Energie],
  [Übergang $n -> m$ mit $m > n$ als Emission], [nach oben = Absorption],
  [Bohr-Modell auf Helium angewendet], [nur Ein-Elektronen-Systeme],
  [„Elektron kreist“], [quantenmechanisch: Aufenthaltswahrscheinlichkeit],
)

= Wiederholung

#table(
  columns: (1fr, 1fr),
  [Kern], [Formel / Aussage],
  [Wasserstoff-Niveaus], [$E_n = -13","6 "eV" \/ n^2$],
  [Bahnradius], [$r_n = r_1 n^2$, $r_1 = 5","29 dot 10^(-11)$ m],
  [Übergang], [$h f = E_m - E_n$],
  [Wellenlänge aus $Delta E$], [$lambda = 1239","8 "eV nm" \/ Delta E$],
  [Kasten], [$E_n = n^2 h^2 \/ (8 m_e L^2)$],
  [Rutherford], [Kern klein, Masse und Ladung dort konzentriert],
  [Bohr-Grenze], [nur Ein-Elektronen-Systeme, keine Feinstruktur],
  [Orbital], [$|psi|^2$ = Aufenthaltswahrscheinlichkeit],
)

*Verstehen, nicht auswendig:* warum die Niveaus im Coulomb-Topf zusammenrücken, im Kasten
auseinander; warum $E = 0$ die Ionisationsgrenze ist; warum Bohrs Modell trotzdem nützlich
bleibt.

#quelle[
  *Quellen.*
  - Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12/13.
  - Kerncurriculum Physik Niedersachsen 2022 (https://cuvo.nibis.de/).
  - CODATA 2018 für $h$, $m_e$, $e$, $epsilon_0$.
]
