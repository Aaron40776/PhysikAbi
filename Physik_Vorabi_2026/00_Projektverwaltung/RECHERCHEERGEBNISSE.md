# Rechercheergebnisse

Stand: 01.11.2026. Kurzfassung der inhaltlichen Befunde aus Schule, Kerncurriculum und
Aufgabenpool. Langfassung der Prüfungsanalyse: `02_Abiturrecherche/abitur_analyse.md`.

## 1. Aufbau der Schulwebsite

`https://www.physik.gym-wst.de` ist eine Docsify-SPA („Physik Interaktiv“). Die Navigation lädt
JSON-Manifeste (`startpageassets/json/{dsek1,d11,d12,d13,p,info,apps}.json`), die auf
Markdown-Dateien verweisen:

```
docs/<jahrgang>/<thema>/<lektion>/docs.md
```

Dadurch sind alle Inhalte ohne Browser direkt per HTTP abrufbar. **112 Seiten** wurden gespiegelt
(Jahrgänge 11, 12, 13, Praktikum). Kein Zugriffshindernis, keine 403/CAPTCHA-Probleme.

### Für das Vorabi relevante Bereiche

- **Jahrgang 12**: Elektrisches Feld, Magnetfeld, Schwingungen und Wellen (15 Lektionen)
- **Jahrgang 13**: Quantenobjekte (14 Lektionen), Atomhülle (9 Lektionen), Atomkern
- **Praktikum (P)**: 24 Versuchsanleitungen für gA/eA, darunter Doppelspalt, Gitter, Michelson,
  Photoeffekt, h-Bestimmung mit LED, Polarisation, stehende Welle, Interferenz mit Ultraschall

Der Atomkern (Jahrgang 13) ist im Vorabi-Skript **nicht** behandelt, weil die vorgegebene
Themenliste ihn nicht enthält; die Schulwebsite bietet ihn aber an (`docs/d13/15atomkern/`).

## 2. Didaktische Besonderheiten der Schule

Die Schule verwendet konsequent:

- **Zeigerdarstellung** (rotierende Zeiger) statt komplexer Rechnung – auch für Interferenz und MZI.
- **Stochastische Deutung** von Interferenzmustern (Wahrscheinlichkeit = Quadrat der Zeigerlänge).
- **Modellbegriff**: „Welle-Teilchen-Dualismus“ wird als *Modellwechsel* eingeführt und dann durch
  die **QED** (Feynman: alle Wege, Zeiger addieren) ersetzt. Das ist ein Alleinstellungsmerkmal
  gegenüber vielen Schulbüchern und wurde in Skript 5 genau so übernommen.
- **Potenzialtopf** als Begründung der Quantisierung (statt nur Bohrs Postulate).
- Schreibweise der Unbestimmtheit: $\Delta x \cdot \Delta p_x \geq h$ (nicht $\hbar/2$).
- Doppelspalt in der exakten Form $n \lambda = g \sin(\arctan(a_n/e))$.
- Elektronenbeugung mit der schulischen Arbeitsgleichung $\lambda = d r/(n a)$.

Diese Konventionen wurden in allen Skripten beibehalten, damit die Unterlagen zur
Unterrichtssprache passen.

## 3. Kerncurriculum (verbindliche Kompetenzen)

Auszüge der Schule zu gA/eA gesichert. Kernpunkte für das Vorabi:

- Quantenobjekte: Doppelspalt mit Quanten mit Ruhemasse, de Broglie, Elektronenbeugungsröhre,
  stochastische Deutung, Koinzidenzmethode, MZI (Komplementarität, Nichtlokalität, Delayed
  Choice), Unbestimmtheit, Wellenfunktion, h-Bestimmung (LED, Fotozelle, Röntgen).
- Atomhülle: Potenzialtopf (Herleitung der Energiegleichung), Linienspektren, Resonanzabsorption,
  Franck-Hertz, Energieniveauschemata, Balmerformel, Fluoreszenz, Orbitale bis $n = 2$,
  Pauli-Prinzip.
- Schwingungen und Wellen: harmonische Schwingung, Federpendel, Resonanz, Schwingkreis,
  Wellengleichung, Polarisation, Interferenz (stehende Welle, Michelson, Doppelspalt, Gitter,
  Einzelspalt, Bragg), Herleitung der Doppelspalt- und Bragg-Gleichung.

## 4. Prüfungsrahmen 2027

- 4 Aufgaben, 3 auswählen.
- eA: zusätzlich Varianten „mit Experimentieren – Elektrik“ und „– Optik“ (eine Aufgabe mit
  durchzuführenem Experiment); gA ohne experimentelle Anteile.
- Experimentierkästen: Optik und Atomphysik; Magnetismus – Elektrik – Elektronik.
- Hilfsmittel: WTR, Formelsammlung.

## 5. Aufgabenpool 2025/2026 (12 Aufgaben)

- Verteilung: E/B-Felder 6, Schwingungen/Wellen 4, Quantenobjekte 2, **Atomhülle 0**.
- Häufigste Operatoren: Begründen (23), Erklären (16), Bestimmen (8), Erläutern (7),
  Beschreiben (7), Berechnen (6), Beurteilen (6).
- 5 von 12 Aufgaben mit fachpraktischem Anteil.
- Alle Aufgaben sind materialgestützt (Messreihen, technische Beschreibungen, Zitate) und enthalten
  teils Kontrollwerte.
- Die beiden Quantenaufgaben behandeln **Elektroneninterferenz am Doppelspalt** (Jönsson/Tonomura)
  und verbinden Rechnung (Beugungswinkel) mit Deutung (Wellen-/Teilcheneigenschaften,
  stochastische Vorhersagbarkeit).

## 6. Nicht zugängliche Quellen (dokumentiert, nicht erfunden)

| Quelle | Problem |
|---|---|
| `za-aufgaben.nibis.de` (Landesaufgaben 2016–2026) | POST auf `download.php` → HTTP 302 auf `index.php`; Session-/Bot-Schutz nicht umgehbar. Keine Inhalte übernommen. |
| `bildungsportal-niedersachsen.de/.../zentralabitur` | HTTP 403 |

Konsequenz: Die Aussagen zur Themenverteilung beziehen sich ausschließlich auf die 12
IQB-Aufgaben. Es wurden **keine** Häufigkeitsstatistiken über Jahre hinweg erfunden.
