#import "../template.typ": *

#show: setup.with(title: "Atommodelle und Orbitalmodell", kicker: "Skript 6 · Atomhülle")

#cover(
  "Skript 6 · Atomhülle",
  "Atommodelle und Orbitalmodell",
  "Rutherford, Bohr, Potenzialtopf und das quantenmechanische Atommodell",
  lernziele: (
    "den Rutherford-Streuversuch beschreiben und auswerten",
    "die Kritik am Rutherford-Modell begründen",
    "Bohrs Postulate und die daraus folgenden Energieniveaus herleiten",
    "die Energiequantisierung im Potenzialtopf begründen",
    "Orbitale und Aufenthaltswahrscheinlichkeiten deuten",
  ),
)

#toc-page()

= Einstieg: Wie sieht ein Atom aus?

Die Geschichte der Atommodelle ist eine Geschichte des *Modellierens*: Jedes Modell erklärt die
damals bekannten Experimente und scheitert an neuen. Vier Stufen sind für das Abitur wichtig:

#table(
  columns: (auto, 1fr, 1fr),
  [Modell], [Grundidee], [Scheitert an],
  [Thomson (1904)], [positiv geladene Kugel mit eingebetteten Elektronen („Rosinenkuchen“)],
  [Rutherford-Streuung: große Ablenkwinkel],
  [Rutherford (1911)], [kleiner, schwerer Kern, Elektronen auf Kreisbahnen],
  [Stabilität der Atome, diskrete Spektren],
  [Bohr (1913)], [stationäre Bahnen mit quantisiertem Drehimpuls],
  [Mehrelektronenatome, Intensitäten, Feinstruktur],
  [Quantenmechanik/Orbitale], [Elektronen als Wahrscheinlichkeitsverteilungen],
  [nur Näherungen für Mehrelektronensysteme],
)

#merksatz[
  Kein Modell „ist“ das Atom. Modelle sind Werkzeuge mit klar begrenztem Gültigkeitsbereich.
  Prüfungsaufgaben verlangen oft genau diese Unterscheidung: *Was erklärt das Modell, und wo
  versagt es?*
]

= Das Rutherford-Atommodell

== Der Streuversuch

#experiment[
  *Versuchsaufbau.* Eine dünne Goldfolie (wenige hundert Atomlagen) wird mit einem Strahl
  schneller Alpha-Teilchen beschleunigter Radiumpräparate beschossen. Ein drehbarer
  Zinksulfid-Schirm (Szintillationsschirm) registriert die gestreuten Teilchen unter dem Winkel
  $theta$. Das ganze befindet sich im Vakuum.
  *Durchführung.* Die Zählrate in Abhängigkeit vom Streuwinkel messen, insbesondere auch bei
  großen Winkeln (bis nahe $180 degree$).
  *Beobachtung.* Die meisten Alpha-Teilchen fliegen nahezu ungestört durch. Ein kleiner Teil wird
  merklich abgelenkt, ein sehr kleiner Teil (etwa 1 von 8000) um mehr als $90 degree$.
  *Erklärung.* Ein großer Teil der Atommasse und die gesamte positive Ladung sind in einem sehr
  kleinen *Kern* konzentriert. Nur Teilchen, die dem Kern sehr nahe kommen, erfahren eine starke
  Coulomb-Abstoßung und werden stark abgelenkt.
  *Auswertung.* Aus der Winkelverteilung lässt sich eine obere Grenze für den Kernradius
  abschätzen (Größenordnung $10^(-14)$ m gegenüber $10^(-10)$ m für die Atomhülle).
  *Bedeutung.* Widerlegt das Thomson-Modell und begründet das Kern-Hülle-Bild.
  *Grenzen.* Über die Elektronen und die Stabilität sagt das Modell nichts; es ist rein klassisch.
]

#figure(
  image("../fig/rutherford.svg", width: 82%),
  caption: [Rutherford-Streuung: Bahnen für verschiedene Stoßparameter $b$. Je kleiner $b$, desto größer der Ablenkwinkel; für $b -> 0$ erfolgt Rückstreuung.],
)

== Die Coulomb-Kraft

Zwischen Kern (Ladung $+Z e$) und Alpha-Teilchen (Ladung $+2 e$) wirkt die abstoßende
Coulomb-Kraft

$ F_"C" (r) = 1/(4 pi epsilon_0) (q_1 q_2)/r^2 $

Für ein Elektron im Feld eines Kerns der Ladung $+Z e$ ist die Kraft anziehend; der Betrag ist
$F = 1\/(4 pi epsilon_0) dot Z e^2\/r^2$.

== Potenzielle Energie im Coulomb-Feld

#herleitung[*Potenzielle Energie eines Elektrons im Kernfeld*]
  Die potenzielle Energie erhält man, indem man die Arbeit berechnet, die gegen die Coulomb-Kraft
  nötig ist, um das Elektron von $r$ nach unendlich zu bringen:
  $ W = integral_r^infinity F dif x = (e^2)/(4 pi epsilon_0) integral_r^infinity 1/x^2 dif x
      = (e^2)/(4 pi epsilon_0) [ -1/x ]_r^infinity = (e^2)/(4 pi epsilon_0) dot 1/r $.
  Setzt man die potenzielle Energie im Unendlichen null, so gilt für das Elektron im Feld des
  Kerns (Ladungen $q_1 = -e$, $q_2 = +Z e$):
  $ E_"pot" (r) = - (Z e^2)/(4 pi epsilon_0) dot 1/r $.
  Das negative Vorzeichen bedeutet: Das Elektron ist *gebunden*; man muss Energie aufwenden, um es
  zu entfernen.

== Gesamtenergie auf einer Kreisbahn

#herleitung[*Gesamtenergie im Rutherford-Modell*]
  Für eine Kreisbahn gilt $F_"C" = F_"ZP"$:
  $ (e^2)/(4 pi epsilon_0 r^2) = (m_e v^2)/r quad => quad m_e v^2 = (e^2)/(4 pi epsilon_0 r) $.
  Damit ist die kinetische Energie
  $ E_"kin" = 1\/2 m_e v^2 = (e^2)/(8 pi epsilon_0 r) $.
  Die Gesamtenergie ist
  $ E_"ges" = E_"kin" + E_"pot" = (e^2)/(8 pi epsilon_0 r) - (e^2)/(4 pi epsilon_0 r)
            = - (e^2)/(8 pi epsilon_0 r) $.
  Merkregel: $E_"ges" = -E_"kin" = E_"pot"\/2$. Die Gesamtenergie ist negativ und hängt
  kontinuierlich von $r$ ab – *jeder* Radius wäre erlaubt. Genau das ist das Problem.

== Drei Kritikpunkte

#achtung[
  *1. Atomkollaps.* Ein beschleunigtes Elektron strahlt elektromagnetische Energie ab
  (Synchrotronstrahlung). Auf einer Kreisbahn ist es ständig beschleunigt, verliert also Energie
  und müsste in den Kern stürzen – Rechenzeit: etwa $10^(-11)$ s. Atome sind aber stabil.

  *2. Diskrete Spektren.* Atome senden keine kontinuierlichen Spektren, sondern *Linienspektren*
  aus. Das klassische Modell sagt ein kontinuierliches Spektrum voraus.

  *3. Atomvolumen.* Der Kern ist rund $10^4$-mal kleiner als das Atom; das Modell erklärt nicht,
  wodurch das Atomvolumen bestimmt wird.
]

= Das bohrsche Atommodell

== Die Postulate

Niels Bohr löste das Stabilitätsproblem 1913 mit drei Postulaten – bewusst als Zusatzannahmen, die
nicht aus der klassischen Physik folgen:

#definition[
  *1. Stationäre Bahnen:* Elektronen bewegen sich auf bestimmten Kreisbahnen, ohne Energie
  abzustrahlen.
  *2. Quantisierung des Drehimpulses:* Erlaubt sind nur Bahnen mit
  $ L = m_e v r = n h\/(2 pi)$, $n = 1, 2, 3, ...$
  *3. Übergänge:* Beim Wechsel zwischen zwei Bahnen wird ein Photon mit
  $h f = Delta E = E_n - E_m$ emittiert oder absorbiert.
]

#merksatz[
  Bohrs Modell ist ein *Halbklassisches* Modell: Klassische Kreisbahnen plus eine
  Quantisierungsvorschrift. Es funktioniert für Wasserstoff und wasserstoffähnliche Ionen
  (He⁺, Li²⁺) hervorragend – und versagt bei allen Mehrelektronensystemen.
]

== Bahnradien und Energieniveaus

#herleitung[*Bohr-Radius und Energieniveaus*]
  1. Kraftgleichgewicht (wie oben): $m_e v^2 = (e^2)\/(4 pi epsilon_0 r)$.
  2. Quantisierung: $m_e v r = n h\/(2 pi)$ $=> v = n h\/(2 pi m_e r)$.
  3. Einsetzen: $m_e (n h\/(2 pi m_e r))^2 = (e^2)\/(4 pi epsilon_0 r)$
     $=> (n^2 h^2)\/(4 pi^2 m_e r^2) = (e^2)\/(4 pi epsilon_0 r)$.
  4. Auflösen nach $r$:
     $ r_n = (n^2 h^2 epsilon_0)/(pi m_e e^2) = n^2 r_1 $ mit
     $r_1 = 5","29 dot 10^(-11)$ m (Bohr-Radius).
  5. Einsetzen in $E_"ges" = -(e^2)\/(8 pi epsilon_0 r)$ liefert
     $ E_n = - (m_e e^4)/(8 epsilon_0^2 h^2) dot 1/n^2 = -13","6 "eV" dot 1/n^2 $.
  #linebreak()
  *Gültigkeit:* Einelektronensysteme, nichtrelativistisch, ohne Spin. Für $Z > 1$ ist
  $E_n = -13","6 "eV" dot Z^2\/n^2$.

#figure(
  image("../fig/energieniveaus_h.svg", width: 86%),
  caption: [Energieniveaus des Wasserstoffs mit ausgewählten Übergängen. Die Balmer-Serie (Übergänge nach $n = 2$) liegt im sichtbaren Bereich; der Übergang $n = 2 -> 1$ (Lyman-$alpha$) liegt bei 122 nm im UV.],
)

== Die Balmerformel

Für Übergänge nach $n = 2$ (Balmer-Serie) gilt

$ Delta E = E_n - E_2 = 13","6 "eV" (1/4 - 1/n^2) quad "mit" n = 3, 4, 5, ...$

und mit $lambda = h c \/ Delta E$:

$ 1/lambda = R (1/2^2 - 1/n^2) quad "mit" R = 1","097 dot 10^7 "m"^(-1) $

Die *Rydberg-Konstante* $R$ ist also keine neue Konstante, sondern aus $h$, $c$, $e$, $m_e$ und
$epsilon_0$ berechenbar – ein starker Hinweis auf die Richtigkeit des Modells.

#table(
  columns: (auto, auto, auto, auto),
  [Übergang], [Bezeichnung], [Wellenlänge], [Farbe],
  [$3 -> 2$], [H-$alpha$], [656 nm], [rot],
  [$4 -> 2$], [H-$beta$], [486 nm], [blaugrün],
  [$5 -> 2$], [H-$gamma$], [434 nm], [violett],
  [$6 -> 2$], [H-$delta$], [410 nm], [violett],
)

== Grenzen des Bohr-Modells

- Es erklärt nur Ein-Elektronen-Systeme; beim Helium versagt es.
- Die Intensitäten der Linien (warum manche Übergänge häufig, andere selten sind) bleiben offen.
- Feinstruktur (Aufspaltung durch Spin und relativistische Effekte) wird nicht erfasst.
- Die Annahme „definierter Bahnen“ widerspricht der Unbestimmtheitsrelation.
- Der Drehimpuls wird postuliert, nicht begründet.

= Das quantenmechanische Atommodell

== Elektron im eindimensionalen Potenzialtopf

Man modelliert die Bindung als „Kasten“ der Breite $L$ mit unendlich hohen Wänden. Innerhalb ist
$E_"pot" = 0$, außerhalb unendlich. Als Lösung der Schrödinger-Gleichung (bzw. als
Stehwellen-Bedingung) muss die Wellenlänge „hineinpassen“:

$ L = n lambda/2 quad => quad lambda_n = 2 L/n $

Mit $p = h\/lambda$ folgt $p_n = (n h)\/(2 L)$ und damit

$ E_n = (p_n^2)/(2 m_e) = (h^2 n^2)/(8 m_e L^2) $

#figure(
  image("../fig/potenzialtopf.svg", width: 72%),
  caption: [Eindimensionaler Potenzialtopf mit den drei tiefsten Energieniveaus. Die Abstände wachsen mit $n$; die Energie ist quantisiert, obwohl im Kasten keine Kraft wirkt.],
)

#herleitung[*Energieniveaus im Kasten (ausführlich)*]
  1. *Stehwellen-Bedingung:* An den Wänden muss die Wellenfunktion null sein. Das ist nur möglich,
     wenn ein ganzzahliges Vielfaches der halben Wellenlänge in den Kasten passt:
     $L = n lambda\/2$.
  2. *Impuls:* $p = h\/lambda = h\/(2L\/n) = n h\/(2L)$.
  3. *Kinetische Energie:* $E = p^2\/(2m_e) = (n^2 h^2)\/(8 m_e L^2)$.
  4. *Zahlenbeispiel:* Für $L = 10^(-10)$ m (Atomdurchmesser) ist
     $E_1 = (6","626 dot 10^(-34))^2\/(8 dot 9","109 dot 10^(-31) dot 10^(-20))
     = 6","0 dot 10^(-18)$ J $approx 38$ eV. Das ist die richtige Größenordnung für
     Atomenergien – ein starkes Argument für das Modell.
  #linebreak()
  *Aussagekraft:* Es erklärt, *warum* Energien quantisiert sind: Die Randbedingung lässt nur
  bestimmte Wellenlängen zu. Es erklärt die Größenordnung der Atomenergien.
  *Grenzen:* Der Kasten hat unendlich hohe Wände (kein Entweichen), kein $1\/r$-Potenzial, keine
  Elektron-Elektron-Wechselwirkung, keinen Spin. Für $L -> 0$ wachsen die Energien über alle
  Grenzen – das ist unphysikalisch, weil dann die Unbestimmtheitsrelation verletzt würde
  ($Delta x -> 0$ erzwingt $Delta p -> infinity$).

== Dreidimensionaler Potenzialtopf und Orbitale

Im Würfel der Kantenlänge $L$ gilt mit drei Quantenzahlen:

$ E_(n_x n_y n_z) = (h^2)/(8 m_e L^2) (n_x^2 + n_y^2 + n_z^2) $

Die Wellenfunktion ist ein Produkt von Sinusfunktionen. Verschiedene Kombinationen können dieselbe
Energie haben (*Entartung*) – daraus entsteht die Struktur der Schalen.

Im Wasserstoffatom ist das Potenzial nicht kastenförmig, sondern $E_"pot" tilde -1\/r$. Die
Lösungen heißen *Orbitale*: räumliche Verteilungen der Aufenthaltswahrscheinlichkeit, beschrieben
durch $|Psi (x,y,z)|^2$.

#figure(
  image("../fig/orbitale.svg", width: 92%),
  caption: [Orbitale bis $n = 2$ (Schnitte durch die Aufenthaltswahrscheinlichkeit): $1s$ kugelsymmetrisch, $2s$ mit einer Knotenfläche, $2p$ mit zwei Keulen.],
)

#table(
  columns: (auto, auto, auto, 1fr),
  [Atommodell], [Bild], [Ordnung], [Erklärungskraft],
  [Rutherford], [Kern + Bahnen], [kontinuierliche Energien], [Streuung, Kernradius],
  [Bohr], [Kern + quantisierte Bahnen], [diskrete Niveaus], [Wasserstoffspektren],
  [Quantenmodell], [Kasten/Orbitale], [diskrete Niveaus aus Randbedingungen], [Größenordnungen, Struktur],
  [Orbitalmodell], [Wahrscheinlichkeitswolken], [Niveaus + Formen], [Chemie, Periodensystem],
)

== Pauli-Prinzip und Elektronenkonfiguration

#definition[
  *Pauliprinzip:* Zwei Elektronen in einem Atom dürfen nicht in allen Quantenzahlen übereinstimmen.
  Da der Spin zwei Einstellungen hat ($m_s = plus.minus 1\/2$), passen in jedes Orbital höchstens
  *zwei* Elektronen – mit entgegengesetztem Spin (↑↓).
]

Damit ergibt sich die Kapazität der Schale $n$:

$ N_n = 2 n^2 $

Für $n = 1$: 2 Elektronen ($1s$); für $n = 2$: 8 Elektronen ($2s$ + drei $2p$-Orbitale). Das
erklärt die Besetzung des Periodensystems.

#prüfung[
  Typische Aufgabe: „Bestimmen Sie die maximale Elektronenzahl für $n = 2$ im dreidimensionalen
  Potenzialtopf.“ Lösung: Kombinationen $(n_x,n_y,n_z)$ mit $n_x^2+n_y^2+n_z^2 <= 4$ bzw. nach
  Schalenmodell $2n^2 = 8$. Begründen Sie mit Pauli-Prinzip und Entartung.
]

= Experimente

== Experiment: Rutherford-Streuung (Detailauswertung)

#experiment[
  *Messgröße.* Zählrate $N(theta)$ pro Raumwinkeleinheit in Abhängigkeit vom Streuwinkel.
  *Beobachtung.* $N$ fällt mit wachsendem Winkel stark ab (etwa wie $1\/sin^4(theta\/2)$), bleibt
  aber auch bei großen Winkeln von null verschieden.
  *Erklärung.* Coulomb-Abstoßung an einem punktförmigen, schweren Kern; die Form der Verteilung
  folgt aus der klassischen Streutheorie.
  *Auswertung.* Aus dem größten beobachteten Ablenkwinkel und der Energie der Alpha-Teilchen lässt
  sich der Abstand minimaler Annäherung und damit eine obere Grenze für den Kernradius abschätzen.
  *Bedeutung.* Entscheidendes Experiment zur Kern-Hülle-Struktur.
]

== Experiment: Linienspektren und Energieniveaus

#experiment[
  *Aufbau.* Gasentladungsröhre (z. B. Wasserstoff) mit Hochspannung, Gitter oder Prisma,
  Schirm/Kamera.
  *Beobachtung.* Diskrete helle Linien auf dunklem Grund; beim Wasserstoff die Balmer-Serie.
  *Erklärung.* Elektronen werden angeregt und fallen unter Emission eines Photons zurück;
  $h f = Delta E$.
  *Auswertung.* Aus den Wellenlängen die Niveaus rekonstruieren; Balmer-Formel prüfen.
  *Bedeutung.* Direkter Zugang zu den Energieniveaus; Bestätigung des Bohr-Modells.
]

= Abituraufgaben

#aufgabe(1, punkte: 14)[
  Ein Wasserstoffatom befindet sich im Zustand $n = 3$.
  #enum(
    [Berechnen Sie Energie, Radius der Bahn und Umlaufgeschwindigkeit (Bohr-Modell).],
    [Berechnen Sie alle möglichen Wellenlängen der Emission beim Übergang in tiefere Zustände.],
    [Erläutern Sie, welcher Übergang zur H-$alpha$-Linie gehört und in welchem Spektralbereich sie
     liegt.],
  )
]

#lösung[
  *Zu 1.* $E_3 = -13","6\/9 "eV" = -1","51$ eV. $r_3 = 9 r_1 = 9 dot 5","29 dot 10^(-11)
  = 4","76 dot 10^(-10)$ m. Aus $m_e v r = n h\/(2 pi)$ folgt
  $v = n h\/(2 pi m_e r) = 3 dot 6","626 dot 10^(-34)\/(2 pi dot 9","109 dot 10^(-31) dot
  4","76 dot 10^(-10)) approx 7","3 dot 10^5$ m/s. (Das ist rund $1\/400$ von $c$ – die
  nichtrelativistische Rechnung ist hier noch brauchbar.)

  *Zu 2.* Mögliche Übergänge: $3 -> 2$ ($Delta E = 1","89$ eV) und $3 -> 1$ ($12","09$ eV) sowie
  $2 -> 1$ ($10","2$ eV) als Folgeschritt. Wellenlängen:
  $lambda = 1240 "eV nm"\/Delta E$:
  $3->2$: $656$ nm; $3->1$: $103$ nm; $2->1$: $122$ nm.

  *Zu 3.* H-$alpha$ ist $3 -> 2$ mit 656 nm (rot, sichtbar). Die Übergänge nach $n = 1$ (Lyman-Serie)
  liegen bei 103 nm und 122 nm im ultravioletten Bereich und sind mit dem Auge nicht sichtbar.
]

#aufgabe(2, punkte: 12)[
  Ein Elektron ist in einem eindimensionalen Potenzialtopf der Breite $L = 0","20$ nm.
  #enum(
    [Berechnen Sie die drei tiefsten Energieniveaus in eV.],
    [Berechnen Sie die Wellenlänge des Photons beim Übergang $2 -> 1$.],
    [Beurteilen Sie die Aussage: „Im Kasten wirkt keine Kraft, also kann sich die Energie nicht
     ändern.“],
  )
]

#lösung[
  *Zu 1.* $E_n = h^2 n^2\/(8 m_e L^2)$. Der Vorfaktor ist
  $h^2\/(8 m_e L^2) = (6","626 dot 10^(-34) "J s")^2 \/ (8 dot 9","109 dot 10^(-31) "kg" dot
  (2","0 dot 10^(-10) "m")^2)$.
  Zähler: $4","39 dot 10^(-67)$; Nenner: $8 dot 9","109 dot 10^(-31) dot 4","0 dot 10^(-20)
  = 2","92 dot 10^(-49)$. Damit ist der Vorfaktor $1","51 dot 10^(-18)$ J $= 9","4$ eV und
  $E_1 = 9","4$ eV, $E_2 = 37","6$ eV, $E_3 = 84","6$ eV.

  *Zu 2.* $Delta E = 28","2$ eV, also $lambda = 1240\/28","2 "nm" = 44$ nm (UV).

  *Zu 3.* Die Aussage ist falsch. Die Quantisierung folgt nicht aus einer Kraft, sondern aus der
  *Randbedingung*: Die Wellenfunktion muss an den Wänden verschwinden, deshalb sind nur bestimmte
  Wellenlängen (und damit Impulse und Energien) erlaubt. Energieänderung ist nur durch Übergänge
  zwischen diesen Niveaus möglich – dann mit einem Photon passender Energie.
]

#aufgabe(3, punkte: 10)[
  Vergleichen Sie das bohrsche Atommodell mit dem Orbitalmodell. Gehen Sie auf das Bild vom
  Elektron, auf die Erklärungskraft und auf die Grenzen ein.
]

#lösung[
  *Bild vom Elektron.* Bohr: Das Elektron ist ein Punktteilchen auf einer wohldefinierten
  Kreisbahn mit bestimmtem Radius und bestimmter Geschwindigkeit. Orbitalmodell: Das Elektron hat
  keinen definierten Ort; beschrieben wird eine Aufenthaltswahrscheinlichkeitsverteilung
  $|Psi|^2$ mit charakteristischer räumlicher Form.

  *Erklärungskraft.* Beide liefern diskrete Energieniveaus. Bohr erklärt die
  Wasserstoffspektren quantitativ und liefert eine anschauliche Formel
  ($E_n = -13","6 "eV"\/n^2$). Das Orbitalmodell erklärt zusätzlich die räumliche Struktur, die
  Besetzung der Schalen, das Pauli-Prinzip und die chemischen Eigenschaften; es ist auf
  Mehrelektronenatome übertragbar.

  *Grenzen.* Bohr: nur Ein-Elektronen-Systeme, keine Intensitäten, keine Feinstruktur, definierte
  Bahnen widersprechen der Unbestimmtheitsrelation. Orbitalmodell: analytisch nur für Wasserstoff
  exakt lösbar; für Mehrelektronensysteme braucht man Näherungen. Beide Modelle sind
  Beschreibungen, nicht „das Atom selbst“.
]

= Typische Fehler

#achtung[
  *1. Bohr-Modell auf Helium anwenden.* Es gilt nur für Ein-Elektronen-Systeme.

  *2. Vorzeichen der Energie.* Gebundene Zustände haben *negative* Gesamtenergie; $E = 0$ bedeutet
  „Elektron frei“.

  *3. $n$ und Schale verwechselt.* $n$ ist die Hauptquantenzahl; die Schale enthält $2n^2$ Plätze.

  *4. Energie und Wellenlänge vertauscht.* Größerer Energieunterschied → *kleinere* Wellenlänge.

  *5. Potenzialtopf als Kraftmodell gedeutet.* Die Quantisierung folgt aus Randbedingungen.

  *6. Orbital als Bahn gelesen.* Ein Orbital ist eine Wahrscheinlichkeitsverteilung, keine Bahn.
]

= Wiederholung

== Wichtigste Erkenntnisse

- Rutherford zeigt: kleiner schwerer Kern, große Ablenkwinkel durch Coulomb-Kraft.
- Klassisch wäre das Atom instabil und hätte kontinuierliche Spektren.
- Bohr quantisiert den Drehimpuls; daraus folgen $r_n tilde n^2$ und $E_n = -13","6 "eV"\/n^2$.
- Im Potenzialtopf erzwingen Randbedingungen die Quantisierung: $E_n tilde n^2$.
- Orbitale beschreiben Aufenthaltswahrscheinlichkeiten; Pauli begrenzt die Besetzung.

== Zentrale Formeln

#table(
  columns: (1fr, 1fr),
  [Formel], [Bedeutung],
  [$F_"C" = 1\/(4 pi epsilon_0) dot q_1 q_2\/r^2$], [Coulomb-Kraft],
  [$E_"pot" = -e^2\/(4 pi epsilon_0 r)$], [potenzielle Energie],
  [$E_"ges" = -e^2\/(8 pi epsilon_0 r)$], [Gesamtenergie auf Kreisbahn],
  [$r_n = n^2 dot 5","29 dot 10^(-11) "m"$], [Bohr-Radien],
  [$E_n = -13","6 "eV"\/n^2$], [Wasserstoffniveaus],
  [$1\/lambda = R(1\/2^2 - 1\/n^2)$], [Balmer-Serie],
  [$E_n = h^2 n^2\/(8 m_e L^2)$], [Potenzialtopf],
  [$N_n = 2 n^2$], [Kapazität der Schale],
)

== Wichtigste Experimente

#table(
  columns: (1fr, 1fr, 1fr),
  [Experiment], [Beobachtung], [Aussage],
  [Rutherford-Streuung], [große Ablenkwinkel], [kleiner schwerer Kern],
  [Gasentladung + Gitter], [Linienspektren], [diskrete Energieniveaus],
  [Franck-Hertz], [periodische Stromminima], [quantenhafte Anregung],
)

== Fachbegriffe

Streuparameter · Coulomb-Kraft · potenzielle Energie · stationäre Bahn · Drehimpulsquantisierung ·
Bohr-Radius · Grundzustand · angeregter Zustand · Balmer-Serie · Rydberg-Konstante ·
Potenzialtopf · Randbedingung · Orbital · Aufenthaltswahrscheinlichkeit · Pauli-Prinzip ·
Entartung · Quantenzahlen

== Typische Prüfungsfragen

- „Erklären Sie die Rutherford-Beobachtungen.“
- „Leiten Sie $E_n = -13","6 "eV"\/n^2$ her.“
- „Berechnen Sie die Wellenlänge einer Spektrallinie aus einem Niveauschema.“
- „Begründen Sie die Quantisierung im Potenzialtopf.“
- „Vergleichen Sie Bohr- und Orbitalmodell.“

== Auswendig können

- $E_"pot" = -e^2\/(4 pi epsilon_0 r)$, $E_"ges" = -e^2\/(8 pi epsilon_0 r)$
- $r_1 = 5","29 dot 10^(-11)$ m, $E_n = -13","6 "eV"\/n^2$
- $Delta E = h f = h c\/lambda$, $h c = 1240$ eV nm
- $E_n = h^2 n^2\/(8 m_e L^2)$, $N_n = 2 n^2$

== Wirklich verstehen

- Warum das klassische Atom instabil wäre
- Warum die Quantisierung im Kasten aus einer Randbedingung folgt
- Warum Bohrs Modell so gut funktioniert und trotzdem falsch ist
- Warum Orbitale keine Bahnen sind

#quelle[
  *Quellen.*
  - Gymnasium Westerstede, Physik, Jahrgang 13: „Rutherford-Atommodell“, „Bohrsches Atommodell“,
    „Quantenmechanisches Modell“, „Orbital-Modell“ – https://www.physik.gym-wst.de.
  - Kerncurriculum Physik, Niedersachsen 2022, „Atomhülle“ (Potenzialtopf, Energieniveaus,
    Orbitale bis $n = 2$, Pauli-Prinzip).
  - Grafiken: eigene Darstellungen (rutherford.svg, potenzialtopf.svg, energieniveaus_h.svg,
    orbitale.svg).
]
