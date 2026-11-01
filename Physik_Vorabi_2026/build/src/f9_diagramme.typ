#import "../template.typ": *

#show: setup.with(title: "Übungsheft Diagrammauswertung", kicker: "Zusatzmaterial")

#set text(size: 9.6pt)

#cover(
  "Zusatzmaterial · Training",
  "Übungsheft Diagrammauswertung",
  "Messreihe → Diagramm → Steigung mit Einheit → Ergebnis",
  lernziele: (
    "die passende Auftragung wählen und begründen",
    "Steigung und Achsenabschnitt physikalisch deuten",
    "an den Residuen erkennen, ob ein Modell trägt",
    "Fehlerbalken in die Beurteilung einbeziehen",
  ),
)

#toc-page()

= Wie du mit diesem Heft arbeitest

Die Methode steht im Dokument *Regression und Auswertung* im selben Ordner. Hier wird sie
geübt: fünf Messreihen, jede nach demselben Muster.

#merksatz[
  Jede Lösung folgt vier Schritten: (1) Auftragung begründen, (2) Steigung *mit Einheit*
  bestimmen, (3) Steigung deuten, (4) Ergebnis mit Literaturwert und Unsicherheit abschließen.
  Wer Schritt 1 überspringt, verliert die Begründungspunkte; wer die Einheit der Steigung
  weglässt, verliert den Deutungspunkt.
]

= Aufgaben

#aufgabe(1, punkte: 9)[
  Ein Resonanzrohr wird mit einem Lautsprecher der Frequenz $f = 1","00$ kHz angeregt. Die
  Rohrlänge $L$, bei der die Luftsäule jeweils mitresoniert, wird für die Ordnungen
  $n = 1$ bis $5$ gemessen.

  #table(
    columns: 6,
    [$n$], [1], [2], [3], [4], [5],
    [$L$ in m], [0,1615], [0,3330], [0,5045], [0,6760], [0,8475],
  )

  #figure(
    image("../fig/diag_resonanz.svg", width: 78%),
    caption: [Rohrlänge $L$ gegen die Ordnung $n$ der Resonanz bei $f = 1","00$ kHz. Die
      Steigung ist $lambda\/2$; daraus folgt $c = 2 f dot m$.],
  )

  #enum(
    [Begründen Sie, warum $L$ über $n$ eine Gerade ergibt, und geben Sie die Bedeutung von
     Steigung und Achsenabschnitt an.],
    [Bestimmen Sie die Steigung, daraus die Wellenlänge und die Schallgeschwindigkeit.],
    [Deuten Sie den Achsenabschnitt. Warum ist er negativ?],
  )
]

#aufgabe(2, punkte: 8)[
  Ein Kondensator wird über einen Widerstand $R = 1","0$ MΩ entladen. Die Spannung wird mit
  einer Stoppuhr protokolliert.

  #table(
    columns: 8,
    [$t$ in s], [0], [1], [2], [3], [4], [5], [6],
    [$U$ in V], [10,00], [6,13], [3,64], [2,25], [1,33], [0,84], [0,49],
  )

  #figure(
    image("../fig/diag_entladung.svg", width: 96%),
    caption: [Entladung: links $U(t)$ linear, rechts $ln(U\/U_0)$ gegen $t$. Im
      halblogarithmischen Bild ist die Steigung $-1\/(R C)$; eine Gerade bestätigt das
      Exponentialgesetz.],
  )

  #enum(
    [Begründen Sie mit dem Entladungsgesetz, warum $ln(U)$ über $t$ eine fallende Gerade
     ergibt, und geben Sie die Bedeutung der Steigung an.],
    [Bestimmen Sie $R C$ und daraus die Kapazität $C$.],
    [Bestimmen Sie die Halbwertszeit einmal aus $R C$ und einmal aus den Messwerten.
     Vergleichen Sie beide Werte.],
  )
]

#aufgabe(3, punkte: 9)[
  Bei einer Bremsprobe wird der Bremsweg $s$ bei verschiedenen Anfangsgeschwindigkeiten $v$
  gemessen.

  #table(
    columns: 7,
    [$v$ in m/s], [5], [10], [15], [20], [25], [30],
    [$s$ in m], [1,81], [5,95], [14,26], [24,75], [39,36], [56,05],
  )

  #figure(
    image("../fig/diag_residuen.svg", width: 100%),
    caption: [Links: Ausgleichsgerade $s$ über $v$ (falsches Modell). Mitte: Residuen zeigen
      ein systematisches Muster. Rechts: linearisierte Auftragung $s$ über $v^2$; die Steigung
      ist $1\/(2a)$.],
  )

  #enum(
    [Beurteilen Sie die Gerade in der linken Teilabbildung anhand der Residuen. Beschreiben
     Sie den Verlauf der Residuen.],
    [Führen Sie eine Linearisierung durch, deuten Sie die Steigung und bestimmen Sie die
     Bremsverzögerung $a$.],
    [Erklären Sie, warum ein $R^2$ von $0","96$ allein keinen linearen Zusammenhang belegt.],
  )
]

#aufgabe(4, punkte: 8)[
  Mit einem Fadenpendel wird die Erdbeschleunigung bestimmt. Die Fadenlänge $L$ wird
  eingestellt, die Periodendauer $T$ mit einer Lichtschranke gemessen (Unsicherheit
  $plus.minus 0","01$ s).

  #table(
    columns: 6,
    [$L$ in m], [0,20], [0,40], [0,60], [0,80], [1,00],
    [$T$ in s], [0,901], [1,263], [1,559], [1,790], [2,009],
  )

  #figure(
    image("../fig/diag_g.svg", width: 76%),
    caption: [Fadenlänge $L$ über $T^2$ mit Fehlerbalken aus der Unsicherheit von $T$. Die
      Steigung ist $g\/(4 pi^2)$; daraus folgt $g$.],
  )

  #enum(
    [Begründen Sie die Auftragung $L$ über $T^2$ und geben Sie die Bedeutung der Steigung an.],
    [Bestimmen Sie die Steigung und daraus $g$.],
    [Erklären Sie, warum die Fehlerbalken waagerecht liegen, und beurteilen Sie, ob das
     Ergebnis mit $9","81 "m/s"^2$ verträglich ist.],
  )
]

#aufgabe(5, punkte: 6)[
  Drei Geraden ohne eingezeichnete Messwerte sind in Abbildung 5 zu sehen. Geben Sie für jede
  Gerade die Einheit der Steigung an und die physikalische Größe, die sie liefert.

  #figure(
    image("../fig/diag_steigungen.svg", width: 100%),
    caption: [Drei Ausgleichsgeraden mit unterschiedlichen Achsengrößen. Die Einheit der
      Steigung ist immer (Einheit der y-Achse) pro (Einheit der x-Achse).],
  )

  #enum(
    [Weg über Zeit],
    [Spannung über Stromstärke],
    [Wärme über Temperaturänderung],
  )
]

#pagebreak()

= Lösungen

#lösung[
  *Zu Aufgabe 1.* Bei Resonanz gilt $L_n = n dot lambda/2 - e$ mit der Mündungskorrektur $e$.
  Damit ist $L$ linear in $n$: Steigung $lambda/2$, Achsenabschnitt $-e$.

  Regression: $m = 0","1716$ m, $b = -0","0102$ m, $R^2 = 0","99998$.

  $ lambda = 2 m = 2 dot 0","1716 "m" = 0","3432 "m" quad ==> quad
    c = lambda f = 0","3432 "m" dot 1","00 dot 10^3 "Hz" = 343 "m/s" $

  Der Achsenabschnitt ist negativ, weil die wirksame Luftsäule um die Mündungskorrektur
  *länger* ist als das Rohr: Die erste Resonanz liegt bei $L_1 = lambda/2 - e$, also unterhalb
  von $lambda/2$. Aus $e = 0","0102$ m folgt eine Korrektur von etwa $1$ cm, was für ein Rohr
  dieser Weite plausibel ist. Der Literaturwert für Luft bei 20 °C ist $343$ m/s; die Messung
  trifft ihn auf $0","1 %$ genau.
]

#lösung[
  *Zu Aufgabe 2.* Aus $U = U_0 e^(-t \/ (R C))$ folgt
  $ ln U = ln U_0 - t/(R C) $. Also ist $ln U$ linear in $t$ mit der Steigung $-1/(R C)$.

  Regression: $m = -0","501 "s"^(-1)$, $b = 2","305$, $R^2 = 0","9998$.

  $ R C = -1/m = 1/(0","501 "s"^(-1)) = 2","00 "s" quad ==> quad
    C = (2","00 "s")/(1","0 dot 10^6 Omega) = 2","0 dot 10^(-6) "F" = 2","0 "µF" $

  Aus dem Achsenabschnitt folgt $U_0 = e^b = e^(2","305) "V" = 10","0$ V, also der
  Anfangswert der Messreihe.

  Halbwertszeit aus $R C$: $T_"1/2" = R C ln 2 = 2","00 "s" dot 0","693 = 1","39$ s.
  Aus den Messwerten: $U$ fällt von $10","00$ V auf $5","00$ V zwischen $t = 0$ und
  $t approx 1","39$ s, denn $U(1","39 "s") = 10","0 dot e^(-0","695) "V" = 5","0$ V. Beide Wege
  stimmen überein – das ist die eigentliche Probe, dass das Modell trägt.
]

#lösung[
  *Zu Aufgabe 3.* Die Residuen der linearen Regression sind nicht zufällig um null verteilt,
  sondern bilden eine systematische Krümmung: bei kleinen und großen Geschwindigkeiten liegen
  sie unter, in der Mitte über der Geraden. Ein $R^2$ von $0","958$ sieht gut aus, verdeckt
  aber genau diese Systematik.

  Physikalisch gilt $s = v^2/(2 a)$. Die Auftragung $s$ über $v^2$ ist daher linear mit der
  Steigung $1/(2 a)$:

  $ m = 0","0624 "s"^2/"m" quad ==> quad
    a = 1/(2 m) = 1/(2 dot 0","0624 "s"^2/"m") = 8","0 "m/s"^2 $

  Mit $R^2 = 0","99983$ und zufällig streuenden Residuen ist das Modell jetzt gedeckt; die
  Bremsverzögerung beträgt etwa $8","0$ m/s².

  $R^2$ misst nur, wie viel Streuung die Gerade erklärt – nicht, ob der *Zusammenhang* linear
  ist. Bei gekrümmten Daten kann $R^2$ hoch bleiben, weil die Punkte insgesamt monoton steigen.
  Erst die Residuen zeigen die Krümmung.
]

#lösung[
  *Zu Aufgabe 4.* Für das Fadenpendel gilt $T = 2 pi sqrt(L\/g)$, also
  $L = (g \/ (4 pi^2)) dot T^2$. Damit ist $L$ linear in $T^2$ mit der Steigung
  $g/(4 pi^2)$.

  Regression: $m = 0","2481 "m/s"^2$, $b = 0","0006$ m, $R^2 = 0","99987$.

  $ g = 4 pi^2 m = 39","478 dot 0","2481 "m/s"^2 = 9","80 "m/s"^2 $

  Die Fehlerbalken liegen waagerecht, weil die Unsicherheit in $T$ steckt und $T^2$ auf der
  $x$-Achse steht; die Fadenlänge ist genauer bekannt als die Zeit. Die Abweichung zum
  Literaturwert $9","81 "m/s"^2$ beträgt $0","1 %$ und liegt damit innerhalb der
  Messunsicherheit – das Ergebnis ist verträglich. Ein systematischer Fehler (etwa die
  vernachlässigte Masse des Fadens) würde alle Punkte gleichsinnig verschieben und wäre an
  einem von null verschiedenen Achsenabschnitt zu erkennen; hier ist $b approx 0$.
]

#lösung[
  *Zu Aufgabe 5.* Die Steigung ist immer Quotient der Achsengrößen:

  #table(
    columns: (auto, auto, 1fr),
    [Auftragung], [Einheit der Steigung], [Bedeutung],
    [$s$ über $t$], [$"m"/"s"$], [Geschwindigkeit $v$ (bei gleichförmiger Bewegung)],
    [$U$ über $I$], [$"V"/"A" = Omega$], [Widerstand $R$ (ohmsches Verhalten vorausgesetzt)],
    [$Q$ über $Delta T$], [$"kJ"/"K"$], [Wärmekapazität $C = m c$],
  )

  Die Einheit der Steigung verrät also die gesuchte Größe, bevor man eine einzige Formel
  umstellt. Genau das ist in der Klausur der schnellste Weg zur richtigen Deutung.
]

= Checkliste für die Klausur

#table(
  columns: (auto, 1fr),
  [Nr.], [Prüfpunkt],
  [1], [Ist die Auftragung begründet (Formel, die die Gerade liefert)?],
  [2], [Sind beide Achsen mit Größe *und* Einheit beschriftet?],
  [3], [Ist die Steigung aus zwei weit entfernten Geradenpunkten bestimmt – mit Einheit?],
  [4], [Ist der Achsenabschnitt gedeutet (systematischer Fehler, Ursprung, Korrektur)?],
  [5], [Sind die Residuen geprüft (zufällig oder systematisch)?],
  [6], [Steht am Ende ein Ergebnis mit Einheit, Unsicherheit und Literaturvergleich?],
)

#achtung[
  Drei Fehler kosten in Auswertungsaufgaben am häufigsten Punkte: Steigung ohne Einheit
  angegeben, Achsenabschnitt ignoriert, und $R^2$ als Beweis für Linearität zitiert.
]

= Zeit und Punkte

#table(
  columns: (auto, auto, auto),
  [Aufgabe], [Punkte], [Richtzeit],
  [1 Resonanzrohr], [9], [10 min],
  [2 Entladung], [8], [9 min],
  [3 Bremsweg], [9], [12 min],
  [4 Fadenpendel], [8], [9 min],
  [5 Steigungen], [6], [5 min],
  [*Summe*], [*40*], [*45 min*],
)

#quelle[
  Messdaten und Abbildungen für dieses Heft wurden erzeugt und mit
  `build/make_diag_figs.py` reproduzierbar berechnet (lineare Regression, Residuen).
  Die Werte entsprechen typischen Schulmessungen; die Literaturwerte sind
  $c = 343$ m/s (Luft, 20 °C) und $g = 9","81$ m/s².
]
