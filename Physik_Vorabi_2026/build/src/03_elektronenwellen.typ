#import "../template.typ": *

#show: setup.with(title: "Elektronenwellen und Beugung", kicker: "Skript 3 · Materiewellen")

#cover(
  "Skript 3 · Materiewellen",
  "Elektronenwellen und Beugung",
  "de-Broglie-Hypothese, Elektronenkanone, Elektronenbeugungsröhre und die Bragg-Analogie",
  lernziele: (
    "die de-Broglie-Hypothese formulieren und begründen",
    "die Elektronenwellenlänge aus der Beschleunigungsspannung berechnen",
    "Aufbau und Funktion von Elektronenstrahl- und Elektronenbeugungsröhre unterscheiden",
    "das Beugungsbild am Graphit mit der Bragg-Bedingung erklären",
    "aus Ringradien die Wellenlänge und den Netzebenenabstand bestimmen",
  ),
)

#toc-page()

= Einstieg: Die kühne Symmetrie

1924 stellte Louis de Broglie eine Vermutung auf, die zunächst als Spekulation galt: Wenn Licht,
das wir immer für eine Welle hielten, auch Teilcheneigenschaften hat (Photoeffekt, Compton), dann
müssten umgekehrt *Teilchen* – Elektronen, Atome, sogar Fußbälle – auch Welleneigenschaften haben.
Er postulierte für jedes Objekt mit Impuls $p$ eine *Materiewellenlänge*

$ lambda = h/p $

Diese Symmetrie ist kein Beweis, sondern eine Hypothese – aber sie ist prüfbar. Und sie wurde
1927 von Davisson und Germer sowie 1961 von Claus Jönsson eindrucksvoll bestätigt: Elektronen
erzeugen Beugungs- und Interferenzmuster, genau wie Licht.

#merksatz[
  Die de-Broglie-Beziehung $lambda = h\/p$ verknüpft eine Teilcheneigenschaft (Impuls) mit einer
  Welleneigenschaft (Wellenlänge). Sie gilt für *alle* Objekte – der Effekt ist nur bei kleiner
  Masse und kleinem Impuls messbar.
]

*Warum sieht man die Wellennatur im Alltag nicht?* Betrachten Sie einen Fußball
($m = 0","43$ kg, $v = 20$ m/s):

$ lambda = (6","626 dot 10^(-34) "J s")/(0","43 "kg" dot 20 "m/s") approx 7","7 dot 10^(-35) "m" $

Das ist rund $10^19$-mal kleiner als ein Atomkern. Für Beugungseffekte müsste ein Spalt von
vergleichbarer Größe existieren – den gibt es nicht. Beim Elektron ($m_e = 9","11 dot 10^(-31)$ kg)
liegt $lambda$ bei typischen Geschwindigkeiten dagegen im Bereich von Atomabständen in Kristallen.
Genau deshalb nutzt man *Kristalle als Beugungsgitter*.

= Theorie: Materiewellen

== Impuls und Wellenlänge

Für ein nichtrelativistisches Teilchen gilt $p = m v$. Damit wird

$ lambda = h/(m v) $

$lambda$ ist also *umgekehrt proportional* zur Geschwindigkeit: schnellere Elektronen haben
kleinere Wellenlängen. Diese Antiproportionalität ist im Abitur eine typische Auswertungsaufgabe
(„Bestätigen Sie durch Auftragen von $lambda$ über $1\/v$ …“).

#prüfung[
  Die Aussage „$lambda$ ist antiproportional zu $v$“ muss man *aus Messwerten* belegen können:
  $lambda$ über $1\/v$ auftragen → Ursprungsgerade; oder $lambda dot v$ berechnen → konstant
  ($= h\/m$). Ein bloßes „passt ungefähr“ genügt nicht.
]

== Die Elektronenkanone

Elektronen werden in einer evakuierten Röhre an einer Glühkathode freigesetzt (glühelektrischer
Effekt) und durch eine Spannung $U_B$ zur Anode hin beschleunigt. Die elektrische Energie wird in
kinetische Energie umgewandelt:

$ e U_B = 1/2 m_e v^2 $

Daraus folgt die Geschwindigkeit $v = sqrt(2 e U_B\/m_e)$ und – nach Einsetzen in $lambda = h\/(m_e v)$
– die zentrale Formel der Elektronenoptik:

$ lambda_e = h/sqrt(2 m_e e U_B) $

#herleitung[*Wellenlänge aus der Beschleunigungsspannung*]
  1. Energieansatz: $e U_B = 1\/2 m_e v^2$ (Energieerhaltung im elektrischen Feld).
  2. Auflösen nach dem Impuls: $p = m_e v = sqrt(2 m_e e U_B)$. (Herleitung: aus
     $v = sqrt(2 e U_B\/m_e)$ folgt $p = m_e sqrt(2 e U_B\/m_e) = sqrt(2 m_e e U_B)$.)
  3. Einsetzen in die de-Broglie-Beziehung: $lambda = h\/p = h\/sqrt(2 m_e e U_B)$.
  4. Zahlenwerte: $2 m_e e = 2 dot 9","109 dot 10^(-31) dot 1","602 dot 10^(-19)
     = 2","918 dot 10^(-49)$ kg C. Daraus
     $lambda_e = 1","226 "nm"\/sqrt(U_B\/"V")$.
  #linebreak()
  *Gültigkeit:* nichtrelativistisch, also $U_B$ bis etwa $10$ kV gut, bis $50$ kV mit einigen
  Prozent Fehler. Bei Beschleunigungsspannungen ab etwa $100$ kV muss man relativistisch rechnen
  (dann ist $p = sqrt(2 m_e e U_B + (e U_B\/c)^2)$).

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  [$U_B$], [$v$ (nichtrel.)], [$lambda$ (nichtrel.)], [Bemerkung],
  [100 V], [$5","9 dot 10^6$ m/s], [123 pm], [Größenordnung Atomabstand],
  [1 kV], [$1","9 dot 10^7$ m/s], [38","8 pm], [Standardbereich der Röhre],
  [4 kV], [$3","8 dot 10^7$ m/s], [19","4 pm], [deutlich kleiner als $d$],
  [50 kV], [$1","3 dot 10^8$ m/s], [5","5 pm], [relativistisch: etwa $5","4$ pm],
)

== Die Bragg-Analogie

Ein Graphit-Film besteht aus vielen kleinen Kristalliten mit regelmäßigen Netzebenen im Abstand
$d$. Für jede Schar paralleler Ebenen gilt die Bragg-Bedingung (Skript 1):

$ n lambda = 2 d sin(delta) $

Dabei ist $delta$ der *Glanzwinkel* zwischen Strahl und Netzebene. Weil die Kristallite in alle
Raumrichtungen orientiert sind, gibt es für jeden Winkel passende Kristallite – auf dem Schirm
entsteht ein *Kegel* unter dem halben Öffnungswinkel $2 delta$ und damit ein *Ring*
(vgl. Debye-Scherrer-Verfahren).

#figure(
  image("../fig/elektronenbeugung_bild.svg", width: 46%),
  caption: [Schematisches Beugungsbild am Graphit: konzentrische Ringe. Der innerste Ring entspricht der ersten Ordnung der größten Netzebenenschar.],
)

#figure(
  image("../fig/bragg.svg", width: 56%),
  caption: [Bragg-Reflexion an einer Netzebenenschar. Zwischen zwei benachbarten Ebenen entsteht der Gangunterschied $2 d sin delta$.],
)

== Geometrie der Beugungsröhre: die Schulformel

Auf dem Leuchtschirm hat der Ring den Radius $r$; der Abstand zwischen Graphitfolie und Schirm
sei $a$. Der Streuwinkel des Strahls gegenüber der Achse ist $2 delta$. Aus dem rechtwinkligen
Dreieck folgt

$ tan(2 delta) = r/a $

Für kleine Winkel gilt $tan(2 delta) approx 2 delta$ und $sin delta approx delta$, also
$2 sin delta approx 2 delta approx r\/a$ und damit

$ sin(delta) = r/(2 a) $

Eingesetzt in die Bragg-Bedingung $n lambda = 2 d sin delta$:

$ n lambda = 2 d dot r/(2 a) = d dot r/a quad => quad lambda = (d r)/(n a) $

#merksatz[
  Die Arbeitsgleichung der Elektronenbeugungsröhre lautet
  $ lambda = (d dot r_n)/(n dot a) $
  mit Netzebenenabstand $d$, Ringradius $r_n$ der $n$-ten Ordnung, Abstand $a$ Folie–Schirm.
  Sie ist nichts anderes als die Bragg-Bedingung in der Kleinwinkel-Näherung.
]

#achtung[
  Verwechseln Sie nicht $delta$ (Glanzwinkel zur Netzebene) mit $2 delta$ (Winkel zwischen
  gebeugtem Strahl und Achse). Der Faktor 2 zwischen diesen Winkeln ist die häufigste Fehlerquelle
  in dieser Rechnung – er steckt bereits in der Endformel.
]

== Zwei Röhren, zwei Zwecke

#table(
  columns: (1fr, 1fr),
  [*Elektronenstrahlröhre*], [*Elektronenbeugungsröhre*],
  [Erzeugt einen fokussierten Strahl, der durch *Felder abgelenkt* wird (Ablenkplatten,
  Magnetspulen). Zweck: Nachweis der Teilcheneigenschaften, Bestimmung von $e\/m$, Oszilloskop,
  Bildröhre.], [Erzeugt einen Strahl, der auf eine *dünne Graphitfolie* trifft. Zweck: Nachweis der
  Welleneigenschaften durch Beugungsringe.],
)

Beide Röhren enthalten eine Elektronenkanone – der Unterschied liegt darin, was man mit dem Strahl
*macht*: ablenken (Teilchenbahn) oder beugen (Welle).

== Weitere Belege: Davisson-Germer und Einzelelektronen

Beim *Davisson-Germer-Experiment* (1927) wurden Elektronen an einer Nickeloberfläche gestreut.
Die gestreute Intensität zeigte Maxima unter bestimmten Winkeln, die sich mit der
Bragg-Bedingung für das Nickelgitter erklären ließen. Dies war der erste quantitative Nachweis
der Materiewellen.

Beim Experiment von *Tonomura* (1989) wurden Elektronen einzeln durch einen Doppelspalt geschickt.
Auf dem Schirm erscheinen zunächst zufällig verteilte Punkte; erst nach vielen Elektronen baut
sich das Interferenzmuster auf. Das zeigt: Die Interferenz entsteht nicht durch Wechselwirkung
vieler Elektronen, sondern jedes einzelne Elektron „interferiert mit sich selbst“. Diese
Erkenntnis wird in Skript 4 ausführlich behandelt.

= Experimente

== Experiment: Elektronenbeugung am Graphit

#experiment[
  *Versuchsaufbau.* Evakuierte Glaskolbenröhre mit Glühkathode, Wehneltzylinder zur Fokussierung,
  Anode mit zentraler Bohrung, dahinter eine dünne Graphitfolie und ein fluoreszierender Schirm
  mit Skala. Beschleunigungsspannung $U_B$ regelbar (0–5 kV), Anodenspannung als Messgröße.
  *Funktion der Bauteile.* Die Kathode liefert Elektronen (glühelektrischer Effekt); der
  Wehneltzylinder bündelt sie; die Anode beschleunigt sie auf $e U_B$; die Graphitfolie dient als
  Beugungsgitter; der Leuchtschirm macht das Muster sichtbar.
  *Durchführung.* $U_B$ langsam erhöhen und das Ringmuster beobachten. Für mehrere Spannungen die
  Radien $r_1$ und $r_2$ der beiden inneren Ringe messen.
  *Beobachtung.* Zwei deutlich getrennte, konzentrische Ringe (bei höherer Spannung weitere,
  schwächere). Mit steigender Spannung werden die Ringe *kleiner* und *schärfer*.
  *Erklärung.* Größere Spannung → größerer Impuls → kleinere Wellenlänge → kleinere
  Beugungswinkel nach $n lambda = 2 d sin delta$.
  *Auswertung.* $lambda = d r\/(n a)$; Vergleich mit $lambda = 1","226 "nm"\/sqrt(U_B\/"V")$.
  Alternativ: $r_1$ über $1\/sqrt(U_B)$ auftragen – Ursprungsgerade.
  *Bedeutung.* Direkter Nachweis der Wellennatur von Elektronen; Bestätigung von $lambda = h\/p$.
  *Grenzen.* Zwei Netzebenenscharen des Graphits liefern zwei Ringsysteme, die sich bei höheren
  Ordnungen überlagern; die Folie ist nicht ideal dünn; die Spannungsmessung ist mit
  Unsicherheit behaftet (Kathodenfall).
]

#figure(
  image("../fig/zeigerkette.svg", width: 84%),
  caption: [Analogie zur Optik: Die Beugung am Kristall lässt sich wie am optischen Gitter mit Phasenbeziehungen zwischen vielen Teilwellen beschreiben.],
)

== Analogieversuch mit Licht

#experiment[
  *Aufbau.* Laser, optisches Gitter (bekannte Gitterkonstante), Schirm.
  *Beobachtung.* Scharfe Maxima unter Winkeln $sin alpha = n lambda\/g$.
  *Bedeutung.* Liefert die *optische Analogie*: Ersetzt man $g$ durch $2 d sin delta$, erhält man
  formal dieselbe Beziehung. Damit lässt sich das Elektronenbild deuten, ohne eine neue Theorie zu
  benötigen – man braucht nur die kleinere Wellenlänge.
]

= Herleitungen

#herleitung[*de-Broglie-Wellenlänge, Zahlenform*]
  $lambda = h\/sqrt(2 m_e e U_B)$. Einsetzen der Konstanten:
  $h = 6","626 dot 10^(-34)$ J s, $m_e = 9","109 dot 10^(-31)$ kg,
  $e = 1","602 dot 10^(-19)$ C ergibt
  $lambda = 6","626 dot 10^(-34)\/sqrt(2 dot 9","109 dot 10^(-31) dot 1","602 dot 10^(-19) dot U_B)
  = (1","226 dot 10^(-9) "m")\/sqrt(U_B\/"V")$.

#herleitung[*Netzebenenabstand aus Ringradien*]
  Sind $lambda$ (aus $U_B$) und $r$, $a$ bekannt, so folgt aus $lambda = d r\/(n a)$:
  $d = n lambda a \/ r$. Mit den typischen Werten $U_B = 4$ kV ($lambda = 19","4$ pm),
  $a = 13","5$ cm und $r_1 = 12","3$ mm ergibt sich
  $d = 1 dot 19","4 dot 10^(-12) dot 0","135\/(12","3 dot 10^(-3)) = 2","13 dot 10^(-10)$ m
  $= 0","213$ nm – der bekannte Abstand der Graphit-Netzebenen.

#herleitung[*Warum schnelle Elektronen „teilchenhafter“ wirken*]
  Aus $lambda = h\/p$ folgt: Je größer $p$, desto kleiner $lambda$, desto kleiner die
  Beugungswinkel. Für $lambda -> 0$ verschwinden die Beugungseffekte, und die Bahn wird beliebig
  gut durch einen Strahl beschreibbar. Das ist der klassische Grenzfall – und gleichzeitig die
  inhaltliche Verbindung zur Unbestimmtheitsrelation (Skript 4).

= Abituraufgaben

#aufgabe(1, punkte: 12)[
  In einer Elektronenbeugungsröhre ($a = 13","5$ cm, Graphit mit $d = 0","213$ nm) wird bei
  $U_B = 3","0$ kV der innere Ring mit dem Radius $r_1 = 14","2$ mm gemessen.
  #enum(
    [Berechnen Sie die Elektronenwellenlänge aus der Beschleunigungsspannung.],
    [Berechnen Sie die Wellenlänge aus dem Ringradius und vergleichen Sie beide Werte.],
    [Erklären Sie, wie sich das Bild ändert, wenn $U_B$ verdoppelt wird, und begründen Sie Ihre
     Aussage mit einer Rechnung.],
  )
]

#lösung[
  *Zu 1.* $lambda = 1","226 "nm"\/sqrt(3000) = 1","226\/54","77 "nm" = 22","4$ pm.

  *Zu 2.* $lambda = d r_1\/(1 dot a) = 0","213 dot 10^(-9) dot 14","2 dot 10^(-3)\/(0","135)
  = 2","24 dot 10^(-11)$ m $= 22","4$ pm. Die Werte stimmen sehr gut überein; die Abweichung
  liegt unter $1 %$.

  *Zu 3.* $lambda$ sinkt mit $1\/sqrt(U_B)$: bei $6","0$ kV ist
  $lambda = 22","4\/sqrt(2) = 15","8$ pm. Aus $r = lambda a\/d$ folgt $r_1 = 15","8 dot 10^(-12)
  dot 0","135\/(0","213 dot 10^(-9)) = 10","0$ mm. Der Ring wird also um den Faktor
  $1\/sqrt(2) approx 0","71$ kleiner und wegen der kleineren Wellenlänge schärfer.
]

#aufgabe(2, punkte: 14)[
  Ein Elektron und ein Proton werden jeweils mit $U_B = 500$ V beschleunigt.
  #enum(
    [Berechnen Sie beide Wellenlängen.],
    [Begründen Sie, welches Teilchen die größere Wellenlänge hat, ohne die Rechnung zu benutzen.],
    [Beurteilen Sie, ob man mit 500-V-Protonen an einem Graphitkristall (Netzebenenabstand
     0,213 nm) Beugungsringe beobachten kann.],
  )
]

#lösung[
  *Zu 1.* Elektron: $lambda_e = 1","226\/sqrt(500) "nm" = 54","8$ pm.
  Proton: $lambda_p = h\/sqrt(2 m_p e U_B)$ mit $m_p = 1","673 dot 10^(-27)$ kg:
  $2 m_p e U_B = 2 dot 1","673 dot 10^(-27) dot 1","602 dot 10^(-19) dot 500
  = 2","68 dot 10^(-43)$; $sqrt(2 m_p e U_B) = 5","18 dot 10^(-22)$;
  $lambda_p = 6","626 dot 10^(-34)\/5","18 dot 10^(-22) = 1","28 dot 10^(-12)$ m $= 1","28$ pm.

  *Zu 2.* Bei gleicher Beschleunigungsspannung ist die kinetische Energie gleich, aber der Impuls
  ist $p = sqrt(2 m E_"kin")$ – er wächst mit $sqrt(m)$. Das Proton ist rund 1836-mal schwerer,
  sein Impuls also etwa 43-mal größer, seine Wellenlänge entsprechend 43-mal kleiner.

  *Zu 3.* $lambda_p = 1","28$ pm ist rund 170-mal kleiner als $d = 213$ pm. Nach
  $sin delta = n lambda\/(2 d)$ ergibt sich für $n = 1$ ein Winkel von nur
  $delta approx 0","0034^@$ – der Ring läge so dicht am Zentrum, dass er praktisch nicht von der
  Achse zu trennen wäre. Beugung tritt zwar auf, ist aber mit diesem Aufbau nicht beobachtbar.
  Für sichtbare Effekte bräuchte man entweder langsamere Protonen oder ein größeres $d$.
]

#aufgabe(3, punkte: 10)[
  Die de-Broglie-Hypothese wird oft als „umgekehrter Photoeffekt“ bezeichnet. #enum(
    [Erläutern Sie diese Formulierung.],
    [Nennen Sie ein Beispiel für ein makroskopisches Objekt und berechnen Sie seine Wellenlänge.],
    [Begründen Sie, warum Materiewellen im Alltag keine Rolle spielen.],
  )
]

#lösung[
  *Zu 1.* Beim Photoeffekt wird die *Welleneigenschaft* des Lichts (Frequenz $f$, Wellenlänge
  $lambda$) benutzt, um eine *Teilcheneigenschaft* (Energiequant $E = h f$) zu beschreiben. Bei de
  Broglie ist es umgekehrt: Eine *Teilchengröße* (Impuls $p$) bestimmt eine *Wellenlänge*
  ($lambda = h\/p$). In beiden Fällen verbindet $h$ die beiden Beschreibungen.

  *Zu 2.* Ein Auto ($m = 1200$ kg, $v = 30$ m/s): $p = 3","6 dot 10^4$ kg m/s,
  $lambda = 6","6 dot 10^(-34)\/3","6 dot 10^4 approx 1","8 dot 10^(-38)$ m.

  *Zu 3.* Beugung ist nur beobachtbar, wenn die Wellenlänge vergleichbar mit der Größe der
  Struktur ist. Für makroskopische Objekte ist $lambda$ um viele Zehnerpotenzen kleiner als jedes
  verfügbare Hindernis; außerdem sind solche Objekte nie isoliert (Wechselwirkung mit Umgebung
  zerstört die Phasenbeziehung – Dekohärenz).
]

= Typische Fehler

#achtung[
  *1. Impuls mit Energie verwechselt.* $lambda = h\/p$, nicht $h\/E$.

  *2. $U_B$ nicht in Volt, $m_e$ in Gramm.* Immer SI: kg, C, V, m.

  *3. Kleinwinkel-Näherung ungeprüft.* $tan(2 delta) approx 2 delta$ gilt nur für kleine Winkel;
  bei großen Ringen muss man mit $arctan(r\/a)$ arbeiten.

  *4. Glanzwinkel $delta$ mit Streuwinkel $2 delta$ verwechselt.* Die Formel
  $lambda = d r\/(n a)$ enthält den Faktor 2 bereits.

  *5. „Elektronen sind mal Welle, mal Teilchen“. * Besser: Es ist ein Quantenobjekt; je nach
  Experiment tritt die eine oder andere Eigenschaft in Erscheinung (Komplementarität).

  *6. Relativistik vergessen.* Ab etwa $50$ kV weicht die nichtrelativistische Rechnung deutlich ab.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Jedes Objekt mit Impuls $p$ hat eine Wellenlänge $lambda = h\/p$.
- In der Elektronenkanone gilt $e U_B = 1\/2 m_e v^2$, daraus $lambda = h\/sqrt(2 m_e e U_B)$.
- Graphit wirkt als Beugungsgitter; die Ringe sind Bragg-Reflexe an vielen Kristalliten.
- Die Schulformel $lambda = d r\/(n a)$ ist die Bragg-Bedingung in Kleinwinkelnäherung.
- Elektronenstrahlröhre (Ablenkung) und Beugungsröhre (Wellennachweis) haben verschiedene Zwecke.

== Zentrale Formeln

#table(
  columns: (1fr, 1fr),
  [Formel], [Bedeutung],
  [$lambda = h\/p = h\/(m v)$], [de Broglie],
  [$e U_B = 1\/2 m_e v^2$], [Energie in der Elektronenkanone],
  [$p = sqrt(2 m_e e U_B)$], [Impuls nach Beschleunigung],
  [$lambda = 1","226 "nm"\/sqrt(U_B\/"V")$], [Zahlenform für Elektronen],
  [$n lambda = 2 d sin delta$], [Bragg],
  [$lambda = d r\/(n a)$], [Beugungsröhre],
  [$tan(2 delta) = r\/a$], [Geometrie am Schirm],
)

== Wichtigste Experimente

#table(
  columns: (1fr, 1fr, 1fr),
  [Experiment], [Beobachtung], [Aussage],
  [Elektronenbeugungsröhre], [Ringe, kleiner bei höherem $U_B$], [Wellennatur der Elektronen],
  [Davisson-Germer], [Maxima unter diskreten Winkeln], [Bragg-Bedingung für Elektronen],
  [Tonomura], [Muster aus Einzelereignissen], [jedes Elektron interferiert mit sich selbst],
  [Optisches Gitter], [scharfe Maxima], [Analogie zur Beugung],
)

== Fachbegriffe

Materiewelle · de-Broglie-Wellenlänge · Elektronenkanone · Glühkathode · Wehneltzylinder ·
Beschleunigungsspannung · Elektronenbeugungsröhre · Elektronenstrahlröhre · Netzebene ·
Glanzwinkel · Bragg-Bedingung · Debye-Scherrer-Ring · Davisson-Germer · Komplementarität

== Typische Prüfungsfragen

- „Leiten Sie $lambda = h\/sqrt(2 m e U)$ her.“
- „Erklären Sie die Ringe mit der Bragg-Bedingung.“
- „Begründen Sie, warum die Ringe bei höherer Spannung kleiner werden.“
- „Vergleichen Sie das Beugungsbild mit dem eines optischen Gitters.“
- „Warum beobachtet man bei einem Fußball keine Beugung?“

== Auswendig können

- $lambda = h\/p$
- $e U_B = 1\/2 m v^2$, $lambda = h\/sqrt(2 m e U_B)$
- $lambda = 1","226 "nm"\/sqrt(U_B\/"V")$
- $n lambda = 2 d sin delta$ und $lambda = d r\/(n a)$

== Wirklich verstehen

- Warum die Wellenlänge mit steigender Spannung sinkt
- Warum ein Kristall als „Gitter“ für Elektronen wirkt
- Warum das Muster aus Ringen und nicht aus Punkten besteht
- Warum die Wellennatur im Alltag unsichtbar bleibt

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik: Jahrgang 13, „Elektronenwellen“ (Elektronenbeugungsexperiment,
    Bragg-Reflexion, Modellierung der Elektronenwellenlänge, Simulationen) –
    https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022, „Quantenobjekte“ (de-Broglie-Gleichung,
    Elektronenbeugungsröhre, optische Analogie).
  - IQB-Aufgabenpool 2025, Aufgabe „Elektroneninterferenz am Doppelspalt“ (Kontext und
    Aufgabenstruktur, nicht wörtlich übernommen).
  - Grafiken: eigene Darstellungen (elektronenbeugung_bild.svg, bragg.svg, zeigerkette.svg).
]
