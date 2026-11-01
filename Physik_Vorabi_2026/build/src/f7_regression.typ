#import "../template.typ": *

#show: setup.with(title: "Regression und Auswertung", kicker: "Zusatzmaterial")

#set text(size: 9.6pt)
#cover(
  "Zusatzmaterial · Methoden",
  "Regression und Auswertung",
  "Messreihe → Diagramm → Ausgleichsgerade → Steigung mit Einheit → gesuchte Größe",
  lernziele: (
    "eine Messreihe vollständig und nachvollziehbar protokollieren",
    "die richtige Auftragung wählen (ggf. linearisieren)",
    "Steigung und Achsenabschnitt physikalisch deuten",
    "das Ergebnis mit Einheit, Fehler und Literaturwert abschließen",
  ),
)

#toc-page()

= Warum Regression?

In fast jeder Abituraufgabe steht irgendwann: „Bestimmen Sie aus den Messwerten …“. Gemeint ist
dann selten eine einzelne Rechnung, sondern der Weg

#align(center)[
  *Messgröße* $arrow$ *Diagramm* $arrow$ *Ausgleichsgerade* $arrow$ *Steigung* $arrow$ *gesuchte Größe*
]

Der Grund ist einfach: Ein einzelnes Wertepaar liefert ein Ergebnis mit großem Zufallsfehler.
Viele Wertepaare plus Gerade mitteln diesen Fehler heraus – man nutzt *alle* Messungen
gleichzeitig. Die Steigung ist dabei nie eine nackte Zahl, sondern hat immer eine *Einheit*,
und genau diese Einheit sagt, welche Größe man in der Hand hält.

#merksatz[
  *Grundregel:* Die Steigung einer Ausgleichsgeraden ist nie das Endergebnis, sondern ein
  Quotient zweier Größen. Erst wenn man die Einheiten der Achsen einsetzt, sieht man, was sie
  bedeutet – und welche Formel man nach der gesuchten Größe umstellen muss.
]

= Das Protokoll in acht Schritten

Wer diese acht Schritte einhält, kann jede Auswertungsaufgabe abarbeiten; wer einen überspringt,
verliert Punkte an genau dieser Stelle.

#table(
  columns: (auto, 1fr, 1fr),
  [Schritt], [Was zu tun ist], [Was im Heft stehen muss],
  [1], [Fragestellung und Hypothese: Welche Größe hängt von welcher ab, welcher Zusammenhang
        wird erwartet?], [„Vermutung: $U_B$ wächst linear mit $f$“ – die Formel, die das
        begründet],
  [2], [Messgrößen und Einheiten festlegen, Störgrößen konstant halten],
  [Tabelle mit Spaltenkopf *und* Einheit, z. B. $f$ in $10^14$ Hz],
  [3], [Messreihe tabellarisch erfassen, auf gleiche Stellenzahl achten],
  [Werte, keine Zwischenrechnungen in der Tabelle],
  [4], [Auftragung wählen: y gegen x oder linearisiert (siehe Abschnitt 4)],
  [Achsen beschriften mit Größe *und* Einheit, Maßstab angegeben],
  [5], [Ausgleichsgerade einzeichnen – nicht Punkt für Punkt verbinden],
  [Gerade, Messpunkte als Kreuze, keine „Zickzacklinie“],
  [6], [Steigung *und* Achsenabschnitt aus zwei weit entfernten Geradenpunkten bestimmen],
  [$m = (y_2 - y_1)\/(x_2 - x_1)$ mit Einheit, $b$ mit Einheit],
  [7], [Steigung physikalisch deuten: Formel umstellen, Größe berechnen],
  [Rechenweg mit Einheiten, Endergebnis mit sinnvollen signifikanten Stellen],
  [8], [Bewerten: Residuen, Ausreißer, systematische Abweichung, Vergleich mit Literaturwert],
  [Satz zur Qualität, z. B. „Abweichung 0,7 %, innerhalb der Messgenauigkeit“],
)

#achtung[
  *Der häufigste Punktverlust:* Die Steigung wird ohne Einheit hingeschrieben und dann
  irgendeine Formel eingesetzt, die „passt“. Richtig ist: Einheit der Steigung hinschreiben,
  mit der theoretischen Steigung *vergleichen*, erst dann umstellen.
]

= Welche Auftragung gehört zu welchem Gesetz?

Fast alle Schulgesetze lassen sich auf eine Gerade bringen. Diese Tabelle ist der eigentliche
Kern der Auswertungsaufgaben.

#table(
  columns: (1.1fr, 0.9fr, 0.9fr, 1.4fr),
  [Gesetz], [x-Achse], [y-Achse], [Steigung bedeutet],
  [$U_B = h\/e dot f - W_A\/e$], [$f$], [$U_B$], [$h\/e$ $arrow$ $h = m e$],
  [$E_"kin" = h f - W_A$], [$f$], [$E_"kin"$], [$h$ direkt],
  [$a_n = n lambda e\/d$], [$n$], [$a_n$], [$lambda e\/d$ $arrow$ $lambda = m d\/e$],
  [$s_n = n lambda D\/g$ (Gitter)], [$n$], [$s_n$], [$lambda D\/g$],
  [$T^2 = (4 pi^2)\/D dot m$], [$m$], [$T^2$], [$4 pi^2\/D$ $arrow$ $D$],
  [$r = h\/sqrt(2 m_e e U) dot a\/d$], [$1\/U$], [$r^2$], [$(h a \/ d)^2 \/ (2 m_e e)$],
  [$E_n tilde n^2$ (Kasten)], [$n^2$], [$E_n$], [$h^2\/(8 m_e L^2)$],
  [$s(t) = s_0 e^(-k t)$], [$t$], [$ln s$], [$-k$ $arrow$ $k$, $tau = 1\/k$],
  [$lambda = c\/f$], [$1\/f$], [$lambda$], [$c$ (Kontrolle)],
)

#merksatz[
  *Rezept zum Linearisieren:* Nenne das erwartete Gesetz, stelle es so um, dass die gesuchte
  Größe als Faktor vor der x-Achsen-Größe steht, und wähle als y-Achse alles, was dann linear
  ist. Beispiel: $r tilde 1\/sqrt(U)$ ist keine Gerade – aber $r^2 tilde 1\/U$ ist eine.
]

= Was eine Regression liefert – und was nicht

#figure(
  image("../fig/regression.svg", width: 92%),
  caption: [Links: vier Messpunkte der Fotozelle mit Ausgleichsgerade; die Steigung ist hier
    der Quotient $Delta U_B \/ Delta f$ – also $h\/e$. Rechts: die Residuen (Abstand jedes
    Punktes zur Geraden). Sie liegen ohne erkennbares Muster um null; das ist das Zeichen
    dafür, dass eine Gerade das Messverhalten richtig beschreibt.],
)

Aus einer Regression bekommt man vier Dinge, und alle vier gehören ins Heft:

#enum(
  [*Steigung* $m$ mit Einheit – die physikalisch auswertbare Größe.],
  [*Achsenabschnitt* $b$ mit Einheit – oft selbst eine Messgröße: bei der Fotozelle ist
   $-b$ die Gegenspannung, die zur Austrittsarbeit gehört.],
  [*Bestimmtheitsmaß* $R^2$ – wie gut die Punkte zur Geraden passen. $R^2 = 0","999$ heißt
   „passt sehr gut“, sagt aber *nichts* über die Richtigkeit: Auch falsch zugeordnete Achsen
   können ein schönes $R^2$ haben.],
  [*Residuen* – die Reste. Ein *Muster* in den Residuen (Bogen, Trend, Trichter) ist der
   Hinweis, dass das Modell nicht stimmt, auch wenn $R^2$ groß ist.],
)

= Durchgerechnetes Beispiel: Fotozelle

*Messreihe* (Gegenspannung bei monochromatischem Licht, Kathode aus Cäsium):

#table(
  columns: 5,
  [$f$ in $10^14$ Hz], [7,4025], [6,8761], [5,4908], [5,1869],
  [$U_B$ in V], [1,16], [0,94], [0,37], [0,25],
)

*Schritt 1 – Hypothese.* Aus $h f = W_A + e U_B$ folgt $U_B = h\/e dot f - W_A \/ e$. Also ist
$U_B$ linear in $f$, die Steigung ist $h\/e$.

*Schritt 2 – Regression.* Aus den vier Punkten ergibt sich

$ m = 4","11 dot 10^(-15) "V s" quad b = -1","88 "V" quad R^2 = 0","99997 $

*Schritt 3 – Steigung deuten.* Die Steigung hat die Einheit V/Hz $=$ V s, also

$ h = m dot e = 4","11 dot 10^(-15) "V s" dot 1","602 dot 10^(-19) "C" = 6","59 dot 10^(-34) "J s" $

Der Literaturwert ist $h = 6","626 dot 10^(-34)$ J s; die Abweichung beträgt 0,6 % und liegt
damit im Bereich dessen, was vier Messpunkte hergeben.

*Schritt 4 – Achsenabschnitt deuten.* $b = -W_A\/e$, also

$ W_A = -b dot e = 1","88 "eV" $

*Schritt 5 – Grenzfrequenz als Kontrolle.* $U_B = 0$ bei $f_G = -b\/m = 4","59 dot 10^14$ Hz,
also $lambda_G = c\/f_G = 654$ nm. Das ist plausibel für Cäsium (Grenzwellenlänge etwa 650 nm).

*Schritt 6 – Bewerten.* Die Residuen liegen zwischen $-2","4$ und $+2","5$ mV, ohne Muster –
die lineare Modellannahme ist also gedeckt.

= Durchgerechnetes Beispiel: Doppelspalt

Gesucht ist die Wellenlänge. Erwartet wird $a_n = n lambda e \/ d$, also eine Gerade durch den
Ursprung mit der Steigung $lambda e\/d$.

#table(
  columns: 6,
  [$n$], [1], [2], [3], [4], [5],
  [$a_n$ in mm], [5,05], [10,10], [15,18], [20,22], [25,30],
)

Regression: $m = 5","062$ mm je Ordnung, $b = -0","016$ mm, $R^2 = 1","0000$.

Der Achsenabschnitt ist mit 0,016 mm praktisch null – das bestätigt den Ursprung und ist ein
gutes Argument im Aufsatz („die Gerade läuft innerhalb der Messgenauigkeit durch den
Nullpunkt“).

$ lambda = m dot g / e = 5","062 dot 10^(-3) "m" dot 0","250 dot 10^(-3) "m" / 2","00 "m" = 633 "nm" $

Vergleich mit dem Literaturwert des He-Ne-Lasers: 632,8 nm.

= Durchgerechnetes Beispiel: Franck-Hertz-Kurve

Die Maxima liegen bei $U_n = n dot Delta U + U_"K"$. Also $U_n$ gegen $n$ auftragen.

#table(
  columns: 5,
  [$n$], [1], [2], [3], [4],
  [$U_n$ in V], [10,4], [15,3], [20,2], [25,1],
)

$m = 4","90$ V, $b = 5","50$ V, $R^2 = 1","0000$.

Damit ist die Anregungsenergie $Delta E = e dot 4","90$ V $= 4","90$ eV (Quecksilber) und die
Kontaktspannung $U_"K" = 5","50$ V. Die Photonenwellenlänge der zugehörigen Emission:

$ lambda = h c / Delta E = 1239","8 "eV nm" / 4","90 "eV" = 253 "nm" $

Genau diese 253 nm sind die ultraviolette Quecksilberlinie. Sie ist unsichtbar; das Leuchten,
das man in der Röhre sieht, stammt von anderen Übergängen des Quecksilbers.

= Durchgerechnetes Beispiel: Dämpfung

Bei exponentieller Abnahme ist $s = s_0 e^(-k t)$ *keine* Gerade in $s$–$t$. Aber der Logarithmus
schon:

$ ln s = ln s_0 - k t $

#table(
  columns: 6,
  [$t$ in s], [0], [1], [2], [3], [4],
  [$s$ in m], [0,100], [0,082], [0,067], [0,055], [0,045],
  [$ln(s\/"m")$], [$-2","303$], [$-2","501$], [$-2","703$], [$-2","900$], [$-3","101$],
)

Regression: $m = -0","1996$ 1/s, $b = -2","302$, $R^2 = 0","99999$.

$ k = -m = 0","200 "1"/"s" quad tau = 1/k = 5","0 "s" quad s_0 = e^b = 0","100 "m" $

Der Achsenabschnitt ist hier keine Nebensache: $e^b$ liefert die Anfangsamplitude.

#achtung[
  *Logarithmus nur für positive Größen.* $ln$ einer Amplitude ist zulässig, $ln$ einer
  negativen Auslenkung nicht. Wer Beträge verwendet, muss das im Text sagen.
]

= Typische Fehler bei der Auswertung

#table(
  columns: (1fr, 1.4fr),
  [Fehler], [Richtig],
  [Punkte mit dem Lineal „verbinden“], [Ausgleichsgerade: die Punkte streuen links und rechts
    gleichmäßig],
  [Steigung ohne Einheit], [Einheit aus den Achsen bilden und hinschreiben],
  [Achsenabschnitt ignorieren], [Deuten: Oft ist er selbst eine Messgröße (Austrittsarbeit,
    Kontaktspannung, Anfangswert)],
  [$R^2$ als Beweis für Richtigkeit], [$R^2$ sagt nur, wie geradlinig die Punkte liegen],
  [Ausreißer stillschweigend löschen], [Ausreißer benennen, begründen, sonst behalten],
  [Extrapolation weit über den Messbereich], [Nur im Messbereich auswerten oder ausdrücklich
    als Extrapolation kennzeichnen],
  [Einheiten in der Tabelle weglassen], [Jede Spalte bekommt im Kopf eine Einheit],
)

= Übungsaufgaben

#aufgabe(1, punkte: 8)[
  Ein Federpendel wird mit verschiedenen Massen belastet; gemessen wird die Periodendauer.

  #table(
    columns: 6,
    [$m$ in kg], [0,10], [0,20], [0,30], [0,40], [0,50],
    [$T$ in s], [0,63], [0,89], [1,09], [1,26], [1,41],
  )

  #enum(
    [Begründen Sie, welche Auftragung eine Gerade ergibt, und geben Sie an, was die Steigung
     bedeutet.],
    [Bestimmen Sie die Federkonstante $D$.],
    [Beurteilen Sie die Qualität der Messung.]
  )
]

#lösung[
  Für ein Federpendel gilt $T = 2 pi sqrt(m\/D)$, also $T^2 = (4 pi^2 \/ D) dot m$. Damit ist
  $T^2$ linear in $m$; die Steigung ist $4 pi^2 \/ D$.

  Regression von $T^2$ gegen $m$:

  $ m_"Reg" = 3","98 "s"^2/"kg" quad b = -0","003 "s"^2 quad R^2 = 0","99999 $

  $ D = 4 pi^2 / m_"Reg" = 39","48 / 3","98 "s"^2/"kg" = 9","9 "N"/"m" $

  Der Achsenabschnitt ist innerhalb der Messgenauigkeit null – die Gerade geht durch den
  Ursprung, wie es die Theorie verlangt. Die Residuen sind kleiner als 0,01 s², das Modell ist
  also gut gedeckt. Ein systematischer Fehler (z. B. federeigene Masse) würde sich als
  *positive* Abweichung bei kleinen Massen zeigen; dafür ist die Streuung hier zu klein, um ihn
  nachzuweisen.
]

#aufgabe(2, punkte: 8)[
  In einer Elektronenbeugungsröhre wird der Radius des inneren Rings bei verschiedenen
  Beschleunigungsspannungen gemessen ($a = 0","135$ m Abstand Graphit–Schirm).

  #table(
    columns: 5,
    [$U$ in kV], [3,0], [4,0], [5,0], [6,0],
    [$r$ in mm], [14,2], [12,3], [11,0], [10,0],
  )

  #enum(
    [Zeigen Sie, dass $r^2$ linear in $1\/U$ ist, und geben Sie die Bedeutung der Steigung an.],
    [Bestimmen Sie daraus den Netzebenenabstand $d$.]
  )
]

#lösung[
  Aus $r = lambda a \/ d$ und $lambda = h\/sqrt(2 m_e e U)$ folgt

  $ r^2 = (h a / d)^2 / (2 m_e e) dot 1/U $

  Also ist $r^2$ linear in $1\/U$ mit der Steigung $M = (h a \/ d)^2 \/ (2 m_e e)$; daraus
  $d = h a \/ sqrt(2 m_e e M)$.

  Regression: $M = 0","6086 "m"^2 "V"$, $R^2 = 0","99995$.

  $ d = 1","226 dot 10^(-9) "m V"^(1\/2) dot 0","135 "m" / sqrt(0","6086 "m"^2 "V") = 2","12 dot 10^(-10) "m" $

  $d approx 0","212$ nm. Das ist der für Graphit erwartete Wert (etwa 0,21 nm), womit die
  de-Broglie-Beziehung bestätigt ist.
]

= Wiederholung

#table(
  columns: (1fr, 1.3fr),
  [Merkpunkt], [Inhalt],
  [Kette], [Messgröße → Diagramm → Ausgleichsgerade → Steigung mit Einheit → gesuchte Größe],
  [Linearisieren], [Gesetz so umstellen, dass die gesuchte Größe als Faktor erscheint],
  [Beispiele], [$T^2$ statt $T$; $r^2$ gegen $1\/U$; $ln s$ gegen $t$],
  [Steigung deuten], [Einheit der Steigung mit der theoretischen Steigung vergleichen],
  [Achsenabschnitt], [Oft selbst eine Messgröße; immer deuten],
  [Qualität], [Residuen ohne Muster $arrow.l$ Modell passt, Muster $arrow.l$ Modell falsch],
)
