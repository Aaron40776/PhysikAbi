#import "../template.typ": *

#show: setup.with(title: "Abitur-Analyse", kicker: "Zusatzmaterial")

#cover(
  "Zusatzmaterial · Prüfungsanalyse",
  "Abitur-Analyse Physik 2025/2026",
  "Auswertung von 12 Aufgaben aus dem gemeinsamen Aufgabenpool der Länder (IQB) und des Rahmens für 2027",
  lernziele: (
    "wissen, welche Aufgabenformate tatsächlich vorkommen",
    "die häufigsten Operatoren kennen und bedienen",
    "die eigene Vorbereitung auf belegte Schwerpunkte ausrichten",
  ),
)

#toc-page()

= Datenbasis und Zugänglichkeit

#table(
  columns: (1fr, auto, 2fr),
  [Quelle], [Zugang], [Ergebnis],
  [IQB-Aufgabenpool Physik 2025/2026], [direkt], [12 vollständige Aufgaben im Volltext ausgewertet
  (PDF und Text lokal gespeichert)],
  [Nds. ZA-Archiv `za-aufgaben.nibis.de`], [blockiert], [Formular-POST wird mit HTTP 302
  abgewiesen; kein Zugriff auf die Pakete – als *nicht untersucht* gekennzeichnet],
  [Bildungsportal Nds., Zentralabitur 2027], [HTTP 403], [nicht zugänglich],
  [Hinweise zur schriftl. Abiturprüfung 2027, Physik], [PDF], [vollständig ausgewertet],
  [Kerncurriculum Physik 2022 (Auszüge Schule)], [direkt], [vollständig ausgewertet],
)

#achtung[
  Es wurden *keine* Aufgaben rekonstruiert, die nicht im Volltext vorlagen. Alle Häufigkeitsangaben
  beziehen sich ausschließlich auf die 12 analysierten Pool-Aufgaben – nicht auf „das Abitur“ im
  Allgemeinen.
]

= Formaler Rahmen (Abitur 2027)

- Grundlage: Bildungsstandards Physik (KMK 2020), konkretisiert durch das Kerncurriculum 2022, sowie
  der Erlass „Schülerexperimente in der schriftlichen Abiturprüfung auf erhöhtem
  Anforderungsniveau“ (2018).
- Vier Aufgaben werden vorgelegt, *drei* sind zu bearbeiten.
- Varianten: eA ohne Experiment; eA „mit Experimentieren – Elektrik“; eA „mit Experimentieren –
  Optik“; gA ohne experimentelle Anteile.
- Experimentierkästen (für 2026 festgelegt): Optik und Atomphysik; Magnetismus – Elektrik –
  Elektronik.
- Hilfsmittel: WTR und Formelsammlung; der fachpraktische Anteil ist je Aufgabe ausgewiesen.

*Konsequenz:* Der Normalfall ist eine materialgestützte Aufgabe mit mehreren Teilaufgaben,
Punktangaben und gelegentlichen Kontrollwerten.

= Die untersuchten Aufgaben

#table(
  columns: (auto, auto, 1fr, 1fr, auto),
  [Jahr], [Niveau], [Titel], [Inhaltsbereich], [prakt.],
  [2025], [eA], [3D-Metalldruck mit Elektronenstrahlen], [E/B-Felder], [nein],
  [2025], [eA], [Sicherheit von Deichen], [E/B-Felder], [nein],
  [2025], [eA], [Elektroneninterferenz am Doppelspalt], [Quantenobjekte], [nein],
  [2025], [eA], [Interferenzen bei Bluetooth-Signalen], [Schwingungen/Wellen], [nein],
  [2025], [eA], [DECT-Telefon], [Schwingungen/Wellen], [nein],
  [2025], [gA], [Der dynamische Lautsprecher], [E/B-Felder], [ja],
  [2025], [gA], [Kapazitive Beschleunigungssensoren], [E/B-Felder], [nein],
  [2025], [gA], [Elektroneninterferenz am Doppelspalt], [Quantenobjekte], [nein],
  [2025], [gA], [Eigenschaften von Licht], [Schwingungen/Wellen], [ja],
  [2026], [eA], [Blitzdetektor], [Schwingungen/Wellen], [nein],
  [2026], [gA], [Der Elektrobus – Induktives Laden], [E/B-Felder], [nein],
  [2026], [gA], [Elektronenstrahlen zur Härtung von Lacken], [E/B-Felder], [nein],
)

Vollständige Fassung mit Operatoren und Kompetenzzuordnung:
`02_Abiturrecherche/untersuchte_aufgaben.csv`.

= Auswertung

== Verteilung der Inhaltsbereiche (n = 12)

#table(
  columns: (1fr, auto, auto),
  [Inhaltsbereich], [Anzahl], [Anteil],
  [Elektrische und magnetische Felder], [6], [50 %],
  [Schwingungen und Wellen], [4], [33 %],
  [Quantenobjekte], [2], [17 %],
  [Atomhülle], [0], [0 %],
)

*Befund:* In dieser Stichprobe kommt *Atomhülle* nicht vor. Das ist eine Aussage über die 12
Aufgaben, keine Prognose. Da das Kerncurriculum die Atomhülle verbindlich fordert, bleibt sie
prüfungsrelevant – abgedeckt durch Skript 6 und 7.

== Operatoren (alle 12 Aufgaben, gezählt)

#table(
  columns: (1fr, auto),
  [Operator], [Anzahl],
  [Begründen Sie], [23],
  [Erklären Sie], [16],
  [Bestimmen Sie], [8],
  [Erläutern Sie], [7],
  [Beschreiben Sie], [7],
  [Berechnen Sie], [6],
  [Beurteilen Sie], [6],
  [Ermitteln Sie], [5],
  [Stellen Sie … dar], [4],
  [Skizzieren Sie], [3],
  [Zeigen Sie], [3],
  [Interpretieren Sie], [2],
  [Ordnen / Bewerten / Entscheiden / Diskutieren (je)], [4],
)

*Befund:* Argumentative Operatoren (Begründen, Erklären, Erläutern: 46 von 94 Nennungen, rund 49 %)
dominieren klar vor reinem Rechnen (6). Typisch ist die Kombination „berechnen und dann beurteilen“.

== Wiederkehrende Aufgabenformate

+ Kontext mit Materialien (Zeitungsausschnitt, technische Beschreibung, Messreihe, Zitat) mit 2–4
  Teilaufgaben.
+ Auswertung von Messdaten (Tabelle, Diagramm, Kennlinie) mit anschließender Beurteilung der
  Modellannahmen.
+ Kontrollwerte in eckigen Klammern als Plausibilitätshilfe.
+ Verlangte Skizzen: Feldlinien, Strahlengang, Energieschema, Schaltbild.
+ Fachpraktischer Anteil in 2 von 12 Aufgaben (2025: Lautsprecher, Eigenschaften von Licht).
+ Bewertungsaufgaben mit Technik-/Gesellschaftsbezug (Deichsicherheit, Telefonsysteme, E-Mobilität).

== Verlangte Mathematik

- Prozent- und Verhältnisrechnungen, Einheitenumrechnung (eV ↔ J, nm ↔ m)
- Ausgleichsgerade, Steigungsdreieck, lineare Regression
- Trigonometrie ($sin$, $tan$, $arctan$)
- Exponentielles Abklingen
- Abschätzungen und Größenordnungen („Beurteilen Sie mithilfe einer Rechnung …“)

== Bezug zu den schulischen Kompetenzlisten

Die auf physik.gym-wst.de veröffentlichten Kerncurriculum-Auszüge (gA/eA) passen zu den
Aufgabenformaten. Besonders häufig adressiert: Deutung durch optische Analogieversuche
(Elektronenbeugung), stochastische Deutung von Interferenzmustern, Bestätigung von Zusammenhängen
durch Messwertauswertung, Beurteilen in technischen Kontexten.

= Empfehlungen für die Vorbereitung

#enum(
  [*Wellenoptik rechnen können:* Doppelspalt, Gitter, Bragg – mit und ohne Kleinwinkelnäherung.],
  [*Quantenobjekte kombinieren:* de-Broglie-Rechnung plus stochastische Deutung plus
   Komplementarität – genau die Kombination der IQB-Aufgabe „Elektroneninterferenz“.],
  [*Begründen trainieren:* zu jeder Rechnung einen „weil“-Satz formulieren; das ist der häufigste
   Operator.],
  [*Experimente beschreiben:* Aufbau, Durchführung, Beobachtung, Auswertung, Fehler – wegen der
   fachpraktischen Anteile.],
  [*Atomhülle nicht vernachlässigen:* KC-Pflicht, auch wenn in der Stichprobe nicht vertreten.],
)

= Grenzen dieser Analyse

- Nur 12 Aufgaben (veröffentlichter Pool 2025/2026), keine vollständigen Jahrgänge.
- Das Nds. ZA-Archiv war technisch nicht zugänglich; ältere Landesaufgaben konnten nicht geprüft
  werden.
- Keine Aussage über die tatsächliche Verteilung im Vorabi 2026 oder im Abitur 2027 möglich.

#quelle[
  *Quellen.*
  - IQB, Abiturprüfungsaufgaben Physik (Pool 2025/2026):
    https://www.iqb.hu-berlin.de/de/schule/aufgaben/sekii/abiturprüfungsaufgaben-physik/
  - Niedersächsisches Kultusministerium: Hinweise zur schriftlichen Abiturprüfung 2027, Fach
    Physik (Juni 2024).
  - Kerncurriculum Physik, Niedersachsen 2022; Kompetenzlisten auf https://www.physik.gym-wst.de.
  - ZA-Archiv Niedersachsen (nicht zugänglich): https://za-aufgaben.nibis.de/
]
