#import "../template.typ": *

#show: setup.with(title: "Lernfahrplan", kicker: "Zusatzmaterial")

#set text(size: 9.4pt)
#cover(
  "Zusatzmaterial · Planung",
  "Lernfahrplan bis Freitag",
  "121 Seiten sind ein Nachschlagewerk. Auswendig zu lernen sind etwa acht.",
  lernziele: (
    "wissen, welche Seiten Erklärung sind und welche Lernstoff",
    "in vier Tagen das Wichtige zuerst bearbeiten",
    "am Prüfungstag nur noch vier Seiten anfassen",
  ),
)

#toc-page()

= Die ehrliche Rechnung

#table(
  columns: (1fr, auto, 1fr),
  [Dokument], [Umfang], [Rolle],
  [7 Lernskripte], [76 S.], [*Erklärung* – zum Verstehen, nicht zum Auswendiglernen],
  [Übungsheft], [13 S.], [*Training* – rechnen, nicht lesen],
  [Regression und Auswertung], [7 S.], [*Handwerk* – einmal durcharbeiten, dann nachschlagen],
  [Experimentesammlung], [5 S.], [*Nachschlagen* – Aufbau und Deutung der Versuche],
  [Abitur-Analyse, Gesamtübersicht], [10 S.], [*Orientierung* – einmal lesen],
  [Formelblatt], [5 S.], [*Lernstoff*],
  [Last-Minute-Lernzettel], [4 S.], [*Lernstoff – der Kern*],
)

Von den insgesamt etwa 60.000 Wörtern sind rund *3.000 Wörter tatsächlicher Lernstoff*
(Formelblatt und Lernzettel zusammen). Alles andere ist Erklärung: Text, den man liest, wenn
etwas unklar ist – und dann wieder zumacht.

#merksatz[
  *Nicht lesen, was du schon kannst.* Ein Skript ist kein Buch, das man von vorne nach hinten
  durcharbeitet. Der Kurzweg durch ein Skript sind fünf Seiten: Einstieg, Merksätze und
  Definitionen, Herleitungen, die letzte Seite (Wiederholung).
]

= Der Kurzweg durch ein Skript

#table(
  columns: (auto, 1fr, 1fr),
  [Skript], [Kern (Seiten)], [Nur bei Bedarf],
  [1 Wellen/Interferenz (15 S.)], [3, 12, 14–15], [4–10 Theorie, 11 Experimente, 13 Aufgaben],
  [2 Lichtquanten (10 S.)], [3, 7, 9–10], [4–6 Theorie, 8 Aufgaben],
  [3 Elektronenwellen (10 S.)], [3, 7, 9–10], [4–6 Theorie und Experimente, 8 Aufgaben],
  [4 Doppelspalt/Quanten (11 S.)], [3, 8, 10–11], [4–7 Experimente, 9 Aufgaben],
  [5 MZI/QED (9 S.)], [3, 8–9], [4–7 Aufbau, Modelle, Anwendungen],
  [6 Atommodelle (11 S.)], [3, 10–11], [4–9 Modelle, Orbitale, Experimente],
  [7 Spektren/Franck-Hertz (11 S.)], [3, 7, 10–11], [4–6 Spektren, Röntgen; 8–9 Versuch],
)

In Skript 5 und 6 stehen die Herleitungen in den Kapiteln selbst (Kästen „Herleitung“), es gibt
dort keinen eigenen Abschnitt.

= Vier Tage, je 90 Minuten

Heute ist Sonntag, der 1. November; die Prüfung ist Freitag, der 6. November.

#table(
  columns: (auto, auto, 1fr),
  [Tag], [Zeit], [Inhalt],
  [So 01.11.], [45 min], [Formelblatt ganz durchblättern, Unbekanntes markieren. Lernzettel
    lesen (4 S.).],
  [Mo 02.11.], [90 min], [Skript 1 Kurzweg + *Übungsheft Block A* (4 Aufgaben).],
  [Di 03.11.], [90 min], [Skript 2 Kurzweg + Skript 3 Kurzweg + *Übungsheft Blöcke B und C*
    (6 Aufgaben).],
  [Mi 04.11.], [90 min], [Skript 4 und 5 Kurzweg + *Übungsheft Block D* (4 Aufgaben).],
  [Do 05.11.], [90 min], [Skript 6 und 7 Kurzweg + *Übungsheft Blöcke E und F* (6 Aufgaben).
    Danach Fehlerblatt durchgehen.],
  [Fr 06.11.], [20 min], [Nur Lernzettel (4 S.) und Fehlerblatt. Nichts Neues mehr.],
)

#achtung[
  *Die Aufgaben sind wichtiger als die Skripte.* Wer 20 Aufgaben gerechnet hat, kann die
  Prüfung; wer 76 Seiten gelesen hat, vielleicht. Wenn die Zeit knapp wird: Skripte nur als
  Nachschlagewerk benutzen, wenn eine Aufgabe hakt.
]

#prüfung[
  *Wenn nur noch zwei Stunden bleiben:* Last-Minute-Lernzettel (4 S.), Formelblatt (5 S.),
  Fehlerblatt. Das ist der kleinste Satz, mit dem man sicher durch die Prüfung kommt.
]

= Was tatsächlich sitzen muss

#table(
  columns: (1fr, 1fr),
  [Auswendig], [Verstanden haben (nicht auswendig)],
  [Wellengleichung $c = lambda f$, $T = 1\/f$], [warum Gangunterschied und Phasendifferenz
    dasselbe beschreiben],
  [Interferenzbedingung $n lambda$, $(2n+1) lambda\/2$], [warum Kohärenz nötig ist],
  [Doppelspalt $a_n = n lambda e\/g$], [warum die Kleinwinkelnäherung hier zulässig ist],
  [$E = h f$, $h c = 1239","8$ eV nm], [warum $h$ aus dem Knick der $U_B$-$f$-Geraden folgt],
  [$E_"kin" = h f - W_A$], [warum die Intensität die Energie nicht ändert],
  [$lambda = h\/p$, $lambda = 1","226 "nm"\/sqrt(U\/"V")$], [warum schnelle Elektronen kurze
    Wellen haben],
  [$Delta p_x Delta x >= h\/(4 pi)$], [was „Unbestimmtheit“ nicht bedeutet],
  [Bohr: $E_n = -13","6 "eV"\/n^2$], [warum das Modell nur für Wasserstoff taugt],
  [Energieübergang $Delta E = h c \/ lambda$], [warum Spektren diskret sind],
  [Franck-Hertz: $Delta U$ aus dem Maximumabstand], [warum die Kontaktspannung abgezogen wird],
)

#quelle[
  *Quellen.* Eigene Zusammenstellung; Seitenangaben beziehen sich auf die PDFs dieses
  Projekts (Stand 02.11.). Grundlage: Kerncurriculum Physik Niedersachsen, Unterrichts-
  materialien https://www.physik.gym-wst.de, IQB-Aufgabenpool 2025/2026.
]
