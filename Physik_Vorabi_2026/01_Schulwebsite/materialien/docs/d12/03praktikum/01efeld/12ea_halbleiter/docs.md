## P1.2 Halbleiter

---

### Stromleitung in Halbleitern

**Arbeite** das folgende Dokument auf Leifi-Physik durch: [Einführung in die Elektronik](https://www.leifiphysik.de/elektronik/einfuhrung-die-elektronik).

Für das Kolloquium solltest du folgende Fragen beantworten können:

  - Warum ist ein Halbleiter bei tiefen Temperaturen ein Isolator?
  - Warum benötigt man eine Mindesttemperatur, damit ein Halbleiter leitfähig wird? 
  - Erklären Sie, warum bei steigender Temperatur die Leitfähigkeit eines Halbleiters verbessert wird.
  - Wie unterscheidet sich die **Elektronenleitung** in Metallen von der **Eigenleitung** in Halbleitern?
  - Was versteht man unter dem Begriff **Rekombination** in einem eigenleitenden Halbleiterkristall?
  - Erklären Sie die Begriffe **n-dotierter Halbleiter** und **p-dotierter Halbleiter**.
  - Warum dotiert man Halbleiter mit Fremdatomen?
  - Warum ist der Widerstand eines dotierten Halbleiters bei gleichen Rahmenbedingungen (angelegte Spannung, Querschnitt, Temperatur,...) deutlich kleiner, als der eines undotierten Halbleiters.

---

### Aufbau und Funktionsweise einer LED

**Arbeite** das folgende Dokument auf Leifi-Physik durch: [Halbleiterdiode](https://www.leifiphysik.de/elektronik/halbleiterdiode).

Für das Kolloquium solltest du folgende Fragen beantworten können:

  - Wie ist eine **Diode** aufgebaut?
  - Was versteht man unter der **Durchlassrichtung** einer Diode, was versteht man unter der **Sperrrichtung** einer Diode?
  - Wie schliesst man eine Diode in Durchlass- bzw. Sperrrichtung an eine Spannungsquelle an?
  - Zeichnen Sie das **Schaltsymbol einer Diode**. Warum ist der Pfeil im Schaltsymbol einer Diode anscheinend falsch herum gezeichnet?
  - Was versteht man unter einer **stromrichtigen bzw. spannungsrichtigen Messung**?
  - Warum sendet eine LED, wenn sie in Durchlassrichtung geschaltet wird, Licht aus?

---

## E01: Thermischer Widerstand (NTC)

Ein Heißleiter ist ein temperaturabhängiger Halbleiterwiderstand mit einem negativen Temperaturkoeffizienten (NTC = **N**egativ **T**emperatur **C**oefficient). Bei seiner Nenntemperatur hat ein NTC seinen Grundwiderstand z.B. $R_{25}$ (= Widerstand bei 25°C). Bei steigender Temperatur werden die Gitterschwingungen im Halbleiterkristall heftiger, so dass mehr Elektronen/Loch-Paare getrennt werden und mehr freie Elektronen für die Stromleitung zur Verfügung stehen.

**E01.1:** **Schließe** den vorliegenden NTC-Widerstand an die Spannungsquelle an. **Bestimme** seine U-I-Kennlinie (U = Spannung, I = Stromstärke), indem du die Spannung zwischen 0 und 15 V variierst, jeweils die Stromstärke misst und die Messdaten in ein geeignetes U-I-Diagramm einträgst. Ist der NTC-Widerstand ein [ohmscher Widerstand](https://www.leifiphysik.de/elektrizitatslehre/widerstand-spez-widerstand)?

**E01.2:** **Stelle** am Netzgerät eine Spannung von 5 V ein. **Erwärme** den NTC mit den Fingern und **messe** die Stromstärke am NTC. **Erkläre** physikalisch deine Beobachtung.

---

## E02: Fotowiderstand (LDR)

Ein Fotowiderstand ist ein lichtabhängiger Halbleiterwiderstand (LDR = **L**ight **D**ependent **R**esistor). In einer dunklen Umgebung hat er seinen Grundwiderstand. Bei zunehmendem Lichteinfall kann das einfallende Licht Elektronen/Loch-Paare auftrennen, so dass mehr freie Elektronen für die Stromleitung zur Verfügung stehen.

**E02.1:** **Schließe** den vorliegenden LDR-Widerstand an die Spannungsquelle an. **Bestimme** seine U-I-Kennlinie (U = Spannung, I = Stromstärke), indem du die Spannung zwischen 0 und 15 V variierst, jeweils die Stromstärke misst und die Messdaten in ein geeignetes U-I-Diagramm einträgst.

**E02.2:** **Stelle** am Netzgerät eine Spannung von 5 V ein. **Beleuchte** den LDR mit einer regelbaren Lichtquelle. **Messe** bei verschiedenen Helligkeiten die Stromstärke am LDR. **Erkläre** physikalisch deine Beobachtung.

---

## E03: Diode als elektrisches Ventil

Werden ein **n-dotierter Halbleiter** und ein **p-dotierter Halbleiter** in Kontakt gebracht, dann beginnen Elektronen des n-Halbleiters, die im n-Halbleiter kein Bindungsloch gefunden haben, mit freien Löchern des p-Halbleiters zu rekombinieren. Das tun sie spontan, da ein Elektron/Loch-Paar weniger Energie besitzt, als ein freies Elektron und ein unbesetztes Loch zusammen. Es entsteht ein **p-n-Übergang**.

Die Folge solcher spontanen Elektron/Loch-Rekombinationen ist, dass Elektronen vom n-Halbleiter in den p-Halbleiter fließen. Dadurch bildet sich im p-Halbleiter ein Elektronenüberschuss und im n-Halbleiter ein Elektronenmangel. Es entsteht ein elektrisches Feld mit Minuspol im p-Halbleiter und Pluspol im n-Halbleiter. Nach kurzer Zeit ist das elektrische Feld so stark geworden, dass keine weiteren Elektronen vom n-Halbleiter in den p-Halbleiter fließen können, da sie vom n-Halbleiter abgestoßen und vom p-Halbleiter angezogen werden.

Schließt man den **Pluspol des Netzgeräts an den n-Halbleiter** an, dann werden freie Elektronen vom Pluspol angezogen und die Anzahl verfügbarer freier Elektronen in der Diode verringert sich (**Sperrrichtung**).

Schließt man den **Minuspol an den n-Halbleiter** an, dann werden die freien Elektronen des n-Halbleiters in Richtung p-Halbleiter abgestoßen, weswegen weitere Elektronen aus dem Netzgerät in den n-Halbleiter fließen können. Damit vergrößert sich die Anzahl freier Elektronen in der Diode (**Durchlassrichtung**).

**E03.01:** **Schließe** die Diode und eine Glühbirne in Reihe geschaltet an die Gleichspannungquelle (U < 3 V) an. **Untersuche**, wie die Polung des Netzgeräts gerichtet sein muss, damit die Glühbirne leuchtet. **Vergleiche** deine Beobachtung mit der Theorie.

**E03.02:** **Entferne** die Glühbirne aus dem Stromkreis. **Nehme** die U-I-Kennlinie der Diode in Sperr- und in Durchlassrichtung im Bereich zwischen 0 und 3 V **auf**.

---

## E04: Dioden als Lichtquelle

Wenn freie Elektronen und Löcher in einer Diode rekombinieren, wird Energie frei, da die Elektron-Loch-Bindung energieärmer ist, als die Summe der Energie eines freien Elektrons und einer Bindungsstelle. Die frei werdende Energie wird als Licht (Photon) ausgesendet. In einer normalen Diode wird dieses Licht vom umgebenden Material aufgenommen (absorbiert), wodurch sich die Diode erwärmt. Baut man das umgebende Material aus z.B. durchsichtigem Kunststoff, kann das Licht die Diode verlassen und die Diode beginnt zu leuchten. Man hat eine LED, also eine lichtaussende Diode (**L**ight **E**mitting **D**iode).

**E04.1:** **Schließe** eine LED an die Gleichspannungquelle (U < 3 V) an. **Untersuche**, wie die Polung des Netzgeräts gerichtet sein muss, damit die LED leuchtet. Welcher Anschluss (lang/kurz) muss an welchen Pol angeschlossen werden?

**E04.2:** **Nehme** für eine blaue, rote, gelbe und grüne LED die U-I-Kennlinie im Bereich zwischen 0 und 3 V **auf**. **Zeichne**  die Kennlinien in ein gemeinsames Diagramm. **Notiere**, bei welcher Spannung die LED jeweils zu leuchten beginnt.

**E04.3:** **Berechne**, welchen Widerstand man in den Stromkreis einbauen müsste, damit eine Diode bei 6 V betrieben werden könnte, wenn nur 2 V Betriebsspannung erlaubt ist, ohne dass die LED beschädigt wird. Wenn du den Widerstand berechnet hast, baue die Schaltung mit dem Widerstand und der LED in Reihenschaltung auf. Schließe dann das Netzgerät mit 6 V Wechselspannung an. Was beobachtest du? **Erkläre** die Beobachtung!

---

## Protokoll

**Erstelle** mit einem Textverarbeitungsprogramm deiner Wahl das Praktikumsprotokoll, **exportiere** es als PDF-Dokument und **gib** es in der vereinbarten Weise ab.

**Benenne** die Datei in der Form: **kursnummer_P1.1_nachname_vorname.pdf**. 

---