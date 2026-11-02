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
  *Beobachtung.* Die meisten Alpha-Teilchen fliegen fast ungestört durch; nur sehr wenige werden
  um mehr als 90° gestreut (die Quelle nennt keine Zahl; die Literatur oft etwa 1 von 8000). \
  *Erklärung.* Der Kern ist klein und trägt fast die ganze Masse und die positive Ladung;
  nahe am Kern wirkt die Coulomb-Abstoßung stark. \
  *Bedeutung.* Kern-Hülle-Modell; Kernradius etwa $10^(-14)$ m, Atomradius etwa $10^(-10)$ m.
]

#figure(
  image("../fig/schule/s6_rutherford.jpg", width: 72%),
  caption: [Rutherford-Streuung aus dem Schulmaterial: abgelenkte Bahnen bei Annäherung an den Kern.],
)

Die Bahnen krümmen sich nur bei kleinem Stoßparameter stark; bei großem Abstand zum Kern bleibt die Bahn fast gerade.

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
  *Postulat 1:* Elektronen bewegen sich nur auf bestimmten erlaubten Kreisbahnen; jede Bahn
  entspricht einem Energieniveau $E_n$ mit $n = 1, 2, 3, dots$ \
  *Postulat 2:* Auf einer erlaubten Bahn kreist das Elektron strahlungsfrei mit konstanter
  Bahngeschwindigkeit $v_n$. Die Quantenbedingung $n lambda = 2 pi r_n$ mit $lambda = h/(m_e v_n)$
  folgt daraus (de Broglie); sie ist kein zusätzliches Postulat. \
  *Postulat 3:* Energie wird nur beim Übergang zwischen erlaubten Niveaus aufgenommen oder
  abgegeben (Quantensprung), $h f = |E_m - E_n|$.
]

#herleitung[
  *Energieniveaus des Wasserstoffs* \
  1. Kreisbahn: Coulomb-Kraft ist Zentripetalkraft,

  $ frac(1, 4 pi epsilon_0) frac(e^2, r^2) = frac(m_e v^2, r) $

  2. Folgerung aus Postulat 2 (de Broglie): $m_e v r = n h/(2 pi)$.
  3. $v$ einsetzen und nach $r$ auflösen:

  $ r_n = frac(4 pi epsilon_0 (h/(2 pi))^2, m_e e^2) n^2 = r_1 n^2, quad r_1 = 5","29 dot 10^(-11) "m" $

  4. Gesamtenergie (halbe Potenzialenergie):

  $ E = E_"kin" + E_"pot" = -frac(1, 2) frac(1, 4 pi epsilon_0) frac(e^2, r_n) $

  $ E_n = -frac(13","6 "eV", n^2) $

  5. Gültig nur für Ein-Elektronen-Systeme (H, He⁺, Li²⁺); $n$ ist die Hauptquantenzahl.

]
#figure(
  image("../fig/schule/s6_energieniveaus.jpg", width: 84%),
  caption: [Termschema des Wasserstoffs aus dem Schulmaterial.],
)

Im Termschema rücken die Niveaus nach oben zusammen und laufen gegen $E = 0$; nach unten werden die Abstände größer.

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
  [Energieniveaus des H-Atoms im nichtrelativistischen Modell exakt], [nur Ein-Elektronen-Systeme],
  [Spektrallinien des H], [keine Feinstruktur, kein Zeeman-Effekt],
  [Größenordnung der Atomradien], [keine Aussage über Aufenthaltsorte],
)

Bohr rechnet mit *einem* Elektron im Coulomb-Feld des Kerns. Bei mehreren Elektronen kommen
die Abstoßung zwischen den Elektronen und die Abschirmung des Kerns hinzu; die einfache
Kreisbahn wird unbrauchbar. Außerdem behandelt Bohr das Elektron als Punkt auf einer Bahn –
Feinstruktur, Zeeman-Aufspaltung und die räumliche Form der Orbitale liegen außerhalb des
Modells. Genau diese Lücken füllt das quantenmechanische Modell.

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
  image("../fig/schule/s6_potentialtopf.jpg", width: 66%),
  caption: [Wahrscheinlichkeitsdichte im eindimensionalen Potenzialtopf aus dem Schulmaterial
    (Grundzustand).],
)

Im Grundzustand ist die Aufenthaltswahrscheinlichkeit in der Mitte am größten; mit steigendem
$n$ kommen Knoten hinzu. Die Energieniveaus selbst wachsen mit $n^2$, während sie beim
Coulomb-Topf enger zusammenrücken – das ist der qualitative Unterschied beider Potenziale.

Im dreidimensionalen Kasten der Kantenlänge $L$ müssen gleichzeitig in $x$, $y$ und $z$
stehende Wellen passen. Ein Zustand wird durch drei Quantenzahlen $(n_x, n_y, n_z)$ beschrieben;
die Wellenfunktion ist das Produkt der drei Sinusfunktionen, und die Energie ist die Summe der
drei Beiträge:

$ E_(n_x,n_y,n_z) = frac(h^2, 8 m_e L^2) (n_x^2 + n_y^2 + n_z^2) $

Für $n_x = n_y = n_z = 1$ gibt es nur einen Zustand. Für $n_x^2+n_y^2+n_z^2 = 6$ gibt es die
drei Kombinationen $(2,1,1)$, $(1,2,1)$ und $(1,1,2)$: Sie haben dieselbe Energie, aber
verschiedene Orientierungen – das ist das Analogon zu den drei $p$-Orbitalen.

#table(
  columns: (auto, auto, 1fr, auto),
  [$n$], [Orbitale], [Form], [max. Elektronen],
  [1], [$1s$], [kugelförmig, keine innere Knotenfläche], [2],
  [2], [$2s$], [kugelförmig, weiter ausgedehnt, eine Knotenfläche], [2],
  [2], [$2p_x, 2p_y, 2p_z$], [je zwei gegenüberliegende Bereiche, eine Knotenebene], [6],
)

Damit fasst die $n=1$-Schale 2 Elektronen, die $n=2$-Schale 8 Elektronen; bis einschließlich
$n=2$ sind es 10. Für das Atom gilt allgemein die maximale Besetzung $N_n = 2 n^2$, weil es $n^2$
räumliche Zustände gibt und jeder zwei Elektronen mit entgegengesetztem Spin aufnimmt.

#table(
  columns: (1fr, 1fr),
  [Bohr], [Quantenmechanik],
  [Bahn mit Radius], [Orbital mit Aufenthaltswahrscheinlichkeit],
  [$n$ bestimmt die Bahn], [$n, l, m_l, m_s$ bestimmen den Zustand],
  [Elektron als Punktteilchen], [Elektron als Welle],
  [stabile Bahn], [stationärer Zustand, Pauli-Prinzip füllt Orbitale],
)

#definition[
  *Pauli-Prinzip:* Kein Zustand $(n, l, m_l, m_s)$ ist doppelt besetzt; jedes Orbital fasst
  höchstens zwei Elektronen mit entgegengesetztem Spin. Daraus folgt die Besetzung der Schalen
  (2, 8, 18 …) und der Aufbau des Periodensystems.
]

#figure(
  image("../fig/schule/s6_orbitale_s.jpg", width: 64%),
  caption: [Aufenthaltswahrscheinlichkeit im zweidimensionalen Potenzialtopf aus dem Schulmaterial:
    Grundzustand mit einem Maximum in der Mitte (s-artig).],
)

#figure(
  image("../fig/schule/s6_orbitale_p.jpg", width: 64%),
  caption: [Erster angeregter Zustand im zweidimensionalen Potenzialtopf aus dem Schulmaterial:
    vier Bereiche links und rechts der Mitte (p-artig).],
)

Im Grundzustand ist die Wahrscheinlichkeit in der Mitte am größten (s-artig), im ersten
angeregten Zustand gibt es vier Bereiche links und rechts der Mitte (p-artig). So werden die
Orbitalformen verständlich: s-Orbitale sind kugelsymmetrisch, p-Orbitale haben Keulen längs
einer Achse.

= Aufgaben

#aufgabe(1, punkte: 10, afb: "II")[
  Ein Wasserstoffatom wird vom Zustand $n = 1$ in $n = 3$ angeregt.

  #enum([Berechnen Sie die Anregungsenergie.], [Berechnen Sie die Wellenlänge der
    Resonanzabsorption.], [Geben Sie alle möglichen Emissionslinien beim Zurückfallen an.])
]

#lösung[
  (1) $E_3 - E_1 = -13","6\/9 + 13","6 = 12","09$ eV.

  (2) $lambda = frac(1239","8, 12","09) = 102","6$ nm (Lyman-$beta$, UV).

  (3) $3 -> 1$: 102,6 nm; $3 -> 2$: 656 nm; $2 -> 1$: 121,6 nm.
]

#aufgabe(2, punkte: 12, afb: "II")[
  Ein Elektron ist in einem Kasten der Breite $L = 1","0$ nm.

  #enum(
    [Berechnen Sie $E_1$ und $E_2$.],
    [Berechnen Sie die Wellenlänge des Übergangs $2 -> 1$.],
    [Begründen Sie, warum das Modell nicht für ein Wasserstoffatom passt.]
  )
]

#lösung[
  (1) $E_1 = frac(h^2, 8 m_e L^2) = 0","376$ eV, $E_2 = 4 E_1 = 1","50$ eV.

  (2) $Delta E = 1","128$ eV, $lambda = frac(1239","8, 1","128) = 1099$ nm.

  (3) Im Wasserstoff ist das Potenzial Coulomb-förmig, nicht kastenförmig; dort gilt
  $E_n tilde -1\/n^2$ (Niveaus rücken zusammen) statt $+n^2$.
]

#aufgabe(3, punkte: 12, afb: "III")[
  Vergleichen Sie das bohrsche Modell mit dem Orbitalmodell und begründen Sie, warum das
  bohrsche Modell für Mehrelektronenatome versagt.
]

#lösung[
  Bohr beschreibt ein Elektron auf einer definierten Kreisbahn mit quantisiertem Drehimpuls;
  das erklärt die Wasserstoffniveaus, aber nicht die Aufspaltung in Mehrelektronenatomen. Im
  Orbitalmodell gibt es keine Bahn, sondern eine Aufenthaltswahrscheinlichkeit $|psi|^2$;
  Elektronen besetzen Orbitale nach Pauli-Prinzip und Energie. Die Elektron-Elektron-Abstoßung
  und die Abschirmung des Kerns machen das Einelektronen-Bild unbrauchbar.
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

#prüfung[
  *Das musst du können:*
  - *erklären*, was Rutherford aus den Streuwinkeln schließt und was Bohr daraus macht;
  - *berechnen*: Bahnradien, Energien und Übergangswellenlängen im Wasserstoffatom;
  - *begründen*, warum das Bohr-Modell beim Mehrelektronenatom und bei Feinstruktur versagt;
  - *skizzieren*: Termschema und die Form eines s- und p-Orbitals.
]

#quelle[
  *Quellen (Abruf 2026-11-02).*
  - Rutherford: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/01rutherfordmodell/docs.md
  - Bohr: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/02bohrmodell/docs.md
  - Quantenmodell: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/03quantenmodell/docs.md
  - Orbitalmodell: https://www.physik.gym-wst.de/docs/d13/14atomhuelle/04orbitalmodell/docs.md
  - Kerncurriculum Physik Niedersachsen 2022: https://cuvo.nibis.de/
  - CODATA 2018 für $h$, $m_e$, $e$, $epsilon_0$.
  - Abbildungen: Unterrichtsmaterialien der Schulwebsite (`05_Grafiken/schule/`).
]
