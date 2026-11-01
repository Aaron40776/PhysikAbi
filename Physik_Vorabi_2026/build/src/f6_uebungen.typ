#import "../template.typ": *

#show: setup.with(title: "Übungsheft", kicker: "Zusatzmaterial")

#cover(
  "Zusatzmaterial · Training",
  "Übungsheft: 20 Aufgaben mit Lösungen",
  "Aufgaben im Stil des Aufgabenpools, quer durch alle Themen – mit vollständigen Rechenwegen",
  lernziele: (
    "Rechenroutinen unter Zeitdruck sicher anwenden",
    "Begründungen in der Sprache der Operatoren formulieren",
    "Messreihen und Diagramme auswerten",
  ),
)

#toc-page()

= Wie du mit diesem Heft arbeitest

Das Heft enthält *20 Aufgaben* in zwei Teilen:

- *Teil A* – die Aufgaben, geordnet nach Themen. Bearbeite sie zuerst ohne Hilfsmittel außer
  Formelsammlung und Taschenrechner.
- *Teil B* – die Lösungen mit vollständigem Rechenweg und Begründung.

#merksatz[
  *Empfohlener Ablauf:* Aufgabe vollständig durchrechnen (15–20 min) → erst dann Lösung lesen →
  jede Abweichung mit einem Stichwort auf einem Fehlerblatt notieren. Nach zwei Tagen dieselbe
  Aufgabe noch einmal rechnen. Wer nur Lösungen liest, lernt fast nichts.
]

#achtung[
  Die Operatoren bedeuten im Abitur:

  *Berechnen Sie* – Rechenweg nachvollziehbar, mit Formel, Einsetzung, Ergebnis und Einheit.
  *Bestimmen Sie* – Wert aus Materialien/Diagrammen entnehmen, Methode nennen.
  *Begründen Sie* – Ursache-Wirkungs-Kette, physikalisches Gesetz benennen.
  *Erklären Sie* – Modell + Beobachtung verknüpfen.
  *Erläutern Sie* – wie „erklären“, zusätzlich mit Beispiel oder Zwischenschritt.
  *Beurteilen Sie* – Kriterien nennen, abwägen, zu einem begründeten Urteil kommen.
  *Skizzieren Sie* – qualitative, beschriftete Darstellung.
]

== Zeitplan und Punkte

| Block | Aufgaben | Punkte | Zeit |
|---|---|---|---|
| A Wellen und Interferenz | 4 | 54 | 55 min |
| B Lichtquanten | 3 | 40 | 35 min |
| C Elektronenwellen | 3 | 34 | 35 min |
| D Quantenobjekte | 4 | 50 | 45 min |
| E Atome | 3 | 40 | 35 min |
| F Spektren und Franck-Hertz | 3 | 38 | 35 min |
| *Summe* | *20* | *256* | *4 h* |

#figure(
  image("../fig/doppelspalt_intensitaet.svg", width: 70%),
  caption: [Zur Erinnerung: Die Intensitätsverteilung hinter einem Doppelspalt ist $I tilde cos^2$ – die Streifen sind äquidistant, solange die Kleinwinkelnäherung gilt.],
)

= Teil A – Aufgaben

== Block A: Wellen und Interferenz

#aufgabe(1, punkte: 14)[
  Ein Doppelspalt mit Spaltabstand $g = 0","250$ mm wird mit Laserlicht der Wellenlänge
  $lambda = 632","8$ nm beleuchtet. Der Schirm steht $e = 2","00$ m entfernt.
  #enum(
    [Berechnen Sie den Abstand zweier benachbarter Maxima und den Abstand zwischen dem Maximum
     1. Ordnung links und dem 1. Ordnung rechts.],
    [Vor einen der Spalte wird ein Glasplättchen der Dicke $d = 1","0$ µm und der Brechzahl
     $n = 1","50$ gestellt. Berechnen Sie, um wie viel sich das Muster verschiebt, und geben Sie die
     Verschiebung als Bruchteil des Streifenabstands an.],
    [Begründen Sie, warum sich das Muster verschiebt, obwohl die Spalte selbst nicht bewegt
     werden.],
  )
]

#aufgabe(2, punkte: 14)[
  Ein optisches Gitter mit 500 Strichen pro Millimeter wird mit weißem Licht
  ($400$ nm bis $700$ nm) senkrecht beleuchtet. Der Schirm ist $e = 1","20$ m entfernt.
  #enum(
    [Berechnen Sie den Gitterabstand $g$.],
    [Berechnen Sie die Positionen des roten und des violetten Randes des Spektrums 1. Ordnung auf
     dem Schirm.],
    [Bestimmen Sie die höchste Ordnung, die für 400 nm noch beobachtbar ist.],
    [Prüfen Sie rechnerisch, ob sich das Spektrum 3. Ordnung (400 nm) mit dem Spektrum 2. Ordnung
     (700 nm) überlappt, und erläutern Sie die Folge für die Auswertung eines weißen Spektrums.],
  )
]

#aufgabe(3, punkte: 12)[
  Mit einem Ultraschall-Interferometer wird die Schallgeschwindigkeit in Luft bestimmt. Ein
  Sender strahlt mit $f = 40","0$ kHz; vor ihm steht eine reflektierende Platte. Beim Verschieben
  der Platte werden die Positionen maximaler Empfangsamplitude im Abstand von $Delta x = 4","3$ mm
  gefunden.
  #enum(
    [Erläutern Sie, warum die Maxima im Abstand einer halben Wellenlänge auftreten.],
    [Berechnen Sie Wellenlänge und Schallgeschwindigkeit.],
    [Vergleichen Sie Ihr Ergebnis mit dem Literaturwert 343 m/s und beurteilen Sie die
     Genauigkeit.],
  )
]

#aufgabe(4, punkte: 14)[
  Ein Einzelspalt der Breite $b = 0","10$ mm wird mit Licht der Wellenlänge $500$ nm beleuchtet;
  der Schirm ist $2","0$ m entfernt.
  #enum(
    [Berechnen Sie die Breite des zentralen Maximums auf dem Schirm.],
    [Geben Sie an, wie sich die Breite ändert, wenn der Spalt auf $0","05$ mm verkleinert wird,
     und begründen Sie das Ergebnis mit der Beugung.],
    [Skizzieren Sie die Intensitätsverteilung für beide Spaltbreiten in einem gemeinsamen
     Diagramm und beschriften Sie Minima und Zentralmaximum.],
  )
]

== Block B: Lichtquanten

#aufgabe(5, punkte: 14)[
  Mit einer Fotozelle und der Gegenfeldmethode werden für mehrere Wellenlängen die
  Bremsspannungen gemessen:

  | $lambda$ in nm | 405 | 436 | 546 | 578 |
  | $U_B$ in V | 1,16 | 0,94 | 0,37 | 0,25 |

  #enum(
    [Berechnen Sie zu jeder Wellenlänge die Frequenz und tragen Sie $U_B$ über $f$ auf.],
    [Bestimmen Sie aus der Steigung das Plancksche Wirkungsquantum und aus dem Achsenabschnitt
     die Austrittsarbeit.],
    [Berechnen Sie die Grenzfrequenz und die Grenzwellenlänge des Kathodenmaterials.],
  )
]

#aufgabe(6, punkte: 12)[
  Eine blaue LED ($lambda = 470$ nm) leuchtet ab einer Spannung von $U_S = 2","60$ V.
  #enum(
    [Berechnen Sie die Photonenenergie in eV.],
    [Bestimmen Sie aus $e U_S = h f$ einen Wert für $h$ und vergleichen Sie ihn mit dem
     Literaturwert.],
    [Beurteilen Sie, ob man mit dieser Methode $h$ auf drei gültige Ziffern bestimmen kann.],
  )
]

#aufgabe(7, punkte: 14)[
  Eine Röntgenröhre wird mit $U_B = 40$ kV betrieben; das Target besteht aus Molybdän
  (charakteristische $K_alpha$-Linie bei $lambda = 0","071$ nm).
  #enum(
    [Berechnen Sie die kurzwellige Grenze des Bremsspektrums.],
    [Berechnen Sie die Energie der $K_alpha$-Linie in keV und ordnen Sie sie im Spektrum ein.],
    [Begründen Sie, warum die Grenzwellenlänge unabhängig vom Targetmaterial ist, die
     $K_alpha$-Linie aber nicht.],
    [Prüfen Sie, ob eine Röntgenröhre mit 12 kV die $K_alpha$-Linie von Molybdän erzeugen kann.],
  )
]

== Block C: Elektronenwellen

#aufgabe(8, punkte: 12)[
  In einer Elektronenbeugungsröhre treffen Elektronen, die mit $U_B = 4","0$ kV beschleunigt
  wurden, auf eine Graphitfolie. Der Leuchtschirm ist $a = 13","5$ cm von der Folie entfernt; der
  Ring 1. Ordnung hat den Radius $r = 12","3$ mm.
  #enum(
    [Berechnen Sie die de-Broglie-Wellenlänge der Elektronen.],
    [Bestimmen Sie daraus den für diesen Ring verantwortlichen Netzebenenabstand.],
    [Erklären Sie, warum zwei Ringe und keine punktförmigen Flecken beobachtet werden.],
  )
]

#aufgabe(9, punkte: 12)[
  Ein Elektron und ein Proton werden jeweils mit $U_B = 100$ V beschleunigt; zusätzlich wird eine
  Stahlkugel ($m = 10$ g, $v = 500$ m/s) betrachtet.
  #enum(
    [Berechnen Sie für alle drei Objekte die de-Broglie-Wellenlänge.],
    [Erklären Sie, warum man die Wellennatur der Stahlkugel nicht beobachten kann, obwohl sie
     nach de Broglie existiert.],
    [Begründen Sie, warum das Proton bei gleicher Beschleunigungsspannung eine kleinere
     Wellenlänge hat als das Elektron.],
  )
]

#aufgabe(10, punkte: 10)[
  Ein Elektronenmikroskop arbeitet mit $U_B = 50$ kV.
  #enum(
    [Berechnen Sie die Elektronenwellenlänge.],
    [Schätzen Sie das Auflösungsvermögen ($approx lambda\/2$) ab und vergleichen Sie es mit einem
     Lichtmikroskop ($lambda = 500$ nm).],
    [Erläutern Sie, warum das tatsächliche Auflösungsvermögen eines Elektronenmikroskops deutlich
     schlechter ist als der abgeschätzte Wert.],
  )
]

== Block D: Quantenobjekte

#aufgabe(11, punkte: 12)[
  Ein Doppelspalt ($g = 0","10$ mm) wird mit einzelnen Photonen der Wellenlänge $600$ nm
  beleuchtet; der Schirm ist $1","0$ m entfernt.
  #enum(
    [Berechnen Sie den Abstand der Maxima und die Position des Maximums 1. Ordnung.],
    [Beschreiben Sie, was in den ersten Sekunden und was nach einigen Stunden auf dem Schirm
     beobachtet wird.],
    [Erklären Sie das Zustandekommen des Musters mit Wahrscheinlichkeitsamplituden.],
    [Ein Detektor am linken Spalt registriert, welchen Weg das Photon nimmt. Beschreiben Sie die
     neue Verteilung und begründen Sie sie.],
  )
]

#aufgabe(12, punkte: 14)[
  Ein Mach-Zehnder-Interferometer ($lambda = 633$ nm) hat gleich lange Arme. In einen Arm wird
  senkrecht ein Glasplättchen der Dicke $d = 1","0$ µm und der Brechzahl $n = 1","50$ gestellt.
  #enum(
    [Berechnen Sie die zusätzliche optische Weglänge und die Phasenverschiebung.],
    [Berechnen Sie die Wahrscheinlichkeiten, mit denen ein einzelnes Photon in den Detektoren D1
     und D2 nachgewiesen wird.],
    [Bestimmen Sie die Dicke, bei der D1 überhaupt kein Photon mehr registriert.],
    [Begründen Sie, warum $P_1 + P_2 = 1$ gelten muss.],
  )
]

#aufgabe(13, punkte: 12)[
  In der Anordnung der Aufgabe 12 wird der zweite Strahlteiler erst dann eingefügt, wenn das
  Photon den ersten Strahlteiler bereits passiert hat (Delayed Choice).
  #enum(
    [Geben Sie an, welche Verteilung man mit und ohne zweiten Strahlteiler beobachtet.],
    [Erläutern Sie, warum diese Beobachtung mit dem Modell „Welle-Teilchen-Dualismus“ als paradox
     erscheint.],
    [Erklären Sie mithilfe der Quantenelektrodynamik, warum kein Widerspruch besteht.],
  )
]

#aufgabe(14, punkte: 12)[
  Ein Elektron passiert einen Spalt der Breite $b = 50$ µm.
  #enum(
    [Schätzen Sie die Impulsunbestimmtheit quer zur Ausbreitungsrichtung ab und prüfen Sie
     $Delta x dot Delta p_x approx h$.],
    [Ein angeregter Zustand hat die Lebensdauer $Delta t = 10$ ns. Schätzen Sie die
     Frequenzunbestimmtheit der emittierten Strahlung ab und erläutern Sie die Folge für die
     Schärfe der Spektrallinie.],
  )
]

== Block E: Atome

#aufgabe(15, punkte: 14)[
  Für das Wasserstoffatom gilt $E_n = -13","6 "eV" \/ n^2$.
  #enum(
    [Berechnen Sie die Energien für $n = 1$ bis $n = 4$ und skizzieren Sie das Niveauschema mit
     Energieskala.],
    [Berechnen Sie die Wellenlängen der Übergänge $2 -> 1$, $3 -> 2$ und $4 -> 2$.],
    [Ordnen Sie die Übergänge den Serien zu und geben Sie an, welche davon sichtbar sind.],
    [Berechnen Sie die Ionisierungsenergie und erläutern Sie, warum sie nicht von $n$ abhängt,
     wenn man vom Grundzustand ausgeht.],
  )
]

#aufgabe(16, punkte: 12)[
  Alpha-Teilchen der kinetischen Energie $5","0$ MeV werden an Goldkernen ($Z = 79$) gestreut.
  #enum(
    [Berechnen Sie den minimalen Abstand, den ein Alpha-Teilchen bei zentralem Stoß erreicht.],
    [Vergleichen Sie das Ergebnis mit dem Kernradius von Gold ($approx 7$ fm) und beurteilen Sie
     die Konsequenz für die Deutung des Versuchs.],
    [Erklären Sie, warum bei sehr großen Streuwinkeln die meisten Alpha-Teilchen ungestört
     durchfliegen.],
  )
]

#aufgabe(17, punkte: 14)[
  Ein Elektron ist in einem eindimensionalen Potenzialtopf der Breite $L = 0","50$ nm
  eingeschlossen.
  #enum(
    [Leiten Sie $E_n = h^2 n^2\/(8 m_e L^2)$ her.],
    [Berechnen Sie $E_1$, $E_2$ und $E_3$ in eV.],
    [Berechnen Sie die Wellenlänge des Photons beim Übergang $2 -> 1$.],
    [Erläutern Sie, warum die Energie quantisiert ist, obwohl im Kasten keine Kraft wirkt.],
  )
]

== Block F: Spektren und Franck-Hertz

#aufgabe(18, punkte: 14)[
  Bei einer Franck-Hertz-Röhre mit Quecksilberdampf werden die Strommaxima bei
  $10","4$ V, $15","3$ V, $20","2$ V und $25","1$ V gefunden.
  #enum(
    [Bestimmen Sie den Abstand der Maxima und die Anregungsenergie.],
    [Bestimmen Sie die Kontaktspannung.],
    [Berechnen Sie die Wellenlänge des beim Zurückfallen emittierten Photons und ordnen Sie sie
     dem Spektralbereich zu.],
    [Erklären Sie, warum der Strom nach jedem Maximum wieder ansteigt.],
  )
]

#aufgabe(19, punkte: 12)[
  Das Spektrum der Sonne ist kontinuierlich, zeigt aber dunkle Linien (Fraunhofer-Linien),
  darunter die Wasserstofflinien bei 656 nm und 486 nm. Im Labor sendet eine
  Wasserstoff-Entladungsröhre dieselben Wellenlängen als helle Linien.
  #enum(
    [Erklären Sie die Entstehung der dunklen Linien im Sonnenspektrum.],
    [Berechnen Sie die zugehörigen Energiedifferenzen in eV und ordnen Sie sie den Übergängen des
     Wasserstoffs zu.],
    [Begründen Sie, warum im Sonnenspektrum die Lyman-Linien (121,6 nm) fehlen, obwohl sie im
     Labor beobachtbar sind.],
  )
]

#aufgabe(20, punkte: 12)[
  Eine Röntgenröhre wird mit $U_B = 35$ kV betrieben, das Target ist Kupfer
  ($K_alpha$ bei $lambda = 0","154$ nm).
  #enum(
    [Berechnen Sie die kurzwellige Grenze des Bremsspektrums.],
    [Berechnen Sie die Energie der $K_alpha$-Linie in keV.],
    [Skizzieren Sie das Röntgenspektrum mit beschrifteten Achsen und beiden Anteilen.],
    [Beurteilen Sie, ob man mit dieser Röntgenröhre ein Material identifizieren kann, dessen
     $K_alpha$-Linie bei 0,25 nm liegt.],
  )
]

#pagebreak()
= Teil B – Lösungen

#merksatz[
  In den Lösungen steht zuerst der *Ansatz*, dann die Rechnung, dann das *Ergebnis mit Einheit* und
  – wo nötig – die Begründung in Worten. Wenn dein Zahlenwert abweicht, prüfe zuerst die Einheiten
  und die Umrechnung von nm in m.
]

== Lösungen Block A

#lösung[
  *Zu A1 (Aufgabe 1).*
  (1.1) $Delta a = lambda e / g = (632","8 dot 10^(-9) "m" dot 2","00 "m")/(0","250 dot 10^(-3) "m")
  = 5","06 dot 10^(-3)$ m $approx 5","1$ mm.
  Abstand zwischen den beiden Maxima 1. Ordnung: $2 Delta a = 10","1$ mm (denn das Maximum
  0. Ordnung liegt in der Mitte).

  (1.2) Das Glasplättchen verlängert die optische Weglänge in einem Arm um
  $Delta s = (n - 1) d = 0","50 dot 1","0$ µm $= 0","50$ µm $= 500$ nm. Das entspricht
  $500\/632","8 = 0","79$ Wellenlängen. Da eine Verschiebung um eine ganze Wellenlänge das Muster
  um genau einen Streifenabstand verschiebt, ist die Verschiebung
  $0","79 dot Delta a = 0","79 dot 5","06$ mm $approx 4","0$ mm.

  (1.3) Das Muster entsteht aus dem *Gangunterschied* der beiden Teilwellen. Das Plättchen ändert
  die optische Weglänge in einem Arm, also den Gangunterschied für jeden Schirmpunkt. Die Bedingung
  $Delta s = n lambda$ ist damit an einer anderen Stelle erfüllt – das gesamte Streifensystem
  wandert. Die Spalte selbst bleiben unverändert; es ändert sich nur die Phase einer Teilwelle.
]

#lösung[
  *Zu A2 (Aufgabe 2).*
  (2.1) $g = 1\/(500 "mm"^(-1)) = 2","0$ µm.

  (2.2) $sin alpha = lambda\/g$; mit $a = e tan alpha$:
  violett (400 nm): $sin alpha = 0","20$, $alpha = 11","5 degree$, $a = 1","20 dot 0","204
  approx 0","245$ m;
  rot (700 nm): $sin alpha = 0","35$, $alpha = 20","5 degree$, $a = 1","20 dot 0","374
  approx 0","448$ m.
  Die spektrale Breite 1. Ordnung auf dem Schirm ist also etwa $20$ cm.

  (2.3) Aus $sin alpha <= 1$ folgt $m <= g\/lambda = 2000 "nm"\/400 "nm" = 5$. Die 5. Ordnung
  liegt bei $sin alpha = 1$, also genau an der Grenze; praktisch beobachtet man höchstens die
  4. Ordnung.

  (2.4) 3. Ordnung, 400 nm: $sin alpha = 3 dot 400\/2000 = 0","60$.
  2. Ordnung, 700 nm: $sin alpha = 2 dot 700\/2000 = 0","70$.
  Da $0","60 < 0","70$ und $0","70 < 1$, liegt der blaue Rand 3. Ordnung *innerhalb* des
  Spektrums 2. Ordnung – die Ordnungen überlappen. Folge: Bei weißem Licht sind die Spektren
  höherer Ordnung nicht mehr eindeutig zuzuordnen; für Wellenlängenmessungen nutzt man deshalb
  die 1. Ordnung oder arbeitet mit einem Monochromator.
]

#lösung[
  *Zu A3 (Aufgabe 3).*
  (3.1) Die einlaufende und die reflektierte Welle überlagern sich. Konstruktive Interferenz tritt
  auf, wenn der Wegunterschied ein Vielfaches von $lambda$ ist. Verschiebt man die Platte um
  $Delta x$, ändert sich der Weg um $2 Delta x$; die nächste Verstärkung erscheint bei
  $2 Delta x = lambda$, also $Delta x = lambda\/2$.

  (3.2) $lambda = 2 Delta x = 2 dot 4","3$ mm $= 8","6$ mm;
  $c = lambda f = 8","6 dot 10^(-3) "m" dot 40","0 dot 10^3 "Hz" = 344$ m/s.

  (3.3) Die Abweichung zum Literaturwert (343 m/s) beträgt etwa 0,3 %, also weniger als die
  Messunsicherheit der Positionen (die Maxima sind breit). Das Ergebnis ist gut verträglich; die
  verbleibende Abweichung lässt sich durch Temperatur (Schallgeschwindigkeit steigt mit $T$) und
  die Ablesegenauigkeit von $Delta x$ erklären.
]

#lösung[
  *Zu A4 (Aufgabe 4).*
  (4.1) Minima bei $b sin alpha = n lambda$. Für das 1. Minimum: $sin alpha = 500 "nm"/(0","10 "mm")
  = 5","0 dot 10^(-3)$; $a_1 = e tan alpha approx e sin alpha = 2","0 dot 5","0 dot 10^(-3)
  = 10$ mm. Das zentrale Maximum reicht von $-10$ mm bis $+10$ mm, ist also $20$ mm breit.

  (4.2) Bei $b = 0","05$ mm wird die Breite doppelt so groß, also etwa $40$ mm. Begründung: Die
  Winkelbreite des Zentralmaximums ist $2 lambda\/b$; halbiert man $b$, verdoppelt sich die
  Winkelbreite. Physikalisch: Ein schmalerer Spalt legt den Ort genauer fest und vergrößert damit
  die Impulsunbestimmtheit quer zur Ausbreitung – die Beugungsfigur wird breiter.

  (4.3) Skizze: Zwei Kurven mit gleicher Höhe, die breitere Kurve gehört zu $b = 0","05$ mm.
  Beschriftung: Ordinate $I\/I_0$, Abszisse Ort $a$; Markierungen bei $plus.minus 10$ mm und
  $plus.minus 20$ mm für die ersten Minima; Bezeichnung „Zentralmaximum“ in der Mitte,
  „1. Nebenmaximum“ beidseitig.
]

== Lösungen Block B

#lösung[
  *Zu B1 (Aufgabe 5).*
  (5.1) $f = c\/lambda$:
  405 nm → $7","40 dot 10^14$ Hz; 436 nm → $6","88 dot 10^14$ Hz; 546 nm → $5","49 dot 10^14$ Hz;
  578 nm → $5","19 dot 10^14$ Hz.
  Auftragung $U_B$ über $f$ ergibt eine steigende Gerade (je größer $f$, desto größer $U_B$).

  (5.2) Aus $e U_B = h f - W_A$ folgt $U_B = (h\/e) f - W_A\/e$. Die Steigung ist also $h\/e$.
  Aus den Werten: $Delta U_B / Delta f = (1","16 - 0","25)/(7","40 - 5","19) dot 10^14
  = 0","91/(2","21 dot 10^14) = 4","12 dot 10^(-15)$ V s.
  Damit $h = 4","12 dot 10^(-15) "V s" dot 1","602 dot 10^(-19) "C" = 6","60 dot 10^(-34)$ J s
  – Abweichung zum Literaturwert ($6","626 dot 10^(-34)$ J s) unter 1 %.
  Achsenabschnitt: $U_B = 0$ bei $f_G$. Aus der Geraden folgt $W_A\/e = 1","90$ V, also
  $W_A = 1","90$ eV.

  (5.3) $f_G = W_A/h = (1","90 dot 1","602 dot 10^(-19) "J")/(6","626 dot 10^(-34) "J s")
  = 4","59 dot 10^14$ Hz;
  $lambda_G = c\/f_G = 6","53 dot 10^(-7)$ m $approx 653$ nm.
]

#lösung[
  *Zu B2 (Aufgabe 6).*
  (6.1) $E = h c\/lambda = 1240 "eV nm"\/470 "nm" = 2","64$ eV.

  (6.2) $h = e U_S lambda / c = (1","602 dot 10^(-19) dot 2","60 dot 470 dot 10^(-9))
  /(2","998 dot 10^8) = 6","53 dot 10^(-34)$ J s. Das sind etwa 1,5 % unter dem Literaturwert.

  (6.3) Nein, nicht ohne Weiteres. Der Einsatzpunkt ist visuell schwer zu bestimmen (die LED
  leuchtet allmählich), die Wellenlänge hat eine spektrale Breite von einigen Nanometern, und der
  Spannungsabfall an den Kontakten ist unbekannt. Mit einer einzelnen LED ist $h$ nur
  größenordnungsmäßig bestimmbar; für drei gültige Ziffern braucht man eine Messreihe mit mehreren
  LEDs und eine Ausgleichsgerade (dann ist die Steigung $h\/e$ deutlich genauer).
]

#lösung[
  *Zu B3 (Aufgabe 7).*
  (7.1) $lambda_min = h c\/(e U_B) = 1240 "eV nm"\/40000 "eV" = 0","031$ nm $= 31$ pm.

  (7.2) $E = 1240 "eV nm"\/0","071 "nm" = 17","5$ keV, also $approx 17$ keV. Diese Linie liegt
  deutlich über der Grenzenergie des Bremsspektrums? – Nein: Sie liegt *innerhalb* des
  Spektrums, denn $17","5$ keV $< 40$ keV; sie erscheint als scharfe Linie auf dem Kontinuum.

  (7.3) Die Grenzwellenlänge entsteht, wenn ein einzelnes Elektron seine gesamte kinetische
  Energie $e U_B$ in ein Photon umwandelt. Diese Energie hängt nur von $U_B$ ab. Die
  charakteristische Strahlung dagegen entsteht durch Übergänge zwischen den inneren Schalen der
  Targetatome; ihre Energie ist eine Materialeigenschaft (Ordnungszahl).

  (7.4) 12 kV liefern Elektronen mit höchstens 12 keV. Die $K_alpha$-Linie von Molybdän benötigt
  aber 17,5 keV. Die Linie kann also *nicht* angeregt werden – man sieht nur das Bremsspektrum
  (mit $lambda_min = 1240\/12000 = 0","103$ nm).
]

== Lösungen Block C

#lösung[
  *Zu C1 (Aufgabe 8).*
  (8.1) $lambda = h\/sqrt(2 m_e e U_B) = 1","226 "nm"\/sqrt(4000) = 0","0194$ nm
  $= 19","4$ pm.

  (8.2) Aus $lambda = d r\/(n a)$ mit $n = 1$:
  $d = lambda a / r = (0","0194 dot 10^(-9) dot 0","135)/(12","3 dot 10^(-3))
  = 2","13 dot 10^(-10)$ m $approx 0","213$ nm. Das ist der typische Netzebenenabstand von
  Graphit.

  (8.3) Graphit ist polykristallin: Viele winzige Kristallite liegen in allen möglichen
  Orientierungen vor. Für jeden Beugungswinkel gibt es daher *irgendeinen* Kristallit, der die
  Bragg-Bedingung erfüllt. Die Folge sind Ringe gleichen Radius. Bei einem Einkristall entstünden
  einzelne Punkte (wie bei Laue-Aufnahmen).
]

#lösung[
  *Zu C2 (Aufgabe 9).*
  (9.1) Elektron: $lambda = 1","226\/sqrt(100) "nm" = 0","123$ nm.
  Proton: $lambda = h\/sqrt(2 m_p e U_B)$. Da $lambda tilde 1\/sqrt(m)$:
  $lambda_p = lambda_e dot sqrt(m_e\/m_p) = 0","123 dot sqrt(1\/1836) = 2","86$ pm.
  Stahlkugel: $lambda = h\/(m v) = 6","626 dot 10^(-34)\/(0","010 dot 500) = 1","3 dot 10^(-34)$ m.

  (9.2) Beugungseffekte werden erst sichtbar, wenn die Wellenlänge in der Größenordnung der
  Strukturabstände des Beugungsobjekts liegt. Für die Stahlkugel ist $lambda approx 10^(-34)$ m –
  viele Größenordnungen kleiner als ein Atomkern ($10^(-15)$ m). Es gibt kein Gitter mit so
  kleinen Abständen, und jede Messung würde die Kugel viel stärker beeinflussen als das
  Beugungsbild. Die Wellennatur ist also *prinzipiell* vorhanden, praktisch aber nicht
  nachweisbar.

  (9.3) Bei gleicher Spannung ist die kinetische Energie gleich: $p^2\/(2m) = e U_B$, also
  $p = sqrt(2 m e U_B)$. Das Proton hat die 1836-fache Masse, also den $sqrt(1836) approx 43$-fachen
  Impuls und damit die 43-fach kleinere Wellenlänge.
]

#lösung[
  *Zu C3 (Aufgabe 10).*
  (10.1) $lambda = 1","226\/sqrt(50000) "nm" = 5","48 dot 10^(-3)$ nm $= 5","5$ pm.

  (10.2) $lambda\/2 approx 2","7$ pm. Ein Lichtmikroskop mit 500 nm hat $lambda\/2 = 250$ nm –
  das Elektronenmikroskop wäre also theoretisch etwa $10^5$-mal besser. (Beachte: Bei 50 kV sind
  relativistische Effekte klein, aber nicht null; die nichtrelativistische Formel ist hier noch
  brauchbar.)

  (10.3) In der Praxis begrenzen Linsenfehler (Öffnungsfehler, Farbfehler), die endliche
  Apertur und die Wechselwirkung der Elektronen mit der Probe das Auflösungsvermögen; man erreicht
  typisch $0","1$ nm bis $0","2$ nm statt $0","003$ nm. Die Beugungsgrenze ist also nicht der
  limitierende Faktor.
]

== Lösungen Block D

#lösung[
  *Zu D1 (Aufgabe 11).*
  (11.1) $Delta a = lambda e\/g = (600 dot 10^(-9) dot 1","0)\/(0","10 dot 10^(-3)) = 6","0$ mm.
  Das Maximum 1. Ordnung liegt $6","0$ mm neben dem Maximum 0. Ordnung.

  (11.2) Zunächst erscheinen einzelne helle Punkte an zufälligen Orten – der Ort jedes einzelnen
  Photons ist nicht vorhersagbar. Nach einigen Stunden hat sich eine Häufigkeitsverteilung
  aufgebaut, die dem Interferenzmuster entspricht: Maxima im Abstand $6$ mm, dazwischen dunkle
  Bereiche.

  (11.3) Jedes Photon hat für beide Spalte eine Wahrscheinlichkeitsamplitude. Am Schirm addieren
  sich die *Amplituden* (Zeiger) mit dem Gangunterschied $Delta s = g sin alpha$; die
  Nachweiswahrscheinlichkeit ist das Quadrat der Summenzeigerlänge,
  $P = |Psi_1 + Psi_2|^2$. Bei $Delta s = n lambda$ sind die Zeiger gleichgerichtet (Maximum), bei
  $(2n+1) lambda\/2$ entgegengesetzt (Minimum).

  (11.4) Mit Weginformation ist bekannt, durch welchen Spalt das Photon ging; dann addieren sich
  die Wahrscheinlichkeiten: $P = |Psi_1|^2 + |Psi_2|^2$. Es entstehen zwei überlagerte
  Einzelspaltbilder ohne Streifen – die Verteilung ist glatt und breit.
]

#lösung[
  *Zu D2 (Aufgabe 12).*
  (12.1) Die optische Weglänge im Glas ist $n d$, in Luft $d$; die Verlängerung ist
  $Delta s = (n-1) d = 0","50 dot 1","0$ µm $= 0","50$ µm $= 500$ nm.
  Phasenverschiebung: $Delta phi = 2 pi Delta s\/lambda = 2 pi dot 500\/633 = 4","96$ rad,
  also $4","96\/(2 pi) = 0","79$ Umläufe.

  (12.2) $P_1 = cos^2(Delta phi\/2) = cos^2(2","48) = 0","62$ (also etwa 62 %);
  $P_2 = sin^2(2","48) = 0","38$. Kontrolle: $0","62 + 0","38 = 1$.

  (12.3) $P_1 = 0$ erfordert $Delta phi\/2 = pi\/2$, also $Delta s = lambda\/2 = 317$ nm. Damit
  $(n-1) d = 317$ nm $=> d = 317\/0","5 = 633$ nm $approx 0","63$ µm.

  (12.4) Das Photon wird mit Sicherheit in *einem* der beiden Detektoren nachgewiesen (das
  Interferometer hat nur diese beiden Ausgänge). Die Wahrscheinlichkeiten sind daher vollständig
  und müssen sich zu 1 addieren – anschaulich: Die Summe aller möglichen Ergebnisse ist das
  sichere Ereignis.
]

#lösung[
  *Zu D3 (Aufgabe 13).*
  (13.1) Ohne zweiten Strahlteiler gibt es keine Überlagerung der beiden Wege an einem Ort: Beide
  Detektoren zeigen je etwa 50 %, unabhängig von der Phasenlage. Mit zweitem Strahlteiler
  überlagern sich die Wege; die Zählraten hängen von $Delta phi$ ab, und bei passender Phase kann
  ein Detektor vollständig dunkel bleiben.

  (13.2) Im Welle-Teilchen-Dualismus müsste man dem Photon eine Eigenschaft zuschreiben (Welle
  oder Teilchen), die von einer Entscheidung abhängt, die *nach* seinem Durchflug getroffen wird.
  Das wirkt paradox, solange man annimmt, das Photon habe bereits „entschieden“, welchen Weg es
  genommen hat.

  (13.3) In der QED gibt es keine Bahn, sondern nur *mögliche Wege* von der Quelle zu den
  Detektoren. Jeder Weg liefert einen Zeiger; die Zeiger werden addiert und das Quadrat ergibt die
  Wahrscheinlichkeit. Ist der zweite Strahlteiler vorhanden, gibt es zwei Wege (Interferenz); fehlt
  er, gibt es pro Detektor nur einen Weg (keine Interferenz). Die späte Entscheidung ändert nur die
  Menge der möglichen Wege – die Rechnung bleibt dieselbe Vorschrift, es gibt keinen Modellwechsel
  und keine Rückwirkung in die Vergangenheit.
]

#lösung[
  *Zu D4 (Aufgabe 14).*
  (14.1) $Delta x = b = 50$ µm. Abschätzung $Delta p_x approx h/b
  = 6","626 dot 10^(-34)/5","0 dot 10^(-5) = 1","3 dot 10^(-29)$ kg m/s.
  Dann $Delta x dot Delta p_x approx 50 dot 10^(-6) dot 1","3 dot 10^(-29)) = 6","6 dot 10^(-34)$
  J s $approx h$ – die Relation ist erfüllt.

  (14.2) $Delta f approx 1\/Delta t = 1\/(10 dot 10^(-9)) = 1","0 dot 10^8$ Hz $= 100$ MHz.
  Die Energieunschärfe ist $Delta E = h Delta f = 6","6 dot 10^(-26)$ J $approx 4 dot 10^(-7)$
  eV. Für eine Linie bei 500 nm ($f = 6","0 dot 10^14$ Hz) ist $Delta f/f approx 1","7 dot
  10^(-7)$, die Linie ist also extrem scharf (natürliche Linienbreite). Nur bei sehr kurzen
  Lebensdauern wird die Linie merklich breit.
]

== Lösungen Block E

#lösung[
  *Zu E1 (Aufgabe 15).*
  (15.1) $E_1 = -13","6$ eV, $E_2 = -3","40$ eV, $E_3 = -1","51$ eV, $E_4 = -0","85$ eV.
  Skizze: waagerechte Linien, Energieachse nach oben, $E = 0$ oben als Ionisierungsgrenze; die
  Abstände werden nach oben kleiner.

  (15.2) $2 -> 1$: $Delta E = 10","2$ eV, $lambda = 1240\/10","2 = 122$ nm.
  $3 -> 2$: $Delta E = 1","89$ eV, $lambda = 656$ nm.
  $4 -> 2$: $Delta E = 2","55$ eV, $lambda = 486$ nm.

  (15.3) Übergänge nach $n = 1$ bilden die Lyman-Serie (UV), nach $n = 2$ die Balmer-Serie. Von
  den berechneten Linien sind 656 nm (rot) und 486 nm (blaugrün) sichtbar; 122 nm liegt im UV.

  (15.4) Ionisierung aus dem Grundzustand: $13","6$ eV (also $E_1$ vom Wert 0 entfernt). Der Wert
  hängt nicht von $n$ ab, weil der Endzustand immer „Elektron frei“ ($E = 0$) ist und der
  Startzustand der Grundzustand $n = 1$. Aus einem angeregten Zustand wäre die nötige Energie
  kleiner ($13","6\/n^2$ eV).
]

#lösung[
  *Zu E2 (Aufgabe 16).*
  (16.1) Bei zentralem Stoß wird die gesamte kinetische Energie in potenzielle Energie umgewandelt:
  $E_"kin" = (1\/(4 pi epsilon_0)) dot (2 e dot 79 e)\/r_min$, also
  $ r_min = (8","99 dot 10^9 dot 2 dot 79 dot (1","602 dot 10^(-19))^2)/(5","0 dot 10^6 dot
  1","602 dot 10^(-19)) $.
  Zähler: $8","99 dot 10^9 dot 158 dot 2","566 dot 10^(-38) = 3","64 dot 10^(-26)$;
  Nenner: $8","01 dot 10^(-13)$. Ergebnis $r_min approx 4","5 dot 10^(-14)$ m $= 45$ fm.

  (16.2) $r_min = 45$ fm ist deutlich größer als der Kernradius von Gold ($approx 7$ fm). Die
  Alpha-Teilchen dringen also gar nicht in den Kern ein; die Streuung wird allein von der
  Coulomb-Wechselwirkung bestimmt. Genau das rechtfertigt die Rutherford-Formel – und bei
  *höheren* Energien (ab etwa 25 MeV) beobachtet man Abweichungen, weil die Teilchen den Kern
  berühren (Kernkraft).

  (16.3) Die meisten Alpha-Teilchen laufen weit am Kern vorbei: Der Kern nimmt nur etwa
  $10^(-12)$ des Atomvolumens ein. Bei großem Stoßparameter ist die Coulomb-Kraft klein und die
  Ablenkung entsprechend gering; nur wenige Teilchen kommen dem Kern so nahe, dass sie stark
  abgelenkt werden.
]

#lösung[
  *Zu E3 (Aufgabe 17).*
  (17.1) An den Wänden muss die Wellenfunktion verschwinden. Das erfüllt nur eine stehende Welle
  mit $L = n lambda\/2$. Mit $p = h\/lambda = n h\/(2L)$ folgt
  $E_n = p^2\/(2 m_e) = n^2 h^2\/(8 m_e L^2)$.

  (17.2) Vorfaktor: $h^2/(8 m_e L^2) =
  (6","626 dot 10^(-34))^2/(8 dot 9","109 dot 10^(-31) dot (5","0 dot 10^(-10))^2)$.
  Zähler $4","39 dot 10^(-67)$; Nenner $8 dot 9","109 dot 10^(-31) dot 2","5 dot 10^(-19)
  = 1","82 dot 10^(-48)$. Vorfaktor $2","41 dot 10^(-19)$ J $= 1","50$ eV.
  Also $E_1 = 1","50$ eV, $E_2 = 6","02$ eV, $E_3 = 13","5$ eV.

  (17.3) $Delta E = E_2 - E_1 = 4","51$ eV; $lambda = 1240\/4","51 = 275$ nm (UV).

  (17.4) Die Quantisierung folgt nicht aus einer Kraft, sondern aus der *Randbedingung*: Nur
  bestimmte Wellenlängen „passen“ in den Kasten. Da $lambda$ und $p$ über $p = h\/lambda$
  verknüpft sind, sind auch Impuls und Energie diskret. Ohne Kraft ändert sich die Energie daher
  nicht von selbst; sie kann nur durch einen Übergang zwischen zwei Niveaus geändert werden – mit
  einem Photon passender Energie.
]

== Lösungen Block F

#lösung[
  *Zu F1 (Aufgabe 18).*
  (18.1) $Delta U = (25","1 - 10","4)\/3 = 4","90$ V; $Delta E = e dot Delta U = 4","9$ eV.
  (Das ist die erste Anregungsenergie von Quecksilber.)

  (18.2) $U_1 = Delta U + U_"Kontakt"$, also $U_"Kontakt" = 10","4 - 4","9 = 5","5$ V.

  (18.3) $lambda = h c\/Delta E = 1240 "eV nm"\/4","9 "eV" = 253$ nm – ultraviolette Strahlung.
  (Das ist die bekannte Quecksilberlinie bei 254 nm; die geringe Abweichung liegt an der
  gerundeten Anregungsenergie.)

  (18.4) Nach einem unelastischen Stoß hat das Elektron fast seine ganze Energie verloren, wird
  aber auf dem Rest der Strecke wieder beschleunigt. Übersteigt die Spannung den nächsten
  Schwellenwert, können weitere Anregungen stattfinden; die Zahl der Elektronen, die die
  Auffangelektrode erreichen, steigt wieder – der Strom steigt bis zum nächsten Einbruch.
]

#lösung[
  *Zu F2 (Aufgabe 19).*
  (19.1) Das kontinuierliche Licht der heißen Sonnenoberfläche durchläuft die kühlere
  Sonnenatmosphäre. Dort befinden sich Wasserstoffatome überwiegend im Grundzustand; sie
  absorbieren genau die Photonen, deren Energie einem Übergang entspricht. Diese Photonen fehlen
  im durchgehenden Licht und erscheinen als dunkle Linien im kontinuierlichen Spektrum.

  (19.2) $E = 1240\/656 = 1","89$ eV und $E = 1240\/486 = 2","55$ eV.
  Diese Werte entsprechen den Übergängen $3 -> 2$ bzw. $4 -> 2$ des Wasserstoffs (Balmer-Serie).

  (19.3) Die Lyman-Linien gehören zu Übergängen nach $n = 1$. Dafür müssen die Atome im
  Grundzustand sein und Photonen mit 10,2 eV (122 nm) absorbieren. In der Sonnenatmosphäre ist
  Wasserstoff zwar überwiegend im Grundzustand, aber die 121,6-nm-Strahlung wird bereits in
  höheren, heißen Schichten absorbiert bzw. gestreut und erreicht den Detektor am Erdboden nicht
  (die Erdatmosphäre absorbiert im fernen UV vollständig). Deshalb beobachtet man diese Linien
  nur mit Satelliteninstrumenten.
]

#lösung[
  *Zu F3 (Aufgabe 20).*
  (20.1) $lambda_min = 1240 "eV nm"\/(35 dot 10^3 "eV") = 0","0354$ nm $approx 35$ pm.

  (20.2) $E = 1240\/0","154 = 8052$ eV $approx 8","1$ keV.

  (20.3) Skizze: Abszisse $lambda$ (nach rechts zunehmend), Ordinate Intensität. Kontinuierliche
  Kurve, die bei $lambda_min = 0","0354$ nm beginnt, ein Maximum durchläuft und zu großen
  Wellenlängen abfällt; darüber zwei bis drei scharfe Peaks (die $K$-Linien von Kupfer, z. B.
  $K_alpha$ bei 0,154 nm). Beschriftung: „Bremsspektrum“ (Kontinuum), „charakteristische Linien“,
  „$lambda_min$“.

  (20.4) Eine Linie bei 0,25 nm entspricht $E = 1240\/0","25 = 4","96$ keV. Diese Energie ist
  kleiner als die $K_alpha$-Energie von Kupfer und liegt im Bereich der $L$-Linien schwererer
  Elemente. Mit einer Kupferröhre bei 35 kV könnte man sie *nicht* als charakteristische Linie
  erzeugen (das Target bestimmt die Linien). Für eine Materialidentifikation bräuchte man eine
  Röhre mit passendem Target oder eine Anregung durch Fluoreszenz – die Methode
  (Röntgenfluoreszenzanalyse) beruht darauf, dass jede Atomsorte ihr eigenes Linienspektrum hat.
]

#pagebreak()
= Auswertung deiner Ergebnisse

#table(
  columns: (auto, 1fr, auto),
  [Punkte], [Einschätzung], [Was tun],
  [> 220], [sehr sicher], [nur noch Tempo und Formulierungen üben],
  [180–220], [solide], [Fehlerblatt auswerten, Begründungen nachschärfen],
  [130–180], [Grundlagen wackeln], [Skripte zu den schwächsten Blöcken erneut lesen, Aufgaben wiederholen],
  [< 130], [akuter Handlungsbedarf], [zwei Blöcke pro Tag, Formelblatt täglich],
)

== Dein Fehlerblatt

Für jede falsch gelöste Aufgabe notierst du drei Dinge:

#enum(
  [*Was war der Fehler?* (Einheit, Formel, Verständnis, Lesefehler)],
  [*Welche Regel hätte geholfen?* (in einem Satz)],
  [*Wann wiederhole ich?* (Datum eintragen)],
)

#merksatz[
  Die häufigsten Punkteverluste in Klausuren sind *nicht* fehlendes Wissen, sondern fehlende
  Einheiten, fehlende Begründungssätze und nicht geprüfte Plausibilität. Prüfe am Ende jeder
  Aufgabe: Stimmt die Größenordnung? Ist die Einheit dabei? Steht ein „weil“ im Begründungssatz?
]

#quelle[
  *Quellen.* Alle Aufgaben sind eigene Formulierungen im Stil des IQB-Aufgabenpools 2025/2026
  (Operatoren, Materialstruktur, Kontrollwerte). Inhaltliche Grundlage: Kerncurriculum Physik
  Niedersachsen 2022 und die Unterrichtsmaterialien unter https://www.physik.gym-wst.de.
  Naturkonstanten: CODATA. Grafiken: eigene Darstellung.
]
