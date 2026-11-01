# Quellenverzeichnis

Alle Quellen wurden am 01.11.2026 abgerufen. Zuordnung: *Primär* = Grundlage der Skripte,
*Sekundär* = Hintergrund/Plausibilisierung.

## 1. Primärquelle: Unterrichtsmaterialien Gymnasium Westerstede

Basis-URL: **https://www.physik.gym-wst.de**

Die Seite ist eine Docsify-Anwendung. Inhalte liegen als Markdown unter
`https://www.physik.gym-wst.de/docs/<jahrgang>/<thema>/<lektion>/docs.md`.
Vollständiger lokaler Mirror: `01_Schulwebsite/materialien/` (112 Dateien), Index:
`01_Schulwebsite/website_links.csv`.

### Verwendete Seiten im Einzelnen

**Jahrgang 12 – Schwingungen und Wellen** (`docs/d12/12schwingungenwellen/`)
- `01schwingungen` – Kenngrößen, Zeigerdarstellung, gedämpfte Schwingung
- `02federmassependel` – Federkonstante, DGL-Herleitung von $T$
- `03resonanz` – erzwungene Schwingung, Schwingkreis, Thomson-Gleichung
- `04wellen`, `05wellengleichung` – Wellenarten, Wellengleichung
- `06polarisation`, `07polarisationvonlicht` – Polarisation, Malus
- `08interferenz` – Superposition, Gangunterschied
- `09stehendewellen` – stehende Wellen
- `10michelsoninterferometer` – Michelson, Brechungsindex
- `11doppelspalt`, `12doppelspaltgitter` – Doppelspalt/Gitter
- `13bragginterferometer` – Bragg
- `14messunglichtgeschw`, `15messinvarianzvonc`
- `20herleitungen` – schulische Herleitungen (Doppelspalt, Bragg)

**Jahrgang 13 – Quantenobjekte** (`docs/d13/13quantenobjekte/`)
- `01physikkrise`, `02lichtquanten`, `03elektronenwellen`, `04doppelspaltexperiment`
- `05planckkonstante` (Fotozelle, Kondensatormethode, Röntgen, LED)
- `06machzehnderinterferometer`, `07mzilabor`
- `08welcherweg`, `09qed`, `10delayedchoice`, `11verschraenkung`, `12quantenradierer`
- `13unbestimmtheit`, `14wellenfunktion`

**Jahrgang 13 – Atomhülle** (`docs/d13/14atomhuelle/`)
- `01rutherfordmodell`, `02bohrmodell`, `03quantenmodell`, `04orbitalmodell`
- `05emissionsspektren`, `06absorptionsspektren`, `07franckhertz`, `08roentgenspektrum`,
  `09henelaser`

**Kerncurriculum-Auszüge der Schule**
- `docs/d13/01infos/kerncurriculumea/docs.md` (erhöhtes Niveau)
- `docs/d13/01infos/kerncurriculumga/docs.md` (grundlegendes Niveau)
- `docs/d12/01infos/kerncurriculumea/docs.md`

Diese Kompetenzlisten sind die wichtigste Steuerungsquelle für Themenauswahl und Formulierungen
der Lernziele.

## 2. Offizielle Prüfungsmaterialien

- **IQB, Abiturprüfungsaufgaben Physik** (Pool 2025/2026):
  https://www.iqb.hu-berlin.de/de/schule/aufgaben/sekii/abiturprüfungsaufgaben-physik/
  → 12 Aufgaben als PDF gespeichert in `02_Abiturrecherche/iqb_aufgaben/`.
  Genutzt für Aufgabenstruktur, Operatoren, Kompetenzzuordnung; **keine wörtliche Übernahme**.
- **Hinweise zur schriftlichen Abiturprüfung 2027, Fach Physik** (Nds. Kultusministerium,
  Juni 2024), Bezug über die Schulseite max-emden.de (Spiegel des amtlichen Dokuments):
  https://max-emden.de/wordpress/wp-content/uploads/2025/02/17_Physik_Hinweise_2027.pdf
- **Kerncurriculum Physik, Gymnasium/gymnasiale Oberstufe, Niedersachsen 2022**:
  https://cuvo.nibis.de/ (verlinkt auch auf der Schulseite)
- **ZA-Aufgabenarchiv Niedersachsen**: https://za-aufgaben.nibis.de/ – *nicht zugänglich*
  (Formular-POST wird mit HTTP 302 auf `index.php` abgewiesen; Bot-Schutz). Keine Inhalte
  übernommen, da nicht einsehbar.
- **Bildungsportal Niedersachsen, Zentralabitur 2027**:
  https://bildungsportal-niedersachsen.de/allgemeinbildung/zentrale-arbeiten/zentralabitur
  – *nicht zugänglich* (HTTP 403).

## 3. Sekundärquellen (Hintergrund, Plausibilisierung)

- R. P. Feynman: *QED – Die seltsame Theorie des Lichts und der Materie*. Grundidee der
  Pfadamplituden (nur begrifflich genutzt, kein Zitat).
- C. Jönsson (1961): Elektroneninterferenz an mehreren künstlich hergestellten Feinspalten,
  Z. Physik 161, 454–474, https://doi.org/10.1007/BF01342460 – Referenz für Elektronenbeugung.
- A. Tonomura et al. (1989): Demonstration of single-electron buildup of an interference pattern,
  Am. J. Phys. 57 (2), 117–120, https://doi.org/10.1119/1.16104 – Referenz für Einzelelektronen.
- CODATA-Werte für Naturkonstanten (h, e, m_e, c) – verwendet in allen Rechnungen.

## 4. Eigene Erzeugnisse

- Alle 23 Grafiken in `05_Grafiken/` wurden mit matplotlib selbst erzeugt (Skripte
  `make_figures.py`, `mk_map.py` liegen bei).
- Alle Aufgaben in den Skripten sind eigene Formulierungen im Stil der IQB-Aufgaben.

## 5. Kennzeichnung in den Dokumenten

In jedem PDF steht am Ende ein Quellenkasten. Dort ist angegeben, welche Aussagen aus
Schulmaterial, welche aus dem Kerncurriculum und welche aus dem Aufgabenpool stammen.
Ergänzendes Hintergrundwissen (z. B. Quantenradierer-Details, Dekohärenz) ist im Text als
Vertiefung erkennbar.
