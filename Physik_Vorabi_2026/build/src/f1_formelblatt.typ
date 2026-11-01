#import "../template.typ": *

#show: setup.with(title: "Formelblatt", kicker: "Zusatzmaterial")

#set text(size: 9.2pt)
#cover(
  "Zusatzmaterial · Formelsammlung",
  "Formelblatt Physik",
  "Alle prüfungsrelevanten Formeln mit Bedeutung, Einheiten und Gültigkeitsbedingungen",
  lernziele: (
    "jede Formel mit ihrer Herkunft und ihrem Gültigkeitsbereich verknüpfen",
    "Einheiten konsequent in SI umrechnen",
    "Näherungen nur dort verwenden, wo sie zulässig sind",
  ),
)

#toc-page()

= Konstanten und Hilfswerte

#table(
  columns: (auto, auto, 1fr),
  [Größe], [Wert], [Bemerkung],
  [Lichtgeschwindigkeit $c_0$], [$2","998 dot 10^8$ m/s], [Vakuum],
  [Plancksches Wirkungsquantum $h$], [$6","626 dot 10^(-34)$ J s], [$h c = 1240$ eV nm],
  [Elementarladung $e$], [$1","602 dot 10^(-19)$ C], [auch $1$ eV $= 1","602 dot 10^(-19)$ J],
  [Elektronenmasse $m_e$], [$9","109 dot 10^(-31)$ kg], [Ruhemasse],
  [Protonenmasse $m_p$], [$1","673 dot 10^(-27)$ kg], [etwa 1836 $m_e$],
  [Coulomb-Konstante $1\/(4 pi epsilon_0)$], [$8","99 dot 10^9$ N m²/C²], [im Vakuum],
  [Erdbeschleunigung $g$], [$9","81$ m/s²], [mittlere Breite],
  [Bohr-Radius $r_1$], [$5","29 dot 10^(-11)$ m], [Wasserstoff, $n = 1$],
  [Rydberg-Konstante $R$], [$1","097 dot 10^7$ 1/m], [Balmer-Formel],
  [Compton-Wellenlänge], [$2","43 dot 10^(-12)$ m], [für Elektronen],
)

#merksatz[
  *Einheiten-Faustregeln:* $1$ nm $= 10^(-9)$ m, $1$ µm $= 10^(-6)$ m, $1$ mm $= 10^(-3)$ m,
  $1$ eV $= 1","602 dot 10^(-19)$ J, $1$ keV $= 10^3$ eV.
  Energien in eV und Wellenlängen in nm: $E = 1240 \/ lambda$.
]

= Schwingungen

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$f = 1\/T$], [Frequenz und Periodendauer], [periodische Vorgänge],
  [$omega = 2 pi f = 2 pi\/T$], [Kreisfrequenz], [harmonische Schwingung],
  [$s(t) = A sin(omega t + phi_0)$], [Auslenkung], [harmonisch, ungedämpft],
  [$v(t) = omega A cos(omega t)$], [Geschwindigkeit], [$v_max = omega A$],
  [$a(t) = -omega^2 s(t)$], [Beschleunigung], [Kennzeichen harmonisch],
  [$T = 2 pi sqrt(m\/D)$], [Feder-Masse-Pendel], [lineare Rückstellkraft],
  [$T = 2 pi sqrt(l\/g)$], [Fadenpendel], [kleine Auslenkung],
  [$E_"ges" = 1/2 D A^2$], [Energie], [ungedämpft],
  [$f_0 = 1\/(2 pi sqrt(L C))$], [Schwingkreis (Thomson)], [idealer LC-Kreis],
  [$s(t) = s_0 e^(-k t) sin(omega t)$], [gedämpfte Schwingung], [$k > 0$],
  [Resonanz: $f_E approx f_0$], [maximale Amplitude], [schwache Dämpfung],

)

= Wellen

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$c = lambda f$], [Ausbreitungsgeschwindigkeit], [alle harmonischen Wellen],
  [$s(x,t) = A sin(omega t - k x)$], [Wellengleichung], [$k = 2 pi\/lambda$],
  [$s(x,t) = A sin(2 pi (t\/T - x\/lambda))$], [andere Schreibweise], [wie oben],
  [$Delta phi = 2 pi Delta s\/lambda$], [Phasendifferenz], [kohärent],
  [$I tilde A^2$], [Intensität], [allgemein],
  [$v_"Osz" = omega A$], [Schnelle eines Seilpunkts], [nicht mit $c$ verwechseln],
  [$c_"Medium" = c_0\/n$], [Brechungsindex], [optisch dichter: $n > 1$],
  [$sin alpha \/ sin beta = n_2\/n_1$], [Brechungsgesetz], [Snellius],
  [$I = I_0 cos^2 alpha$], [Malus], [idealer Polarisator],
  [$lambda = 2 Delta x$], [stehende Welle], [Knoten-/Bauchabstand $lambda\/2$],
)

= Interferenz und Beugung

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$Delta s = n lambda$], [konstruktiv], [$n in NN_0$, gleiche Phase],
  [$Delta s = (2n+1) lambda\/2$], [destruktiv], [gleiche Amplituden],
  [$A_"res"^2 = A_1^2 + A_2^2 + 2 A_1 A_2 cos Delta phi$], [Zeigeraddition], [allgemein],
  [$n lambda = g sin(alpha)$], [Doppelspalt/Gitter], [$e >> g$],
  [$n lambda = g sin(arctan(a_n\/e))$], [exakte Form], [Schulform],
  [$Delta a = lambda e\/g$], [Streifenabstand], [Kleinwinkel],
  [$b sin(alpha_n) = n lambda$], [Einzelspalt-*Minima*], [$n = 1,2,...$],
  ["Breite Zentralmax." $approx 2 lambda e\/b$], [Einzelspalt], [Kleinwinkel],
  [$n lambda = 2 d sin(alpha)$], [Bragg], [Netzebenenabstand $d$],
  [$N lambda = 2 Delta d$], [Michelson], [Spiegelverschiebung],
  [$lambda = 2 Delta d\/N$], [Michelson, aufgelöst], [Streifenzählung],
)

= Lichtquanten

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$E = h f = h c\/lambda$], [Photonenenergie], [alle Photonen],
  [$p = h\/lambda$], [Photonenimpuls], [$m_0 = 0$],
  [$h f = E_"kin,max" + W_A$], [Photoeffekt], [ein Photon pro Elektron],
  [$e U_B = E_"kin,max"$], [Gegenfeld], [Knickpunkt],
  [$f_G = W_A\/h$], [Grenzfrequenz], [$E_"kin" = 0$],
  [$lambda_G = h c\/W_A$], [Grenzwellenlänge], [wie oben],
  [$e U_S = h f$], [LED], [ein Photon pro Elektron],
  [$e U_B = h c\/lambda_min$], [Röntgenbremsspektrum], [kurzwellige Grenze],
  [$Delta lambda = h\/(m_0 c)(1 - cos alpha)$], [Compton], [freies Elektron],
  [$lambda_max T = 2","898 dot 10^(-3)$ m K], [Wien], [Schwarzkörper],
  [$u_lambda = (8 pi h c)\/lambda^5 dot 1\/(e^(h c\/k_B T lambda) - 1)$], [Planck], [Schwarzkörper],
)

= Materiewellen und Quantenobjekte

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$lambda = h\/p = h\/(m v)$], [de Broglie], [alle Teilchen],
  [$e U_B = 1\/2 m_e v^2$], [Elektronenkanone], [nichtrelativistisch],
  [$p = sqrt(2 m_e e U_B)$], [Impuls], [wie oben],
  [$lambda = h\/sqrt(2 m_e e U_B)$], [Elektronenwellenlänge], [wie oben],
  [$lambda = 1","226 "nm" \/ sqrt(U_B\/"V")$], [Zahlenform], [Elektronen],
  [$lambda = d r\/(n a)$], [Beugungsröhre], [Kleinwinkel],
  [$P = |Psi_1 + Psi_2|^2$], [Interferenz], [keine Weginfo],
  [$P = |Psi_1|^2 + |Psi_2|^2$], [ohne Interferenz], [Weginfo verfügbar],
  [$rho = |Psi|^2$], [Wahrscheinlichkeitsdichte], [Born-Regel],
  [$integral |Psi|^2 dif x = 1$], [Normierung], [gebundene Zustände],
  [$Delta x dot Delta p_x >= h$], [Unbestimmtheit], [Schulnotation],
  [$Delta t dot Delta f >= 1$], [Zeit-Frequenz], [Wellenzug],
  [$P_"D1" = cos^2(Delta phi\/2)$], [MZI], [gleiche Amplituden],
  [$P_1 + P_2 = 1$], [Normierung], [MZI],
)

= Atomphysik

#table(
  columns: (auto, 1fr, auto),
  [Formel], [Bedeutung], [Gültigkeit],
  [$F_"C" = 1\/(4 pi epsilon_0) dot q_1 q_2\/r^2$], [Coulomb-Kraft], [Punktladungen],
  [$E_"pot" = -e^2\/(4 pi epsilon_0 r)$], [potenzielle Energie], [Kernfeld],
  [$E_"ges" = -e^2\/(8 pi epsilon_0 r)$], [Kreisbahn], [klassisch],
  [$r_n = n^2 dot 5","29 dot 10^(-11)$ m], [Bohr-Radien], [Wasserstoff],
  [$E_n = -13","6 "eV"\/n^2$], [Energieniveaus], [Wasserstoff],
  [$E_n = -13","6 "eV" dot Z^2\/n^2$], [wasserstoffähnlich], [ein Elektron],
  [$Delta E = h f = h c\/lambda$], [Übergang], [jedes Atom],
  [$1\/lambda = R(1\/m^2 - 1\/n^2)$], [Serien], [Wasserstoff],
  [$E_n = h^2 n^2\/(8 m_e L^2)$], [Potenzialtopf], [unendlich hohe Wände],
  [$E_(n_x n_y n_z) = h^2\/(8 m_e L^2)(n_x^2+n_y^2+n_z^2)$], [3D-Kasten], [Würfel],
  [$N_n = 2 n^2$], [Elektronen pro Schale], [Pauli],
  [$Delta E = e dot Delta U$], [Franck-Hertz], [Abstand der Maxima],
  [$lambda_min = h c\/(e U_B)$], [Röntgen], [Bremsspektrum],
)

= Typische Umformungen, die man können muss

#table(
  columns: (1fr, 1fr),
  [Ausgangslage], [Umformung],
  [$n lambda = g sin(alpha)$, $tan alpha = a\/e$],
  [$lambda = g sin(arctan(a\/e))\/n$],
  [$h f = E_"kin" + W_A$], [$E_"kin" = h c\/lambda - W_A$],
  [$e U_B = h c\/lambda_min$], [$h = e U_B lambda_min\/c$],
  [$m v r = n h\/(2 pi)$, $m v^2\/r = e^2\/(4 pi epsilon_0 r^2)$],
  [$r_n = n^2 h^2 epsilon_0\/(pi m_e e^2)$],
  [$E = p^2\/(2m)$, $p = h\/lambda$], [$E = h^2\/(2 m lambda^2)$],
  [$L = n lambda\/2$, $p = h\/lambda$], [$E_n = h^2 n^2\/(8 m L^2)$],
)

#achtung[
  *Keine Formel ohne Gültigkeitsprüfung.* Die drei häufigsten Fehler in Klausuren:
  (1) Kleinwinkelnäherung ohne Prüfung, (2) Faktor 2 bei Bragg vergessen,
  (3) eV/J nicht umgerechnet.
]

#quelle[
  *Quellen.* Eigene Zusammenstellung nach den Skripten 1–7; Grundlage: Kerncurriculum Physik
  Niedersachsen 2022, Unterrichtsmaterialien https://www.physik.gym-wst.de, IQB-Aufgabenpool
  2025/2026. Formelzeichen und Schreibweisen folgen der schulischen Darstellung.
]
