#import "../template.typ": *

#show: setup.with(title: "Last-Minute-Lernzettel", kicker: "Zusatzmaterial")

#set text(size: 9.4pt)
#cover(
  "Zusatzmaterial · Letzte Wiederholung",
  "Last-Minute-Lernzettel",
  "Die kompakte Wiederholung für den Abend vor dem Vorabi",
  lernziele: (
    "in 30 Minuten alle Kernaussagen reaktivieren",
    "typische Prüfungsfallen erkennen",
    "Formeln und Konstanten abrufbereit haben",
  ),
)

#toc-page()

= In 10 Sätzen: Worum es geht

#enum(
  [Eine Welle ist eine ausbreitende Schwingung; $c = lambda f$, Phase $omega t - k x$.],
  [Interferenz entscheidet sich am Gangunterschied: $n lambda$ hell, $(2n+1)lambda\/2$ dunkel.],
  [Beugung ist Interferenz vieler Elementarstrahler; schmaler Spalt → breite Figur.],
  [Beim Doppelspalt/Gitter gilt $n lambda = g sin alpha$; beim Einzelspalt markiert $b sin alpha = n lambda$ die *Minima*.],
  [Planck: Energie wird in Quanten $h f$ ausgetauscht; daraus folgt das Photonenmodell.],
  [Photoeffekt: $h f = E_"kin,max" + W_A$; unterhalb $f_G$ passiert nichts.],
  [Jedes Teilchen hat eine Wellenlänge $lambda = h\/p$; Elektronen zeigen Beugung am Graphit.],
  [Einzelne Quanten liefern Einzelereignisse; das Muster ist Statistik von $|Psi|^2$.],
  [Weginformation zerstört Interferenz – Komplementarität; $Delta x dot Delta p_x >= h$.],
  [Atome haben diskrete Niveaus: $Delta E = h f$; Franck-Hertz zeigt das für Elektronenstöße.],
)

= Formeln, die sitzen müssen

#table(
  columns: (1fr, 1fr),
  [$c = lambda f$, $T = 1\/f$, $omega = 2 pi f$], [$k = 2 pi\/lambda$],
  [$Delta s = n lambda$], [$Delta s = (2n+1)lambda\/2$],
  [$n lambda = g sin(arctan(a\/e))$], [$Delta a = lambda e\/g$],
  [$b sin alpha = n lambda$ (Minima)], [$n lambda = 2 d sin alpha$ (Bragg)],
  [$E = h f = h c\/lambda$], [$p = h\/lambda$],
  [$h f = E_"kin,max" + W_A$], [$e U_B = h f - W_A$],
  [$e U_S = h f$ (LED)], [$e U_B = h c\/lambda_min$ (Röntgen)],
  [$lambda = h\/sqrt(2 m_e e U_B)$], [$lambda = 1","226 "nm"\/sqrt(U_B\/"V")$],
  [$lambda = d r\/(n a)$], [$P = |Psi_1 + Psi_2|^2$],
  [$rho = |Psi|^2$], [$Delta x dot Delta p_x >= h$],
  [$E_n = -13","6 "eV"\/n^2$], [$Delta E = h c\/lambda$],
  [$E_n = h^2 n^2\/(8 m_e L^2)$], [$Delta E = e dot Delta U$ (Franck-Hertz)],
)

= Zahlen und Konstanten

#table(
  columns: (1fr, 1fr),
  [$h = 6","626 dot 10^(-34)$ J s], [$h c = 1240$ eV nm],
  [$e = 1","602 dot 10^(-19)$ C], [$m_e = 9","109 dot 10^(-31)$ kg],
  [$c = 2","998 dot 10^8$ m/s], [$r_1 = 5","29 dot 10^(-11)$ m],
  [$1 "eV" = 1","602 dot 10^(-19)$ J], [$R = 1","097 dot 10^7$ 1/m],
  [sichtbares Licht: 380–780 nm], [Balmer $H alpha$: 656 nm],
)

= Die fünf Experimente, die man erklären können muss

#table(
  columns: (1fr, 2fr),
  [Experiment], [Kernaussage in einem Satz],
  [Doppelspalt/Gitter], [Zwei Wege mit Gangunterschied $g sin alpha$; Maxima bei $n lambda$.],
  [Fotozelle], [Ein Photon löst ein Elektron; $E_"kin" = h f - W_A$; Knick bei $U_B$.],
  [Elektronenbeugung], [Elektronen mit $lambda = h\/p$ werden am Graphitgitter gebeugt; Ringe.],
  [MZI / Welcher-Weg], [Ohne Weginfo Interferenz; mit Weginfo je 50 % – Komplementarität.],
  [Franck-Hertz], [Elektronen geben genau $Delta E$ ab; Strommaxima im Abstand $Delta U = Delta E\/e$.],
)

= Die acht Prüfungsfallen

#achtung[
  *1.* Knoten/Bauch: Abstand $lambda\/2$, nicht $lambda$.
  *2.* Bragg: Faktor 2 nicht vergessen.
  *3.* Einzelspalt: Bedingung gilt für *Minima*.
  *4.* Kleinwinkel: nur für $a << e$; sonst $arctan$.
  *5.* eV/J: immer umrechnen (oder $h c = 1240$ eV nm nutzen).
  *6.* Intensität ≠ Photonenenergie: Intensität ändert nur die Anzahl.
  *7.* Grenzfrequenz: größere Wellenlänge = kleinere Frequenz = *unter* der Grenze.
  *8.* Unbestimmtheit ist keine Messungenauigkeit, sondern eine Streuung des Zustands.
]

= Wenn die Zeit knapp ist: Prioritäten

#prüfung[
  1. Doppelspalt/Gitter-Rechnung mit Auswertung (kommt am häufigsten).
  2. Photoeffekt + $h$-Bestimmung (Steigung $h\/e$).
  3. de-Broglie + Elektronenbeugung.
  4. Komplementarität in drei Sätzen formulieren können.
  5. Energieniveaus → Wellenlänge.
  6. Franck-Hertz-Kurve auswerten.
]

= Ein Satz pro Thema, den man wörtlich lernen kann

- *Interferenz:* „Zwei kohärente Wellen verstärken sich, wenn ihr Gangunterschied ein ganzzahliges
  Vielfaches der Wellenlänge ist, und löschen sich bei einem ungeradzahligen Vielfachen von
  $lambda\/2$ aus.“
- *Photoeffekt:* „Ein Elektron absorbiert genau ein Photon; die überschüssige Energie nach Abzug
  der Austrittsarbeit wird kinetische Energie.“
- *Materiewelle:* „Jedes Teilchen mit Impuls $p$ besitzt die Wellenlänge $lambda = h\/p$; sie ist
  nur bei kleiner Masse und kleinem Impuls messbar.“
- *Komplementarität:* „Wellen- und Teilcheneigenschaften treten nicht gleichzeitig hervor; je besser
  die Weginformation bekannt ist, desto schwächer die Interferenz.“
- *Unbestimmtheit:* „Ort und Impuls können nicht beide beliebig scharf sein, weil ein schmaler Ort
  eine breite Impulsverteilung erzwingt.“
- *Quantisierung im Atom:* „Die Randbedingung der Wellenfunktion lässt nur bestimmte Energien zu;
  Übergänge zwischen ihnen erzeugen die Spektrallinien.“

#quelle[
  *Quellen.* Verdichtung der Skripte 1–7. Grundlage: Kerncurriculum Physik Niedersachsen 2022,
  https://www.physik.gym-wst.de, IQB-Aufgabenpool 2025/2026.
]
