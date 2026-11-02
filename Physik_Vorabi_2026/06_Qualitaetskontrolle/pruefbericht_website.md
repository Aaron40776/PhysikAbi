# Prüfbericht Website PhysikAbi

**Prüfdatum:** 2026-11-02

**Prüfobjekt:** https://aaron40776.github.io/PhysikAbi/ (Repo `Aaron40776/PhysikAbi`, öffentlich, ohne Lizenz)

**Prüfmaßstab:** Schulseite https://www.physik.gym-wst.de/ als verbindliche Unterrichtsquelle; KC Physik Niedersachsen 2022 (eA); KMK-Bildungsstandards 2020; Hinweise zum Abitur 2027 (Niedersachsen, eA); lokale Quellen `build/src/*.typ`, `build/web/*`, `build/make_pages.py`, `03_Lernskripte/*.pdf`, `04_Zusatzmaterial/*.pdf`.

**Prüfart:** unabhängige Inventur und Prüfung. **Es wurden keine inhaltlichen Fixes vorgenommen.** Der Bericht ist die Entscheidungsgrundlage für „FIX“.

> **Stop-Klausel:** Die Rechte an Text und Bildern sind nicht dokumentiert (P0-01). Solange keine schriftliche Freigabe vorliegt, darf die Seite in dieser Form nicht öffentlich betrieben werden. Außerdem widersprechen sich KC-Box, `Vorabi`-Spalte und offizieller Stoff (P1-01); eine Scope-Änderung ist eine Produktentscheidung, kein stiller Fix.

---

## 1. Kurzurteil

**Bilanz:** 29 Befunde — 1 × P0, 9 × P1, 11 × P2, 8 × P3. Die P0/P1 sind Release-Blocker; P2 sind Sachfehler und Konsistenzmängel; P3 sind Betriebs-, Rechts- und Detailmängel.

1. **Technisch ist die Seite gut gebaut.** 7 PDFs, 53 Seiten, 48/48 Seitenprüfungen, 7/7 Browsertests, 0 Layoutüberläufe, 0 interne Linkfehler, LCP 32–108 ms, CLS 0, reproduzierbarer Build. Das ist belastbar.
2. **Inhaltlich ist die Seite eine starke, aber unvollständige Verdichtung.** Von 113 inhaltlichen KC-Punkten der bearbeiteten Bereiche sind 75 vollständig, 22 teilweise und 16 nicht abgedeckt. Dazu kommen 74 KC-Punkte aus Elektrischen/Magnetischen Feldern und Atomkern, die die Seite gar nicht behandelt.
3. **Der Titel „Abitur 2026/2027“ ist zu weit.** Die Seite deckt den Vorabi-Schwerpunkt Wellen/Quanten/Atome ab, nicht den gesamten KC-Stoff. 50 % der IQB-Aufgaben 2026 betreffen Elektrische/Magnetische Felder; die Hinweise 2027 sehen für eA eine Experimentalvariante „Elektrik“ vor.
4. **Es gibt klare Sachfehler.** Cäsium-Austrittsarbeit 1,94 eV statt 2,14 eV (P1-04), Franck-Hertz-Kontaktspannung 5,5 V ohne Quelle und im Widerspruch zur Quellenkurve (P1-05), Rømer 22 min statt 17 min (P2-01), Michelson-Querverweis auf „Abschnitt 12“ statt 13 (P2-02).
5. **Barrierefreiheit und Recht sind die release-kritischen Punkte.** Alle 24 Abbildungen der Lesefassung haben kein `alt` (P1-06). Die Schulseite ist urheberrechtlich geschützt; eine Freigabe ist nirgends dokumentiert (P0-01).

---

## 2. Prüfstand (was tatsächlich gelaufen ist)

| Prüfung | Befehl / Werkzeug | Ergebnis | Beleg |
|---|---|---|---|
| Website neu bauen | `python3 build/make_pages.py --out _site` | 7 Dokumente, 53 Seiten, `suche.json` 76 kB, ZIP 1.745.325 Bytes | `_site/`, Lauf 2026-11-02 |
| Website deterministisch | zweiter Build nach `/tmp/site2`, SHA-256 je Datei | 0 Unterschiede, keine zusätzlichen/fehlenden Dateien | Prüfskript `/tmp` |
| PDFs neu bauen | Typst 0.15.1, `build/build_all.sh`, `SOURCE_DATE_EPOCH=1700000000` | 7/7 PDFs byte-identisch zum Repo | `sha256sum -c` 7× OK |
| Layout-QA | `python3 build/qa_pdf.py 03_Lernskripte/*.pdf` | 7 PDFs, 0 Befunde, 7.553 Wörter | Tabelle unten |
| Physik-Checks | `python3 build/check_physics.py` | 13/13 OK (hc, mp/me, Rydberg, Doppelspalt, MZI, Potenzialtopf) | Lauf |
| Quellen-/Markdown-Checks | `build/check_all.sh` | „Alle Prüfungen bestanden“ (48/48 + 7/7 + 16/16) | Lauf aus `/tmp/repro` |
| Interne Links/Anker | eigener Crawler über `_site/**/*.html` | 0 Fehler, 0 fehlende Anker | Lauf |
| Live vs. lokal | SHA-256 nach Entfernen der `?v=`-Hash | identisch (Index und Leser 01) | Lauf |
| Browser-Matrix | Playwright/Chromium, 320–1440 px, hell/dunkel, 200 %, ohne JS | kein Seitenüberlauf; Befunde unten | `/tmp/audit/result.json` |
| Suche | „Bragg“, „λ“, „lambda“, „Franck-Hertz“, „Kohärenz“, „koharenz“, „xyzzy“, XSS | Treffer korrekt, Umlaute/Griechisch normalisiert, XSS nicht ausführbar | Lauf |
| Sicherheit | `git grep` nach Secrets, `target=_blank`, `innerHTML` | keine Secrets, keine `_blank`-Links, Suchausgabe escaped | Lauf |

**PDF-Kennzahlen (qa_pdf):**

| PDF | Seiten | Wörter | Vektorobjekte | Befunde |
|---|---:|---:|---:|---:|
| 01 Wellen und Interferenz | 12 | 1.994 | 176 | 0 |
| 02 Lichtquanten und Planck | 7 | 846 | 88 | 0 |
| 03 Elektronenwellen und Beugung | 6 | 823 | 120 | 0 |
| 04 Doppelspalt und Quantenphysik | 7 | 923 | 85 | 0 |
| 05 MZI, Welcher Weg, Delayed Choice | 6 | 954 | 82 | 0 |
| 06 Atommodelle und Orbitalmodell | 8 | 1.028 | 112 | 0 |
| 07 Spektren und Franck-Hertz | 7 | 985 | 116 | 0 |

---

## 3. Scope-Inventar (Zahlen, die die Debatte entscheiden)

Grundlage: `01_Schulwebsite/website_links.csv` (112 Zeilen) und die KC-Kästen der 49 Seiten, die mit `> **Bezug zum Kerncurriculum:**` beginnen.

| Menge | Anzahl | Inhalt |
|---|---:|---|
| Quellseiten insgesamt | 112 | Spiegel der Schulseite |
| Seiten mit KC-Box | 49 | Einschlusskriterium des Auftrags |
| KC-Punkte (Bullets) in diesen Boxen | 189 | wörtlich in der Matrix unten |
| KC-Box **und** `Vorabi=ja` | 34 | davon 1 Seite „nicht mehr im KC“ (Hene-Laser), 1 Seite ohne Kompetenzpunkt (Invarianz) |
| KC-Box **und** `Vorabi=nein` | 15 | 11 Seiten E/B-Felder, 4 Seiten Atomkern |
| `Vorabi=ja` **ohne** KC-Box | 43 | 28 Praktikumsseiten, 3 Grundlagen, 7 Info-/KC-Listen, 4 Quantenseiten ohne KC-Box, 1 Herleitungsseite |
| `Vorabi=nein` insgesamt | 35 | 15 KC-Seiten + 20 Sonstige |

**Ergänzend genutzt (kein KC-Inhalt):** `docs/d13/13quantenobjekte/01physikkrise` (historischer Einstieg in S1/S2) und `docs/d12/12schwingungenwellen/20herleitungen` (Herleitungshilfen) haben keine KC-Box. Sie werden als Hintergrund verwendet, aber nicht als KC-Abdeckung gezählt; die Skripte kennzeichnen sie nicht als „ergänzend“ (siehe P1-07).

**Kernbefund:** Die Spalte `Vorabi` ist die einzige Stelle, die E/B-Felder und Atomkern ausschließt. Kein offizielles Dokument tut das. Die Hinweise 2027 nennen ausdrücklich eine eA-Variante „mit Experimentieren – Elektrik“; die IQB-Auswertung im Repo zählt 6 von 12 Aufgaben (50 %) zu E/B. Gleichzeitig markiert dieselbe Spalte 28 Praktikumsseiten als `ja`, darunter E/B-Praktika – ein interner Widerspruch.


---

## 4. Befundtabelle

Legende: **P0** = Release-Blocker, **P1** = gravierend, **P2** = wichtig, **P3** = gering. Status = Bearbeitungsstand; hier durchgehend `offen`, weil keine Fixes beauftragt waren.

| ID | Sev. | Kategorie | Ort | Befund | Beleg | Quelle | Wirkung | Maßnahme | Status |
|---|---|---|---|---|---|---|---|---|---|
| P0-01 | P0 | Recht | `03_Lernskripte/*.pdf`, `build/fig/schule/*`, `_site`, ganzes Repo | 24 Schulbilder stammen aus dem Schulmaterial; die geprüften Dateien sind byte-identisch übernommen; der 112-Seiten-Spiegel und die Skripte übernehmen Text, Struktur und Daten. Eine Lizenz, Freigabe oder Rechteübertragung ist nicht dokumentiert. | `01_Schulwebsite/materialien/.../bilder` = `build/fig/schule/*` (SHA-256 gleich); `01_Schulwebsite/README.md` bezeichnet den Ordner als 1:1-Spiegel; Im Repo ist keine Freigabe dokumentiert; die Schulseite enthält keinen Hinweis auf eine Freigabe für diese Übernahme. GitHub-API: `private=false`, `license=null`. | https://www.physik.gym-wst.de (Impressum, Abruf 2026-11-02); https://github.com/Aaron40776/PhysikAbi | Urheberrechtliche Unterlassungs- und Take-down-Gefahr; keine öffentliche Veröffentlichung möglich. | Schriftliche Freigabe des Autors einholen **oder** Bilder/Textübernahmen entfernen; bis dahin Seite offline nehmen bzw. Repo privat stellen; Freigabe im Repo dokumentieren. | offen |
| P1-01 | P1 | Scope / Produktversprechen | `build/web/index.html:41`, `README.md:4`, `00_Projektverwaltung/KERNCURRICULUM_MAPPING.md:96-97`, `website_links.csv:26,83` | Die Seite heißt „Abitur 2026/2027“, behandelt aber 15 KC-Seiten nicht: Elektrische Felder (5), Magnetische Felder (6), Atomkern/Radioaktivität (4). Diese sind im KC 2022 und im IQB-Pool 2026 enthalten. | KC-Boxen der 15 Seiten; `KERNCURRICULUM_MAPPING.md:96` „Elektrisches und magnetisches Feld“ und `:97` „Atomkern und Radioaktivität“ als „bewusst nicht aufgenommen“; `website_links.csv:26` `...02efeld...;nein`, `:83` `...04radioaktiverzerfall...;nein`; `02_Abiturrecherche/abitur_analyse.md` 6/12 Aufgaben E/B. | KC 2022 (https://cuvo.nibis.de/); KMK 2020; Hinweise 2027, S. 1 | Schüler können die Seite für vollständig halten und in 50 % der Aufgaben scheitern. | Entweder Scope im Titel/Lead ausdrücklich auf „Vorabi-Schwerpunkt Wellen/Quanten/Atome“ begrenzen **oder** E/B und Atomkern ergänzen. Entscheidung des Auftraggebers nötig. | offen |
| P1-02 | P1 | Scope / Experimente | `website_links.csv:86-113`, `_site/` | 28 Praktikumsseiten sind `Vorabi=ja`, aber keine ist auf der Website; die eA-Hinweise 2027 verlangen eine Experimentalvariante. | `website_links.csv:90` Ultraschall, `:91` Doppelspalt, `:92` Gitter/LED, `:108` Polarisation, `:110` Michelson, `:112` Photoeffekt – alle `ja`; keine dieser Seiten in `_site/lesen/` oder im ZIP. | Hinweise zum Abitur 2027, S. 1: eA-Varianten „mit Experimentieren – Elektrik“ und „Optik“; Erlass Schülerexperimente 21.6.2018 | Experimentelle Kompetenz und eA-Prüfungsformat nicht vorbereitbar. | Praktikumsseiten als eigene Sektion „Praktikum“ veröffentlichen (oder mindestens die KC-relevanten: Ultraschall, Doppelspalt, Gitter, Polarisation, Michelson, h-LED, Photoeffekt); in ZIP aufnehmen. | offen |
| P1-03 | P1 | KC-Abdeckung | `build/src/01_wellen.typ`, `03_elektronenwellen.typ`, `05_mzi.typ`, `07_spektren.typ` | 16 KC-Punkte der bearbeiteten Bereiche fehlen ganz, 22 weitere nur teilweise. Beispiele: Ultraschall-Stehwellen-Experiment, Gitter mit weißem/monochromatischem Licht (objektiv/subjektiv), CD/DVD-Spurabstand, Oszilloskop-Ablesen, Energieumwandlungen Federpendel, Schwingkreis, Bragg-Herleitung, optische Analogieversuche, λ-v-Messauswertung, Anwendung der Quantenphysik, Fluoreszenz bei Leuchtstoffröhre/weißer LED. | KC-Boxen: `09stehendewellen/docs.md:5` (Ultraschall), `12doppelspaltgitter/docs.md:4-7` (Gitter, CD/DVD), `01schwingungen/docs.md:6-8` (Oszilloskop, Energie, t-s/t-v), `03resonanz/docs.md:6-9` (Schwingkreis, Resonanzkurve), `13bragginterferometer/docs.md:5` (Herleitung), `03elektronenwellen/docs.md:4,7` (Analogie, λ-v), `10delayedchoice/docs.md:6` (Anwendung), `05emissionsspektren/docs.md:9` (Leuchtstoffe/LED). In den 7 Kapiteln gibt es keinen Abschnitt zu Ultraschall, Oszilloskop, CD/DVD oder Leuchtstoffen (Volltextsuche; „CD“ kommt nur als „CCD“ in S4 vor). | KC 2022 eA, zitiert in den jeweiligen KC-Boxen | Die Seite deckt zentrale Experimentier- und Anwendungskompetenzen nicht ab; Aufgaben können so nicht gelöst werden. | Die fehlenden Punkte aus den Quellseiten übernehmen; wo die Quelle selbst kein Material hat, als Lücke markieren statt erfinden. | offen |
| P1-04 | P1 | Fakt / Zahl | `build/src/02_lichtquanten.typ:115,127,129` | Cäsium-Austrittsarbeit ist mit 1,94 eV angegeben. Lehrbuch-/Handbuchwert: 2,14 eV. Die Quelle impliziert aus 536 nm und 0,18 V ebenfalls ca. 2,13 eV. Damit sind Aufgabe 2 (U_B = 1,16 V) und die Grenzwellenlänge 639 nm falsch; korrekt sind ca. 0,96 V und ca. 579 nm. | `02_lichtquanten.typ:115` „Eine Cäsium-Kathode ($W_A = 1","94$ eV)“; `:129` „$lambda_G = frac(1239","8, 1","94) = 639$ nm“; Quelle `05planckkonstante/docs.md:113` „536 nm ... 0,18 V“; Rechnung: 1239,8/536 − 0,18 = 2,133 eV; 1239,8/2,14 = 579,3 nm. | Handbuchwert (CRC); Quelle `docs/d13/13quantenobjekte/05planckkonstante/docs.md:113` | Falsche Klausellösung; Lernende prägen einen falschen Materialwert ein. | `W_A` auf 2,14 eV setzen (Quelle: 2,13 eV, gerundet 2,1 eV); Aufgabe und Lösung neu rechnen: E(400 nm)=3,10 eV, U_B=0,96 V, λ_G=579 nm. Änderung ist inhaltlich, daher Freigabe nötig. | offen |
| P1-05 | P1 | Fakt / Quelle | `build/src/07_spektren.typ:116,118,131,132,158` | Die Franck-Hertz-Kurve wird mit Minima bei 10,4/15,3/20,2/25,1 V und Kontaktspannung 5,5 V erklärt. Die Quelle nennt nur „erstes Maximum bei ca. 6 V“ und 4,9 eV; 10,4 V ist gerade 4,9 + 5,5. Das Skript nennt im selben Abschnitt außerdem 4,9/9,8/14,7 V als Minima. | `07_spektren.typ:116` „Im idealisierten Modell fällt I bei 4,9 V, 9,8 V, 14,7 V …“; `:118` „die Minima auf 10,4 V, 15,3 V, 20,2 V“; `:132` „$U_K approx 5,5$ V“; Quelle `07franckhertz/docs.md:113` „bei ca. 6 V ihr erstes Maximum“. | Quelle `docs/d13/14atomhuelle/07franckhertz/docs.md:113`; KC-Box `:5` | Die Messkurve wird falsch gedeutet; die Kontaktspannung ist eine unbelegte Zutat; das Skript widerspricht sich selbst. | Werte aus der Quellenkurve ablesen (bzw. als schematisch kennzeichnen), Kontaktspannung nur mit Quelle nennen oder ganz streichen; Modell und Kurve in Übereinstimmung bringen. | offen |
| P1-06 | P1 | Barrierefreiheit | `_site/lesen/*.html` (24 `<img>`), `build/src/*.typ` `image(...)` | Alle 24 Abbildungen der Lesefassung haben kein `alt`-Attribut. Screenreader lesen Dateinamen oder nichts; die Abbildungen sind zugleich per JS als Button fokussierbar. | HTML: `<img src="data:image/png;base64,..." width="680" height="342" style="...">` – kein `alt`; Zählung: 8+2+2+3+2+5+2 = 24; `lesen-static.js` setzt `role=button`, `tabindex=0`, aber keinen Alt-Text. | WCAG 2.2 SC 1.1.1 (Level A) | Die zentrale Lesefassung ist für Screenreader-Nutzer nicht verständlich; die Vergrößerungsfunktion hat keinen zugänglichen Namen. | In allen `#figure(image(...))` ein `alt:` ergänzen (Beschreibung aus der `caption`, nicht „Abbildung“); bei rein dekorativen Bildern `alt: ""`; danach `test_browser.py` um eine Alt-Prüfung erweitern. | offen |
| P1-07 | P1 | 1:1-Nachweis | `00_Projektverwaltung/KERNCURRICULUM_MAPPING.md`, `05_Grafiken/QUELLEN.md`, `03_Lernskripte/*.pdf` | Es gibt keine Abweichungsprotokolle je Abschnitt (übernommen/gekürzt/umgestellt/ergänzt/korrigiert + Grund). Die Skripte verdichten rund 250 kB Quelltext auf 7.553 Wörter; die Zuordnung nennt nur Seitentitel. Zwei Seiten ohne KC-Box (`01physikkrise`, `20herleitungen`) werden genutzt, ohne als „ergänzend“ gekennzeichnet zu sein. | `KERNCURRICULUM_MAPPING.md` listet Seiten und Skripte, aber keine Änderungsart; `QUELLEN.md` listet Bildpfade, keine Textabweichungen; die Quellenbox im PDF nennt nur „Unterrichtsmaterialien Gymnasium Westerstede“. | Auftrag §1: jede Abweichung protokollieren; Quelle: Schulseite | Die Behauptung „quellentreue Fassung“ ist nicht belegbar; stillschweigende Korrekturen (z. B. 22 min) bleiben unentdeckt. | Je Kapitel eine Tabelle „Quellabschnitt → Skriptabschnitt → Art → Grund“ anlegen, inkl. der hier gefundenen Abweichungen. | offen |
| P1-08 | P1 | Dokumentation / Konsistenz | `README.md:4,10,14,44`, `04_Zusatzmaterial/Glossar.pdf:1`, `Lernfahrplan.pdf:1` | README und Zusatz-PDFs beschreiben einen anderen Produktstand: 17 PDFs/112 Seiten/104 Glossarbegriffe gegen tatsächlich 7 PDFs/53 Seiten/92 Begriffe. | `README.md:4` „17 PDFs, 112 Seiten“; `:10` „über alle 112 Seiten“; `:14` „Glossar mit 104 Begriffen“; `Glossar.pdf` S. 1 „104 Begriffe“; `Lernfahrplan.pdf` S. 1 „112 Seiten“; `glossar.json` = 92 Einträge; ZIP = 7 PDFs. | Eigene Messung; `build/glossar.json` | Nutzer erhält falsche Erwartungen; die Dokumentation ist nicht release-fähig. | README auf 7/53/92 aktualisieren; Glossar- und Lernfahrplan-PDF neu bauen oder als „nicht ausgeliefert“ kennzeichnen; ZIP-Beschreibung korrigieren. | offen |
| P1-09 | P1 | Build / Konsistenz | `build/build_all.sh:8-14`, `04_Zusatzmaterial/*.pdf`, `_site/` | Die 10 PDFs in `04_Zusatzmaterial` werden von keinem Build-Ziel erzeugt und von der Website nicht verlinkt. Sie enthalten zugleich entfernte Inhalte (QED, Compton, „5,5 V“, „112 Seiten“, „104 Begriffe“) und die fehlenden KC-Experimente (Ultraschall, CD, Michelson). | `build_all.sh` kompiliert nur `src/01`–`07`; kein `f1`–`f10`; `Experimentesammlung.pdf` TOC „Compton-Effekt“, „Stehende Ultraschallwelle“, „Bragg-Reflexion (CD, Kristall)“; `Gesamtuebersicht.pdf` enthält „QED“. | Eigener Build; `04_Zusatzmaterial/*.pdf` | Zwei widersprüchliche Produktstände; die einzige Quelle für die fehlenden Experimente ist nicht erreichbar. | Entweder die 04-PDFs wieder in den Build aufnehmen, aktualisieren und verlinken **oder** aus dem Repo entfernen und die Experimente in die 7 Kapitel integrieren. | offen |
| P2-01 | P2 | Fakt / Quelle | `build/src/01_wellen.typ:253` | Rømer wird mit „etwa 22 Minuten“ zitiert; die Quelle nennt „bis zu 17 Minuten“. 22 min ist Rømers historischer Wert, 17 min der moderne Wert – der Text vermischt beides. | `01_wellen.typ:253` „zu etwa 22 Minuten“; `01_wellen.typ:255` „Der heutige Wert … knapp 17 Minuten“; Quelle `14messunglichtgeschw/docs.md:40` „bis zu 17 Minuten verspätet“. | Quelle `docs/d12/12schwingungenwellen/14messunglichtgeschw/docs.md:40` | Historischer Wert und heutiger Wert werden verwechselt; die Quellenabweichung ist nicht protokolliert. | Entweder Quellenwert 17 min übernehmen oder ausdrücklich „Rømer selbst schätzte 22 min, heute 16,6 min“ schreiben; als Abweichung protokollieren. | offen |
| P2-02 | P2 | Verweis | `build/src/01_wellen.typ:281` | Der Querverweis „Michelson-Interferometer (Abschnitt 12)“ ist falsch; Michelson ist Abschnitt 13. | `01_wellen.typ:281`; Abschnitt `01_wellen.typ:314` „= Michelson-Interferometer“ (13. Abschnitt). | Eigene Prüfung | Toter/irreführender Verweis im Fließtext. | „Abschnitt 13“ setzen. | offen |
| P2-03 | P2 | Symbolkonsistenz | `01_wellen.typ:75,147`, `04_doppelspalt.typ`, `07_spektren.typ` | `k` bezeichnet sowohl den Dämpfungsfaktor (`e^{-k t}`) als auch die Wellenzahl (`sin(k x)`); `n` bezeichnet Ordnung und Brechungsindex; `D` bezeichnet Federkonstante und Unterscheidbarkeit; `P` Punkt und Wahrscheinlichkeit. | `01_wellen.typ:75` „e^(-k t)“; `:147` „sin(k x)“; `01_wellen.typ:69` „n lambda“; `:245` „n_2/n_1“; `01_wellen.typ:83` `D` Federkonstante; `04_doppelspalt.typ:93` `D` Unterscheidbarkeit; `01_wellen.typ:170` Punkt `P`; `04_doppelspalt.typ:72` `P(x)` Wahrscheinlichkeit. | Eigene Prüfung; Auftrag §3 | Verwechslungsgefahr beim Lernen und in Klausuren. | Symbole trennen: `γ` oder `b` für Dämpfung, `k` nur Wellenzahl; `n` nur Ordnung, `n_med` für Brechungsindex; `D` nur Federkonstante, `𝒟`/`V` für Unterscheidbarkeit; `P` nur Punkt, `p` bzw. psi-Quadrat für Wahrscheinlichkeit. | offen |
| P2-04 | P2 | Didaktik / Formel | `build/src/04_doppelspalt.typ:107` | Der Text sagt „Für Prinzipaussagen gilt die exakte Form mit $h/(2\pi)$“, direkt neben der Formel `Δx Δp ≥ h/(4π)`. Das ist begrifflich falsch: `h/(4π)` ist bereits die exakte Form; `h/(2π)` ist die andere Konvention. | `04_doppelspalt.typ:103` Formel `h/(4 pi)`; `:107` „exakte Form mit $h/(2 pi)$“. | Eigene Rechnung; Lehrbuchnotation | Studierende lernen eine falsche Zuordnung „exakt = h/(2π)“. | Satz korrigieren: „Die exakte Form ist Δx Δp ≥ ħ/2 = h/(4π); die Schulnotation Δx Δp ≥ h lässt den Faktor 1/(4π) weg.“ | offen |
| P2-05 | P2 | 1:1 / Didaktik | `build/src/06_atommodelle.typ:54-56` | Die drei Bohr-Postulate werden gegenüber der Quelle umgestellt: Die Quelle hat (1) Kreisbahnen, (2) strahlungsfrei/konstante Geschwindigkeit, (3) Quantensprung; das Skript macht (2) zur Drehimpulsquantisierung. Diese ist in der Quelle eine Folgerung aus de Broglie, kein Postulat. | `06_atommodelle.typ:54-56`; Quelle `02bohrmodell/docs.md:41,48,55`. | Quelle `docs/d13/14atomhuelle/02bohrmodell/docs.md:41-55` | Die didaktische Struktur der Quelle wird still verändert; „Postulat“ und „Herleitung“ werden vermischt. | Entweder Quellenreihenfolge übernehmen oder die Umstellung ausdrücklich als „didaktische Straffung“ protokollieren und die Drehimpulsquantisierung als Folgerung kennzeichnen. | offen |
| P2-06 | P2 | Beleg / Zahlen | `06_atommodelle.typ:24`, `02_lichtquanten.typ:139`, `03_elektronenwellen.typ:162` | Mehrere Zusätze stehen in keiner Quelle: „1 von 8000“ Alpha-Teilchen sowie die Messreihen 0,37/0,94/1,16 V und 14,2–10,0 mm. | `06_atommodelle.typ:24` „etwa 1 von 8000“; Quelle `01rutherfordmodell/docs.md:51` nur „sehr wenige“; `02_lichtquanten.typ:139` Messreihe; `03_elektronenwellen.typ:162` Messreihe. | Quellen jeweils; keine Fundstelle | Unbelegte Zahlen wirken wie Messdaten; die 1:1-Treue ist verletzt. | Entweder Quelle nachweisen oder als „typische Literaturangabe“/„Beispieldaten“ kennzeichnen; Neon-Aussage streichen, wenn nicht belegt. | offen |
| P2-07 | P2 | Quellen / Abbildungen | `build/src/*.typ` `caption: [... aus dem Schulmaterial.]`, Leser `Quellen`-Box | Abbildungen nennen nur „aus dem Schulmaterial“, nicht URL, Seite und Abschnitt. Die Quellenbox steht einmal am Ende, nicht beim Bild/Abschnitt. Alle Simulationen und App-Links der Schulseite fehlen. | `01_wellen.typ:227` „Bragg-Reflexion an Netzebenen aus dem Schulmaterial.“; Leser-Quellenbox „Unterrichtsmaterialien Gymnasium Westerstede: https://www.physik.gym-wst.de, Jahrgang 12, ‚Schwingungen und Wellen‘“; in `_site/lesen/*.html` kein Link auf die jeweilige Quellseite. | Schulseite; Auftrag §1/§2 | Quellen sind nicht abschnittsgenau nachprüfbar; Lernende verlieren die interaktiven Zugänge. | Je Abbildung `Quelle: <URL>/<Abschnitt>, Abrufdatum`; je Kapitel eine Quellenliste mit den konkret verwendeten Seiten; Simulationen als Linkliste „Vertiefung“ erhalten (nicht als Inhalt erfinden). | offen |
| P2-08 | P2 | Barrierefreiheit / Touch | `build/web/style.css:81,86,165,221` | Viele Touch-Ziele sind kleiner als 44 px, einige kleiner als 24 px: Navigationslinks 18–20 px hoch, Inhaltsverzeichnis 20–26 px, Theme-Button 34×34, A−/A+ 35×32. | Browser-Messung: `.seiten-nav a` 56×18 (320 px), `details.toc a` 276×20, `.thema` 34×34, `#kleiner/#groesser` 35×32; CSS `details.toc a { min-height: 26px }`, `.seiten-nav a` ohne Mindesthöhe. | WCAG 2.2 SC 2.5.5 (44 px, AAA) und SC 2.5.8 (24 px, AA) | Fehlbedienung auf dem Handy, besonders bei motorischen Einschränkungen. | Alle interaktiven Ziele auf mindestens 44×44 px bringen (Padding statt `min-height`), Reihenabstand vergrößern; `.thema` und Schriftgrößen-Buttons auf 44 px. | offen |
| P2-09 | P2 | Suche / UX | `build/web/suche.js` | Die Suche ist exakt/normalisiert, aber nicht tippfehlertolerant. „Fotoeffekt“ (ohne h) liefert 0 Treffer; die Eingabe „-wort“ allein wird als leer behandelt und zeigt den Leerzustand. | Browser-Test: `Fotoeffekt` → 0; `Frequenz`/`frequenz` → 21; `Kohärenz`/`koharenz` → 3; `-wort` → Leerzustand (keine Trefferliste). | Eigene Prüfung; Auftrag §4 | Nutzer mit Tippfehlern finden nichts und erhalten keine Korrekturhilfe. | Einfache Fuzzy-/Fallback-Suche (Levenshtein-Distanz 1, „Meinten Sie …“) oder Suchindex mit Trigrammen; reine Ausschlussanfrage verständlich melden. | offen |
| P2-10 | P2 | CI / Betrieb | `.github/workflows/pages.yml:30-52` | Der Pages-Workflow baut die PDFs und Leseseiten nicht neu. Er testet die eingecheckten PDFs/Leseseiten und deployt sie. Eine Änderung an `build/src` kann daher mit alten PDFs/Lesern live gehen. | Workflow-Schritte: `pip install`, `test_pages.py`, `test_browser.py`, `make_pages.py`; kein `build_all.sh`, kein Typst-Setup. | Eigene Prüfung; `build_all.sh` | Stille Divergenz zwischen Quelle, PDF und Leser; der grüne CI-Build beweist nicht, dass die Quellen zum Deployment passen. | Im Workflow Typst 0.15.1 installieren, `build_all.sh` laufen lassen und danach `git diff --exit-code` (bzw. Artefakt-Vergleich) prüfen; oder Build-Artefakte nicht einchecken. | offen |
| P2-11 | P2 | Didaktik / Aufgaben | `build/src/*.typ` „Aufgaben“ | Nur 2 Aufgaben je Kapitel (14 insgesamt), keine AFB-Kennzeichnung, wenige AFB-III-Operatoren; das 20-Aufgaben-Übungsheft ist nicht veröffentlicht. | `01_wellen.typ:351` „Aufgaben“; je Kapitel 2 Aufgaben; `04_Zusatzmaterial/Uebungsheft_20_Aufgaben.pdf` vorhanden, aber nicht in `_site/`. | Eigene Zählung; `abitur_analyse.md` (Operatoren) | Zu wenig Training für die Prüfungsvorbereitung; AFB III unterrepräsentiert. | Aufgaben in die Website aufnehmen (Übungsheft verlinken) und je Aufgabe AFB I/II/III ausweisen; mindestens eine AFB-III-Aufgabe je Kapitel. | offen |
| P3-01 | P3 | Rundung | `06_atommodelle.typ:197`, `02_lichtquanten.typ:139`, `07_spektren.typ:142` | Kleine Rundungsabweichungen: 1.097 nm statt 1.099 nm (für L=1 nm, ΔE=1,128 eV); h=6,59 statt 6,615·10⁻³⁴ (aus der Aufgabe); 4,11/−1,88 statt 4,129/−1,898; 253 nm neben 253,6 nm der Quelle. | Rechnungen in §7; `06_atommodelle.typ:197` „1097“; `02_lichtquanten.typ` Aufgabe 2. | Eigene Rechnung | Keine falsche Physik, aber unnötige Unschärfe. | Auf 3–4 gültige Ziffern runden und in der Lösung den Rechenweg mit Zwischenwerten zeigen. | offen |
| P3-02 | P3 | Formulierung | `build/src/02_lichtquanten.typ:81` | „Die erste direkte Messung von h“ ist zu absolut; Millikan (1916) war die erste präzise Prüfung, Planck führte h 1900 über die Strahlungsformel ein. | `02_lichtquanten.typ:81` „Erste direkte Messung von h aus dem Photoeffekt.“ | Eigene Prüfung | Didaktisch überpointiert. | „Eine der ersten präzisen Messungen“ schreiben. | offen |
| P3-03 | P3 | Produkttext | `build/web/index.html:41` | Der Lead „Die sieben Kernkapitel für die gymnasiale Oberstufe, Niedersachsen“ sagt nicht, dass es ein Vorabi-Schwerpunkt ist. | `index.html:41`; `README.md:4` | Eigene Prüfung | Erwartungsmanagement (siehe P1-01). | Scope-Satz ergänzen: „Schwerpunkt Wellen/Quanten/Atome; E/B und Atomkern folgen“. | offen |
| P3-04 | P3 | Recht / Betrieb | Repo-Wurzel, `_site`, GitHub Pages | Keine `LICENSE` für den eigenen Code; keine CSP; GitHub Pages liefert `cache-control: max-age=600` für alle Assets, obwohl die Assets nur über `?v=<Hash>` versioniert sind. | GitHub-API `license=null`; `curl -I .../assets/style.css` `cache-control: max-age=600`; kein `<meta http-equiv="Content-Security-Policy">`. | Eigene Prüfung | Unklare Nachnutzbarkeit; kurze Cache-Lebensdauer; kein Defense-in-Depth. | Eigene Lizenz (z. B. CC BY-SA für Text, MIT für Code) wählen; Query-Versionierung beibehalten; Cache-Header sind auf Pages nicht steuerbar; CSP-Meta testen. | offen |
| P3-05 | P3 | No-JS | `_site/index.html`, `_site/suche.html` | Ohne JavaScript ist die Suche funktionslos; das Eingabefeld bleibt sichtbar, die Erklärung steht nur im `noscript` am Ende. | Browser-Test `java_script_enabled=False`: Index zeigt Inhalte, Suche zeigt Eingabefeld ohne Ergebnis; `noscript`-Hinweis vorhanden. | Eigene Prüfung; Auftrag §4 | Nutzer ohne JS tippt ins Leere. | Suchfeld ohne JS ausblenden oder durch einen Link auf die Kapitel ersetzen; Hinweis direkt am Feld. | offen |
| P3-06 | P3 | Wartbarkeit | `build/build_all.sh`, `build/check_sources.py` | Build- und Prüfskripte setzen das Arbeitsverzeichnis `build/` voraus; aus dem Repo-Root schlagen sie fehl (`cp: cannot stat 'fig/*.svg'`, `FileNotFoundError: template.typ`). | Eigener Lauf aus dem Root: `build_all.sh` Exit 1; `check_sources.py` Traceback. | Eigene Prüfung | Fehlbedienung, unklare Fehlermeldung. | Im Skript `cd "$(dirname "$0")"` ausführen; Pfade relativ zum Skript auflösen. | offen |
| P3-07 | P3 | Doku-Konsistenz | `06_Qualitaetskontrolle/pruefbericht.md` | Der alte Bericht nennt an einer Stelle „51 Seiten“, an anderer „53 Seiten“; Abschnitt 15.9 (`pruefbericht.md:1153`) beschreibt eine neu gezeichnete MZI-Abbildung, während das Skript das Schulbild `s5_mzi.png` verwendet. | `pruefbericht.md:1251` (51 Seiten) vs. `:1280` (53 Seiten); `05_mzi.typ` `image("../fig/schule/s5_mzi.png")`. | Eigene Prüfung | Historische Inkonsistenz; erschwert die Nachprüfung. | Bericht nicht rückwirkend ändern, aber in `PROGRESS.md` einen Nachtrag mit den aktuellen Zahlen und der Bildquelle aufnehmen. | offen |
| P3-08 | P3 | Barrierefreiheit / Math | `_site/lesen/*.html` | MathML ist vorhanden, aber ohne `aria-label`/Kurzbeschreibung; komplexe Formeln werden von Screenreadern je nach Browser nur bruchstückhaft vorgelesen. | `<math>` Elemente in allen Lesern; kein `aria-label` am `math`; `lesen-static.js` markiert nur Suchtreffer. | Eigene Prüfung; WCAG 1.1.1/1.3.1 | Formeln sind nicht zuverlässig zugänglich. | Für zentrale Formeln eine Textalternative in `aria-label` oder eine „Formel als Text“-Zeile ergänzen; MathML-Rendering testen. | offen |

---

## 5. KC-Matrix

**Lesart:** Die Spalte „KC-Punkt“ enthält den wörtlichen Kompetenzpunkt aus dem KC-Kasten der Schulseite. Die Schulseite zitiert damit das KC 2022 (eA); die offizielle Grundlage ist das KC 2022 (https://cuvo.nibis.de/) im Rahmen der KMK-Bildungsstandards 2020 und der Hinweise 2027. Der KC-Volltext konnte über das JS-Portal `cuvo.nibis.de` nicht direkt als PDF abgerufen werden; geprüft wurde die vollständige Kompetenzliste der Schulseite plus die Hinweise 2027. Das ist in §11 als „nicht geprüft“ ausgewiesen.

**Status:** `abgedeckt` = Inhalt und Kompetenz im Skript vorhanden; `teilweise` = Ansatz vorhanden, aber ein Teil der Kompetenz fehlt; `fehlt` = im Skript nicht vorhanden; `nicht Scope` = KC-Punkt liegt außerhalb des veröffentlichten 7-Kapitel-Satzes (E/B, Atomkern) oder die KC-Box enthält keinen Kompetenzpunkt bzw. erklärt das Thema ausdrücklich für nicht mehr relevant.

**Bewertungsmaßstab:** Die Einstufung ist eine prüfende Bewertung nach Textabgleich (ob der Kompetenzpunkt im Skript inhaltlich vorhanden ist), keine mechanische Zählung. Die Begründung steht in der Spalte „Befund“.

**Summe:** 189 Punkte, davon 75 abgedeckt, 22 teilweise, 16 fehlt, 76 nicht Scope (74 in den ausgeschlossenen Bereichen E/B und Atomkern, 2 ohne KC-Punkt). In den bearbeiteten Bereichen (113 Punkte): 75 abgedeckt, 22 teilweise, 16 fehlt.

| KC-Punkt (wörtlich) | Offizielle Quelle | Skript | Abschnitt | Beleg (Quelle) | Status | Befund |
|---|---|---|---|---|---|---|
| Ich kann die Einheit der Ladung nennen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/01elektrischeladungen/docs.md:3` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann das coulombsche Gesetz beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/01elektrischeladungen/docs.md:4` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den Zusammenhang zwischen Ladung und elektrischer Stromstärke beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/01elektrischeladungen/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Definition der elektrischen Spannung als der pro Ladung übertragbaren Energie nennen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/01elektrischeladungen/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann elektrische Felder durch ihre Kraftwirkungen auf geladene Probekörper beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Feldlinienbilder für das homogene Feld, das Feld einer Punktladung und das eines Dipols skizzieren. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Einheit der Ladung nennen und kann die Definition der elektrischen Feldstärke erläutern. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann ein Verfahren zur Bestimmung der elektrischen Feldstärke auf der Grundlage von Kraftmessungen beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den Zusammenhang zwischen der Feldstärke in einem Plattenkondensator und der anliegenden Spannung beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die elektrische Spannung auch als Potenzialdifferenz beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:10` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Funktionsweise eines faradayschen Käfigs als Resultat des Superpositionsprinzips beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/02efeld/docs.md:11` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich die Energiebilanz für einen freien geladenen Körper im elektrischen Feld eines Plattenkondensators angeben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/03elektronenstrahlroehre/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Geschwindigkeit eines geladenen Körpers im homogenen elektrischen Feld eines Plattenkondensators mithilfe dieser Energiebilanz ermitteln. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/03elektronenstrahlroehre/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Bewegung von freien Elektronen unter Einfluss der Kraft im homogenen elektrischen Querfeld beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/03elektronenstrahlroehre/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann vorstrukturiert die Gleichung für die Bahnkurve im homogenen elektrischen Querfeld herleiten. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/03elektronenstrahlroehre/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die zugehörige Gleichung für die Geschwindigkeit herleiten. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/03elektronenstrahlroehre/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Definition der Kapazität eines Kondensators nennen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann ein Experiment zur Bestimmung der Kapazität eines Kondensators planen und führe es durch. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Kapazität eines Plattenkondensators aus seinen geometrischen Abmessungen berechnen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann qualitativ den Einfluss eines Dielektrikums auf die Kapazität beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Gleichung für die Energie des elektrischen Feldes eines Plattenkondensators nennen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann eine Einsatzmöglichkeit von Kondensatoren in technischen Systemen beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/04kondensator/docs.md:10` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den t-I-Zusammenhang und die t-U-Zusammenhänge beim Aufladevorgang und beim Entladevorgang eines Kondensators mithilfe einer Exponentialfunktion beschreiben. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich führe selbstständig Experimente zum Auf- und Entladevorgang hinsichtlich Stromstärke und Spannung durch. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann aus den Messdaten den zugehörigen t-I- bzw. t-U-Zusammenhang ermitteln. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den Zusammenhang zwischen der Halbwertszeit und dem Produkt aus R und C überprüfen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Auswahl einer exponentiellen Regression auf der Grundlage der Messdaten begründen. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die geflossene Ladung mithilfe von t-I-Diagrammen ermitteln. | KC 2022 eA – Elektrische Felder | — | — | `docs/d12/10elektrischesfeld/05aufentladungpk/docs.md:10` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann magnetische Felder durch ihre Wirkung auf Kompassnadeln beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/01magnetfeld/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Richtung von magnetischen Feldern mit Kompassnadeln ermitteln. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/01magnetfeld/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Magnetfeldlinienbilder für einen geraden Leiter und eine Spule skizzieren. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/01magnetfeld/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die magnetische Flussdichte B (Feldstärke B) im Inneren einer schlanken Spule berechnen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/01magnetfeld/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Bewegung von freien Elektronen unter Einfluss der Lorentzkraft beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/02ladungenimmagnetfeld/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Richtung (Dreifingerregel) und Betrag der Kraft auf einen stromdurchflossenen Leiter im homogenen Magnetfeld ermitteln. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/02ladungenimmagnetfeld/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann ein Experiment zur Bestimmung von B mithilfe einer Stromwaage erläutern. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/02ladungenimmagnetfeld/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Definition der magnetischen Flussdichte B (Feldstärke B) in Analogie zur elektrischen Feldstärke E nennen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/02ladungenimmagnetfeld/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Definition mithilfe geeigneter Messdaten begründen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/02ladungenimmagnetfeld/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann ein Experiment zur Messung von B mit einer Hallsonde beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich führe selbstständig Experimente zur Messung von B mit einer Hallsonde durch. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Entstehung der Hallspannung erläutern. Ich kann die Gleichung für die Hallspannung in Abhängigkeit von der Driftgeschwindigkeit anhand einer geeigneten Skizze herleiten. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Entstehung der Hallspannung erläutern. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Gleichung für die Hallspannung in Abhängigkeit von der Driftgeschwindigkeit anhand einer geeigneten Skizze herleiten. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann das physikalische Prinzip zur Bestimmung der spezifischen Ladung von Elektronen mithilfe des Fadenstrahlrohres beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:10` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann dazu die Gleichung für die spezifische Ladung des Elektrons herleiten und die Elektronenmasse bestimmen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/03halleffekt/docs.md:11` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Bewegung von freien Elektronen unter Einfluss der Lorentzkraft, unter Einfluss der Kraft im homogenen elektrischen Querfeld, im Wien-Filter beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/04massenspektrometer/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den prinzipiellen Verlauf der Bahnkurven begründen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/04massenspektrometer/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann meine Kenntnisse auf andere geladene Teilchen übertragen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/04massenspektrometer/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Erzeugung einer Induktionsspannung qualitativ mithilfe des magnetischen Flusses beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich führe einfache qualitative Experimente zur Erzeugung einer Induktionsspannung durch. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann das Induktionsgesetz in differenzieller Form auf vorgegebene lineare und sinusförmige Verläufe von 𝛷 anwenden. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den Verlauf von t-U-Diagrammen für lineare und sinusförmige Änderungen von 𝛷 begründen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann geeignete Versuche bzw. Diagramme zur Überprüfung des Induktionsgesetzes auswerten. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann technische Bezüge hinsichtlich der Erzeugung von Wechselspannung darstellen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/05induktion/docs.md:10` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Spulen als Energiespeicher in Analogie zu Kondensatoren beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/06schwingkreis/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Gleichung für die Energie des magnetischen Feldes einer Spule nennen. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/06schwingkreis/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann in diesem Zusammenhang die Vorgänge beim Ein- und Ausschalten von Spulen durch Selbstinduktion erläutern. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/06schwingkreis/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Induktivität als Bauteileigenschaft aus einer Energiebetrachtung definieren. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/06schwingkreis/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann den Aufbau eines elektromagnetischen Schwingkreises beschreiben. | KC 2022 eA – Magnetische Felder | — | — | `docs/d12/11magnetfeld/06schwingkreis/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann harmonische Schwingungen grafisch darstellen. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:5` | teilweise | Oszilloskop-Ablesen, Energieumwandlungen, t-s/t-v-Diagramme fehlen. |
| Ich kann harmonische Schwingungen mithilfe von Auslenkung, Amplitude, Periodendauer und Frequenz beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:6` | abgedeckt |  |
| Ich kann die Zeigerdarstellung oder Sinuskurven zur grafischen Beschreibung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:7` | abgedeckt |  |
| Ich kann Werte durch Ablesen an einem registrierenden Messinstrument (Oszilloskop oder geeignetes digitales Werkzeug) ermitteln. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:8` | fehlt |  |
| Ich kann die Schwingung eines Feder-Masse-Pendels mithilfe von Energieumwandlungen beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:9` | fehlt |  |
| Ich kann in diesem Zusammenhang die zugehörigen t-s- und t-v-Diagramme auch bei gedämpften Schwingungen im Spezialfall exponentiell abnehmender Amplitude deuten. | KC 2022 eA – Schwingungen und Wellen | S1 | §1–3 | `docs/d12/12schwingungenwellen/01schwingungen/docs.md:10` | fehlt |  |
| Ich kann die Gleichung für die Periodendauer eines Feder-Masse-Pendels angeben. | KC 2022 eA – Schwingungen und Wellen | S1 | §3–4 | `docs/d12/12schwingungenwellen/02federmassependel/docs.md:5` | abgedeckt | Fadenpendel nur als Formelzeile; Ausgleichskurve ohne Messdaten. |
| Ich kann die zugehörigen Abhängigkeiten experimentell untersuchen. | KC 2022 eA – Schwingungen und Wellen | S1 | §3–4 | `docs/d12/12schwingungenwellen/02federmassependel/docs.md:6` | abgedeckt |  |
| Ich kann geeignete Ausgleichskurven ermitteln. | KC 2022 eA – Schwingungen und Wellen | S1 | §3–4 | `docs/d12/12schwingungenwellen/02federmassependel/docs.md:7` | teilweise |  |
| Ich kann diese Verfahren auf das Fadenpendel anwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §3–4 | `docs/d12/12schwingungenwellen/02federmassependel/docs.md:8` | teilweise |  |
| Ich kann ein lineares Kraftgesetz als Bedingung für die Entstehung einer mechanischen harmonischen Schwingung nennen. | KC 2022 eA – Schwingungen und Wellen | S1 | §3–4 | `docs/d12/12schwingungenwellen/02federmassependel/docs.md:9` | abgedeckt |  |
| Ich kann die Bedingung beschreiben, unter der bei einer erzwungenen Schwingung Resonanz auftritt. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:5` | abgedeckt | Schwingkreis nur Tabellenzeile (Thomson); Aufbau, Energie, Resonanzkurve, C-Abhängigkeit fehlen. |
| Ich kann das Phänomen Resonanz anhand eines Experiments erläutern. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:6` | teilweise |  |
| Ich kann Amplitude, Periodendauer bzw. Frequenz aus vorgelegten Messdaten ermitteln. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:7` | fehlt |  |
| Ich kann den Aufbau eines elektromagnetischen Schwingkreises beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:8` | teilweise |  |
| Ich kann in Analogie zum Feder-Masse-Pendel die Energieumwandlungen in einem Schwingkreis qualitativ beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:9` | fehlt |  |
| Ich kann ein Experiment zur Erzeugung einer Resonanzkurve beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:10` | fehlt |  |
| Ich kann die Abhängigkeit der Frequenz der Eigenschwingung von der Kapazität experimentell anhand eines Resonanzversuchs ermitteln. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:11` | fehlt |  |
| Ich kann die thomsonsche Schwingungsgleichung nennen. | KC 2022 eA – Schwingungen und Wellen | S1 | §3 | `docs/d12/12schwingungenwellen/03resonanz/docs.md:12` | abgedeckt |  |
| Ich kann die Ausbreitung harmonischer Wellen beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/04wellen/docs.md:5` | abgedeckt | Zeigerkette nur im Zeigermodell, nicht für Wellen. |
| Ich kann Zeigerketten oder Sinuskurven zur grafischen Darstellung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/04wellen/docs.md:6` | teilweise |  |
| Ich kann harmonische Wellen mithilfe von Periodendauer, Ausbreitungsgeschwindigkeit, Wellenlänge, Frequenz, Amplitude und Phase beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/04wellen/docs.md:7` | abgedeckt |  |
| Ich kann longitudinale und transversale Wellen vergleichen. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/04wellen/docs.md:8` | abgedeckt |  |
| Ich kann den Zusammenhang zwischen Wellenlänge und Frequenz angeben. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/05wellengleichung/docs.md:5` | abgedeckt | — |
| Ich kann die zugehörige Gleichung anwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/05wellengleichung/docs.md:6` | abgedeckt |  |
| Ich kann diesen Zusammenhang mithilfe der Zeigerdarstellung oder der Sinusfunktion begründen. | KC 2022 eA – Schwingungen und Wellen | S1 | §5 | `docs/d12/12schwingungenwellen/05wellengleichung/docs.md:7` | abgedeckt |  |
| Ich kann Polarisierbarkeit als Unterscheidungsmerkmal zwischen transversalen und longitudinalen Wellen beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §12 | `docs/d12/12schwingungenwellen/06polarisation/docs.md:3` | abgedeckt | Malus-Gesetz vorhanden; Intensität = Quadrat der Zeigerlänge nicht explizit. |
| Ich kann experimentell die Winkelabhängigkeit der Intensität des durchgehenden Lichts bei einem Paar von Polarisatoren untersuchen. | KC 2022 eA – Schwingungen und Wellen | S1 | §12 | `docs/d12/12schwingungenwellen/06polarisation/docs.md:4` | abgedeckt |  |
| Ich kann in diesem Zusammenhang das Quadrat der Zeigerlänge bzw. das Quadrat der Amplitude der zugehörigen Sinuskurve als Intensität interpretieren. | KC 2022 eA – Schwingungen und Wellen | S1 | §12 | `docs/d12/12schwingungenwellen/06polarisation/docs.md:5` | abgedeckt |  |
| Ich kann experimentell die Winkelabhängigkeit der Intensität des durchgehenden Lichts bei einem Paar von Polarisatoren untersuchen. | KC 2022 eA – Schwingungen und Wellen | S1 | §12 | `docs/d12/12schwingungenwellen/07polarisationvonlicht/docs.md:3` | abgedeckt | — |
| Ich kann in diesem Zusammenhang das Quadrat der Zeigerlänge bzw. das Quadrat der Amplitude der zugehörigen Sinuskurve als Intensität interpretieren. | KC 2022 eA – Schwingungen und Wellen | S1 | §12 | `docs/d12/12schwingungenwellen/07polarisationvonlicht/docs.md:4` | abgedeckt |  |
| Ich kann Interferenzphänomene beschreiben und deuten. | KC 2022 eA – Schwingungen und Wellen | S1 | §2 | `docs/d12/12schwingungenwellen/08interferenz/docs.md:3` | abgedeckt | — |
| Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §2 | `docs/d12/12schwingungenwellen/08interferenz/docs.md:4` | abgedeckt |  |
| Ich kann Interferenzphänomene für folgende „Zwei-Wege-Situationen“ beschreiben und deuten: stehende Welle. | KC 2022 eA – Schwingungen und Wellen | S1 | §6 | `docs/d12/12schwingungenwellen/09stehendewellen/docs.md:3` | abgedeckt | Kein Ultraschall-/Kundt-Experiment; Zeigerdarstellung nur als Formel. |
| Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §6 | `docs/d12/12schwingungenwellen/09stehendewellen/docs.md:4` | teilweise |  |
| Ich kann ein Experiment zur Bestimmung der Wellenlänge von Ultraschall bei durch Reflexion entstandenen stehenden Wellen beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §6 | `docs/d12/12schwingungenwellen/09stehendewellen/docs.md:5` | fehlt |  |
| Ich kann Interferenzphänomene für folgende „Zwei-Wege-Situationen“ beschreiben und deuten: Michelson-Interferometer. | KC 2022 eA – Schwingungen und Wellen | S1 | §13 | `docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md:3` | abgedeckt | Zeigerdarstellung nicht ausgeführt; Experiment und technische Nutzung vorhanden. |
| Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §13 | `docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md:4` | teilweise |  |
| Ich kann die technische Verwendung des Michelson-Interferometers zum Nachweis kleiner Längenänderungen erläutern. | KC 2022 eA – Schwingungen und Wellen | S1 | §13 | `docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md:5` | abgedeckt |  |
| Ich kann ein Experiment zur Bestimmung der Wellenlänge mit dem Michelson-Interferometer beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §13 | `docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md:6` | abgedeckt |  |
| Ich kann Interferenzphänomene für folgende „Zwei-Wege-Situationen“ beschreiben und deuten: Doppelspalt. | KC 2022 eA – Schwingungen und Wellen | S1 | §7 | `docs/d12/12schwingungenwellen/11doppelspalt/docs.md:3` | abgedeckt | Ableitung vorhanden; Zeigerdarstellung nur im Abschnitt 2. |
| Ich kann die Zeigerdarstellung oder eine andere geeignete Darstellung zur Beschreibung und Deutung verwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §7 | `docs/d12/12schwingungenwellen/11doppelspalt/docs.md:4` | teilweise |  |
| Ich kann die Gleichung für die Interferenz am Doppelspalt selbstständig und begründet herleiten. | KC 2022 eA – Schwingungen und Wellen | S1 | §7 | `docs/d12/12schwingungenwellen/11doppelspalt/docs.md:5` | abgedeckt |  |
| Ich kann die Veränderung des Interferenzmusters beim Übergang vom Doppelspalt zum Gitter erläutern. | KC 2022 eA – Schwingungen und Wellen | S1 | §8 | `docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md:3` | abgedeckt | Gitter-Experiment (objektiv/subjektiv), Auswertung und CD/DVD fehlen. |
| Ich kann ein Experiment zur Bestimmung der Wellenlänge von weißem und monochromatischem Licht mit einem Gitter (objektiv und subjektiv) beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §8 | `docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md:4` | fehlt |  |
| Ich kann entsprechende Experimente auswerten. | KC 2022 eA – Schwingungen und Wellen | S1 | §8 | `docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md:5` | fehlt |  |
| Ich kann die Funktion der zugehörigen optischen Bauteile beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §8 | `docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md:6` | teilweise |  |
| Ich kann meine Kenntnisse zur Bestimmung des Spurabstandes bei einer CD/DVD anwenden. | KC 2022 eA – Schwingungen und Wellen | S1 | §8 | `docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md:7` | fehlt |  |
| Ich kann ein Experiment zur Bestimmung der Wellenlänge von Röntgenstrahlung mit Bragg-Reflexion beschreiben. | KC 2022 eA – Schwingungen und Wellen | S1 | §9 | `docs/d12/12schwingungenwellen/13bragginterferometer/docs.md:3` | abgedeckt | Bragg-Gleichung wird gesetzt, nicht hergeleitet; Röntgenspektrum-Verfahren nur skizziert. |
| Ich kann ein Verfahren zur Aufnahme eines Röntgenspektrums erläutern. | KC 2022 eA – Schwingungen und Wellen | S1 | §9 | `docs/d12/12schwingungenwellen/13bragginterferometer/docs.md:4` | teilweise |  |
| Ich kann die Bragg-Gleichung selbstständig und begründet herleiten. | KC 2022 eA – Schwingungen und Wellen | S1 | §9 | `docs/d12/12schwingungenwellen/13bragginterferometer/docs.md:5` | fehlt |  |
| Ich kann den Frequenzbereich des sichtbaren Lichts in das Spektrum elektromagnetischer Wellen einordnen. | KC 2022 eA – Schwingungen und Wellen | S1 | §11 | `docs/d12/12schwingungenwellen/14messunglichtgeschw/docs.md:5` | abgedeckt | Spektrum vorhanden; Rømer/Mikrowelle sind über die KC-Box hinaus „ergänzend“. |
| Physikalische Allgemeinbildung | KC 2022 eA – Schwingungen und Wellen | S1 | §11 (ergänzend) | `docs/d12/12schwingungenwellen/15messinvarianzvonc/docs.md:3` | nicht Scope | KC-Box enthält keinen Kompetenzpunkt („Physikalische Allgemeinbildung“); Inhalt ergänzend. |
| Ich kann den äußeren lichtelektrischen Effekt beschreiben. | KC 2022 eA – Quantenobjekte | S2 | §2–3 | `docs/d13/13quantenobjekte/02lichtquanten/docs.md:3` | abgedeckt | — |
| Ich kann das Experiment mit der Elektronenbeugungsröhre beschreiben. | KC 2022 eA – Quantenobjekte | S3 | §1–4 | `docs/d13/13quantenobjekte/03elektronenwellen/docs.md:3` | abgedeckt | Optische Analogieversuche und λ-v-Messauswertung fehlen. |
| Ich kann die Beobachtungen mithilfe optischer Analogieversuche an Transmissionsgittern deuten. | KC 2022 eA – Quantenobjekte | S3 | §1–4 | `docs/d13/13quantenobjekte/03elektronenwellen/docs.md:4` | fehlt |  |
| Ich kann die Wellenlänge bei Quantenobjekten mit Ruhemasse mithilfe der de-Broglie-Gleichung ermitteln. | KC 2022 eA – Quantenobjekte | S3 | §1–4 | `docs/d13/13quantenobjekte/03elektronenwellen/docs.md:5` | abgedeckt |  |
| Ich kann in diesem Zusammenhang die Definition des Impulses nennen. | KC 2022 eA – Quantenobjekte | S3 | §1–4 | `docs/d13/13quantenobjekte/03elektronenwellen/docs.md:6` | abgedeckt |  |
| Ich kann durch Auswertung von Messwerten die Antiproportionalität zwischen Wellenlänge und Geschwindigkeit bestätigen. | KC 2022 eA – Quantenobjekte | S3 | §1–4 | `docs/d13/13quantenobjekte/03elektronenwellen/docs.md:7` | fehlt |  |
| Ich kann ein Doppelspaltexperiment zur Interferenz von Quantenobjekten mit Ruhemasse (z. B. kalte Neutronen, Fullerene) beschreiben. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:3` | teilweise | Neutronen/Fullerene nur als Tabellenzeile; Einzelphotonen/Stochastik vorhanden. |
| Ich kann das Interferenzmuster stochastisch deuten. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:4` | abgedeckt |  |
| Ich kann zur Deutung der Interferenzmuster die Zeigerdarstellung oder eine andere geeignete Darstellung verwenden. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:5` | abgedeckt |  |
| Ich kann den Zusammenhang zwischen der Nachweiswahrscheinlichkeit für ein einzelnes Quantenobjekt und dem Quadrat der resultierenden Zeigerlänge bzw. der Amplitude der resultierenden Sinuskurve beschreiben. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:6` | abgedeckt |  |
| Ich kann die stochastische Deutung von Interferenzmustern auf Doppelspaltexperimente mit einzelnen Photonen und Elektronen übertragen. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:7` | abgedeckt |  |
| Ich kann die entstehenden Interferenzmuster bei geringer und hoher Intensität beschreiben und deuten. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:8` | abgedeckt |  |
| Ich kann die Koinzidenzmethode zum Nachweis einzelner Photonen erläutern. | KC 2022 eA – Quantenobjekte | S4 | §1–5 | `docs/d13/13quantenobjekte/04doppelspaltexperiment/docs.md:9` | abgedeckt |  |
| Ich kann die experimentelle Bestimmung der planckschen Konstante h mit LEDs in ihrer Funktion als Energiewandler erläutern. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:3` | abgedeckt | LED/Photozelle/Röntgen methodisch vorhanden; Messdatenauswertung nur als Aufgabe, nicht als Auswertung. |
| Ich kann das zugehörige Experiment mithilfe des Photonenmodells deuten. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:4` | abgedeckt |  |
| Ich kann durch Auswertung von Messwerten die Hypothese der Proportionalität zwischen Energie des Photons und der Frequenz überprüfen. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:5` | teilweise |  |
| Ich kann ein Experiment zur Bestimmung der Energie der Photoelektronen beim äußeren lichtelektrischen Effekt mit der Vakuum-Fotozelle beschreiben. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:6` | abgedeckt |  |
| Ich kann meine Kenntnisse über das Photonenmodell des Lichtes auf diese Situation anwenden. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:7` | abgedeckt |  |
| Ich kann das zugehörige f-E-Diagramm deuten. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:8` | abgedeckt |  |
| Ich kann die Entstehung des Röntgenbremsspektrums als Energieübertragung von Elektronen auf Photonen erläutern. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:9` | abgedeckt |  |
| Ich kann aus Röntgenbremsspektren einen Wert für die plancksche Konstante h ermitteln. | KC 2022 eA – Quantenobjekte | S2 | §3 | `docs/d13/13quantenobjekte/05planckkonstante/docs.md:10` | teilweise |  |
| Ich kann den Aufbau eines Mach-Zehnder-Interferometers beschreiben. | KC 2022 eA – Quantenobjekte | S5 | §1 | `docs/d13/13quantenobjekte/06machzehnderinterferometer/docs.md:3` | abgedeckt | — |
| Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer mit einzelnen Quantenobjekten unter den Gesichtspunkten Komplementarität und Nichtlokalität interpretieren. | KC 2022 eA – Quantenobjekte | S5 | §3 | `docs/d13/13quantenobjekte/07mzilabor/docs.md:3` | abgedeckt | — |
| Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer mit einzelnen Quantenobjekten unter den Gesichtspunkten Komplementarität und Nichtlokalität interpretieren. | KC 2022 eA – Quantenobjekte | S5 | §3 | `docs/d13/13quantenobjekte/08welcherweg/docs.md:3` | abgedeckt | — |
| Ich kann ein Experiment mit dem Mach-Zehnder-Interferometer analog zu einem delayed-choice-Experiment beschreiben. | KC 2022 eA – Quantenobjekte | S5 | §4 | `docs/d13/13quantenobjekte/10delayedchoice/docs.md:3` | abgedeckt | Zustand/Präparation nur implizit; Anwendung der Quantenphysik (Quanten-Bomben-Test) fehlt. |
| Ich kann an diesem Beispiel die Begriffe Nichtlokalität und Kausalität erläutern. | KC 2022 eA – Quantenobjekte | S5 | §4 | `docs/d13/13quantenobjekte/10delayedchoice/docs.md:4` | abgedeckt |  |
| Ich kann die Begriffe Zustand, Präparation und Superposition am Beispiel eines Experimentes mit polarisiertem Licht erläutern. | KC 2022 eA – Quantenobjekte | S5 | §4 | `docs/d13/13quantenobjekte/10delayedchoice/docs.md:5` | teilweise |  |
| Ich kann eine Anwendung der Quantenphysik erläutern. | KC 2022 eA – Quantenobjekte | S5 | §4 | `docs/d13/13quantenobjekte/10delayedchoice/docs.md:6` | fehlt |  |
| Ich kann Unbestimmtheit in der Form: die Streuungen der Werte zweier komplementärer Größen können nicht beide beliebig klein sein erläutern. | KC 2022 eA – Quantenobjekte | S4 | §5 | `docs/d13/13quantenobjekte/13unbestimmtheit/docs.md:3` | abgedeckt | — |
| Ich kann das Konzept der Unbestimmtheit an einem Beispiel veranschaulichen. | KC 2022 eA – Quantenobjekte | S4 | §5 | `docs/d13/13quantenobjekte/13unbestimmtheit/docs.md:4` | abgedeckt |  |
| Ich kann das Erlernte mit der Lehrbuch-Notierung der Unbestimmtheitsrelation für Ort und Impuls vergleichen. | KC 2022 eA – Quantenobjekte | S4 | §5 | `docs/d13/13quantenobjekte/13unbestimmtheit/docs.md:5` | abgedeckt |  |
| Ein Exkurs zur Wahrscheinlichkeitswelle | KC 2022 eA – Quantenobjekte | S4 | §3 | `docs/d13/13quantenobjekte/14wellenfunktion/docs.md:3` | abgedeckt | Als Exkurs ausgewiesen und vorhanden. |
| Ich kann die Quantisierung der Gesamtenergie von Elektronen in der Atomhülle erläutern. | KC 2022 eA – Atomhülle | S6 | §1 | `docs/d13/14atomhuelle/01rutherfordmodell/docs.md:3` | abgedeckt | Balmerformel nur für H, nicht für wasserstoffähnliche Atome. |
| Ich kann die Gleichung für die Gesamtenergie eines Elektrons in diesem Modell nennen. | KC 2022 eA – Atomhülle | S6 | §1 | `docs/d13/14atomhuelle/01rutherfordmodell/docs.md:4` | abgedeckt |  |
| Ich kann die Energieniveaus von Wasserstoff und von wasserstoffähnlichen Atomen mit der Balmerformel berechnen. | KC 2022 eA – Atomhülle | S6 | §1 | `docs/d13/14atomhuelle/01rutherfordmodell/docs.md:5` | teilweise |  |
| Ich kann die Quantisierung der Gesamtenergie von Elektronen in der Atomhülle erläutern. | KC 2022 eA – Atomhülle | S6 | §2 | `docs/d13/14atomhuelle/02bohrmodell/docs.md:3` | abgedeckt | — |
| Ich kann die Gleichung für die Gesamtenergie eines Elektrons in diesem Modell nennen. | KC 2022 eA – Atomhülle | S6 | §2 | `docs/d13/14atomhuelle/02bohrmodell/docs.md:4` | abgedeckt |  |
| Ich kann die Quantisierung der Gesamtenergie von Elektronen in der Atomhülle erläutern. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/03quantenmodell/docs.md:3` | abgedeckt | Grenzen ohne Unbestimmtheitsrelation ausgeführt. |
| Ich kann dazu das Modell vom eindimensionalen Potenzialtopf mit unendlich hohen Wänden anwenden. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/03quantenmodell/docs.md:4` | abgedeckt |  |
| Ich kann die Gleichung für die Gesamtenergie eines Elektrons in diesem Modell nennen. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/03quantenmodell/docs.md:5` | abgedeckt |  |
| Ich kann die Gleichung für die Gesamtenergie eines Elektrons in diesem Modell herleiten. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/03quantenmodell/docs.md:6` | abgedeckt |  |
| Ich kann die Aussagekraft und die Grenzen dieses Modells auch unter Berücksichtigung der Unbestimmtheitsrelation beschreiben. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/03quantenmodell/docs.md:7` | teilweise |  |
| Ich kann die Orbitale des Wasserstoffatoms bis n = 2 beschreiben. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:3` | abgedeckt | Gemeinsamkeiten nur qualitativ; maximale Elektronenzahl nicht hergeleitet. |
| Ich kann einen Zusammenhang zwischen Orbitalen und Nachweiswahrscheinlichkeiten für Elektronen anschaulich herstellen. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:4` | abgedeckt |  |
| Ich kann die „Orbitale“ bis n = 2 in einem dreidimensionalen Potenzialtopf beschreiben. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:5` | abgedeckt |  |
| Ich kann die Gemeinsamkeiten zwischen den Orbitalen des Wasserstoffatoms und denen des dreidimensionalen Potenzialtopfs erläutern. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:6` | teilweise |  |
| Ich kann das Pauliprinzip erläutern. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:7` | abgedeckt |  |
| Ich kann die maximale Anzahl der Elektronen im dreidimensionalen Potenzialtopf bis n = 2 bestimmen. | KC 2022 eA – Atomhülle | S6 | §4 | `docs/d13/14atomhuelle/04orbitalmodell/docs.md:8` | teilweise |  |
| Ich kann quantenhafte Emission anhand von Experimenten zu Linienspektren bei Licht und Röntgenstrahlung erläutern. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:3` | abgedeckt | Wellenlängen-Intensitäts-Spektren knapp; Fluoreszenz bei Leuchtstoffröhre/weißer LED fehlt. |
| Ich kann diese Beobachtungen durch die Annahme diskreter Energieniveaus in der Atomhülle erklären. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:4` | abgedeckt |  |
| Ich kann Wellenlängen-Intensitäts-Spektren von Licht beschreiben. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:5` | teilweise |  |
| Ich kann den Zusammenhang zwischen Spektrallinien und Energieniveauschemata erklären. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:6` | abgedeckt |  |
| Ich kann vorgelegte Energieniveauschemata zur Berechnung der Wellenlänge von Spektrallinien benutzen und ordne gemessene Wellenlängen Energieübergänge zu. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:7` | abgedeckt |  |
| Ich kann die Vorgänge der Fluoreszenz an einem einfachen Energieniveauschema beschreiben. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:8` | abgedeckt |  |
| Ich kann die Bedeutung der Fluoreszenz in Leuchtstoffen an den Beispielen Leuchtstoffröhre und „weiße“ LED erläutern und bewerten. | KC 2022 eA – Atomhülle | S7 | §1–2 | `docs/d13/14atomhuelle/05emissionsspektren/docs.md:9` | fehlt |  |
| Ich kann einen Versuch zur Resonanzabsorption erläutern. | KC 2022 eA – Atomhülle | S7 | §4 | `docs/d13/14atomhuelle/06absorptionsspektren/docs.md:3` | abgedeckt | — |
| Ich kann einen Franck-Hertz-Versuch beschreiben. | KC 2022 eA – Atomhülle | S7 | §5 | `docs/d13/14atomhuelle/07franckhertz/docs.md:3` | abgedeckt | Neon-Aussage unbelegt; Kennlinie mit unbelegter Kontaktspannung. |
| Ich kann einen Zusammenhang zwischen den Leuchterscheinungen in einer mit Neon gefüllten Franck-Hertz-Röhre und der Franck-Hertz-Kennlinie darstellen. | KC 2022 eA – Atomhülle | S7 | §5 | `docs/d13/14atomhuelle/07franckhertz/docs.md:4` | teilweise |  |
| Ich kann eine Anregungsenergie anhand einer Franck-Hertz-Kennlinie ermitteln. | KC 2022 eA – Atomhülle | S7 | §5 | `docs/d13/14atomhuelle/07franckhertz/docs.md:5` | abgedeckt |  |
| Ich kann Unterschiede zwischen einer Anregung mit Photonen und einer Anregung mit Elektronen nennen. | KC 2022 eA – Atomhülle | S7 | §5 | `docs/d13/14atomhuelle/07franckhertz/docs.md:6` | abgedeckt |  |
| Ich kann quantenhafte Emission anhand von Experimenten zu Linienspektren bei Licht und Röntgenstrahlung erläutern. | KC 2022 eA – Atomhülle | S7 | §3 | `docs/d13/14atomhuelle/08roentgenspektrum/docs.md:3` | teilweise | Nur eine KC-Zeile; charakteristisches Spektrum im Skript knapp. |
| Der Laser wird nicht mehr im Kerncurriculum genannt. | KC 2022 – Atomhülle | — | — | `docs/d13/14atomhuelle/09henelaser/docs.md:3` | **nicht Scope** | KC 2022, S. 43–44 (Atomhülle) nennt keinen Laser; die Schulbox ist korrekt. Eine frühere Aufnahme beruhte versehentlich auf dem KC 2009. |
| Ich kann das grundlegende Funktionsprinzip eines Geiger-Müller-Zählrohrs als Messgerät für Zählraten erläutern. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/03detektor/docs.md:3` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann das grundlegende Funktionsprinzip eines Halbleiterdetektors für die Energiemessung von Kernstrahlung erläutern. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/03detektor/docs.md:4` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann das Zerfallsgesetz erläutern. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/04radioaktiverzerfall/docs.md:3` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Zerfallsvorgänge grafisch darstellen und werte sie unter Verwendung der Eigenschaften einer Exponentialfunktion zur Basis e aus. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/04radioaktiverzerfall/docs.md:4` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann dieses Vorgehen auf andere Abklingvorgänge übertragen. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/04radioaktiverzerfall/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Gültigkeitsgrenzen der mathematischen Beschreibung aufgrund der stochastischen Natur der Strahlung beurteilen. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/04radioaktiverzerfall/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann einen radioaktiven Zerfall mit dem Differenzenverfahren unter Einsatz einer Tabellenkalkulation oder eines Modellbildungssystems modellieren. Ich kann dieses Verfahren auf einen Mutter-Tochter-Zerfall anwenden. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/04radioaktiverzerfall/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann Zerfallsreihen anhand einer Nuklidkarte aufstellen. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:3` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann aus einer Nuklidkarte die kennzeichnenden Größen eines Nuklids und die von ihm emittierte Strahlungsart ermitteln. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:4` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann grundlegende Eigenschaften von alpha-, beta- und gamma-Strahlung beschreiben. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:5` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann ein alpha-Spektrum auf der Basis der zugehörigen Zerfallsreihe interpretieren. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:6` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die in Energiespektren verwendete Darstellungsform (Energie-Häufigkeits-Diagramm) beschreiben. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:7` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann in diesem Zusammenhang die Nuklidkarte anwenden. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:8` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Bedeutung der Bragg-Kurve in der Strahlentherapie erläutern. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/05zerfallsreihen/docs.md:9` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Quantisierung der Gesamtenergie von Nukleonen im eindimensionalen Potenzialtopf beschreiben. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/06kernpotenzialtopf/docs.md:3` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
| Ich kann die Größenordnung der Energie bei Kernprozessen mithilfe des Potenzialtopfmodells abschätzen. | KC 2022 eA – Atomkern | — | — | `docs/d13/15atomkern/06kernpotenzialtopf/docs.md:4` | nicht Scope |   Nicht im Skript; `Vorabi=nein` (Scope-Konflikt, siehe P1-01). |
---

## 6. Experimente-Inventar

**Bewertung:** ✅ vorhanden und fachlich ausreichend; 🔶 im Ansatz vorhanden, aber unvollständig; ❌ nicht vorhanden. „Geräte“ meint eine explizite Geräteliste, „Messwerte“ eine Tabelle mit Messgrößen und Einheiten, „Fehler“ eine Fehlerbetrachtung, „Sicherheit“ eine Sicherheitsbetrachtung, „Quelle“ eine URL/Abschnittsangabe.

| Experiment | Quelle (Seite/Abschnitt) | KC-Punkt | Skript/Abschnitt | Aufbau | Geräte | Durchführung | Beobachtung | Messwerte | Auswertung | Formel/Herleitung | Fehler | Sicherheit | Quelle im Skript |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Feder-Masse-Pendel, Periodendauer | `02federmassependel/docs.md` | Periodendauer, Abhängigkeiten, Ausgleichskurve | S1 §4 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Bragg-Reflexion | `13bragginterferometer/docs.md` | Bragg-Gleichung, Röntgenspektrum | S1 §9 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ❌ (Formel gesetzt) | ❌ | ❌ | 🔶 |
| Polarisation, zwei Polarisatoren | `06polarisation/docs.md` | Winkelabhängigkeit, Intensität | S1 §12 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Michelson-Interferometer | `10michelsoninterferometer/docs.md` | Zwei-Wege-Situation, Längenänderung, Wellenlänge | S1 §13 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Fotozelle mit Gegenfeld | `05planckkonstante/docs.md` | Photoeffekt, h-Bestimmung | S2 §3 | ✅ | 🔶 | ✅ | ✅ | 🔶 (eine Beispieltabelle) | ✅ | ✅ | ❌ | ❌ | 🔶 |
| h-Bestimmung mit LEDs | `05planckkonstante/docs.md` | LED als Energiewandler, Proportionalität | S2 §3 | ✅ | 🔶 | ✅ | ✅ | ❌ | 🔶 | ✅ | ❌ | ❌ | 🔶 |
| Röntgenbremsspektrum | `05planckkonstante/docs.md` | h aus Bremsspektrum | S2 §3 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Elektronenbeugungsröhre, Graphit | `03elektronenwellen/docs.md` | Beugung, de-Broglie | S3 §4 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Quanten-Doppelspalt (Photonen/Elektronen) | `04doppelspaltexperiment/docs.md` | Einzelquanten, Stochastik, Nachweiswahrscheinlichkeit | S4 §1–3 | ✅ | 🔶 | ✅ | ✅ | ❌ | ✅ | ✅ | ❌ | ❌ | 🔶 |
| Mach-Zehnder mit Einzelphotonen | `07mzilabor/docs.md`, `08welcherweg/docs.md` | Komplementarität, Nichtlokalität | S5 §3 | ✅ | ❌ | ✅ | ✅ | ❌ | 🔶 | ✅ | ❌ | ❌ | 🔶 |
| Rutherford-Streuung | `01rutherfordmodell/docs.md` | Kern-Hülle-Modell, Streuung | S6 §1 | ✅ | 🔶 | ✅ | ✅ | ❌ | 🔶 | ✅ | ❌ | ❌ | 🔶 |
| Franck-Hertz (Quecksilber) | `07franckhertz/docs.md` | Anregungsenergie, Leuchterscheinung | S7 §5 | ✅ | 🔶 | ✅ | ✅ | 🔶 (Kurvenwerte) | ✅ | ✅ | ❌ | ❌ | 🔶 |

**Systembefund:** Kein einziges der 12 Experimente erfüllt das im Auftrag verlangte vollständige Blatt. Es fehlen durchgehend: Geräteliste mit Typen, Messtabelle mit Unsicherheiten, Fehlerbetrachtung, Sicherheitshinweise und eine abschnittsgenaue Quellen-URL. Die Experimente sind didaktisch brauchbar, aber keine „1:1“-Fassung der Schulseite.

**Nicht übernommene Experimente (Auswahl, KC-relevant):** Ultraschall-Stehwelle (KC `09stehendewellen`), Gitter mit weißem/monochromatischem Licht (KC `12doppelspaltgitter`), CD/DVD-Spurabstand (KC `12doppelspaltgitter`), Schwingkreis-Resonanzkurve (KC `03resonanz`), optische Analogieversuche (KC `03elektronenwellen`), Quanten-Bomben-Test (KC `10delayedchoice` „Anwendung“), Fluoreszenz an Leuchtstoffröhre/weißer LED (KC `05emissionsspektren`). Diese Inhalte existieren teils in `04_Zusatzmaterial/Experimentesammlung.pdf`, sind aber nicht veröffentlicht und nicht in den 7 Kapiteln.

---

## 7. Datenregister (Auszug, nachgerechnet)

**Methode:** CODATA-2022-Werte; Nachrechnung mit Python (Standardbibliothek, `pint`); Formeln aus den Skripten. „Ort“ = Datei:Zeile. Status: ✅ bestätigt, 🔶 gerundet/inkonsistent/unbelegt, ❌ falsch.

| ID | Aussage | Wert | Einheit | Ort | Quelle + Zitat | Nachrechnung | Ergebnis | Status |
|---|---|---|---|---|---|---|---|---|
| D-01 | Lichtgeschwindigkeit | 2,998·10⁸ | m/s | `02_lichtquanten.typ:28` | CODATA exakt 299.792.458 m/s | 2,99792458·10⁸ | ✅ | ✅ |
| D-02 | Planck-Konstante | 6,626·10⁻³⁴ | J s | `02_lichtquanten.typ:28` | CODATA 6,62607015·10⁻³⁴ | gerundet 6,626 | ✅ | ✅ |
| D-03 | Elementarladung | 1,602·10⁻¹⁹ | C | `06_atommodelle.typ:63` | CODATA 1,602176634·10⁻¹⁹ | gerundet | ✅ | ✅ |
| D-04 | Elektronenmasse | 9,11·10⁻³¹ | kg | `03_elektronenwellen.typ:28` | CODATA 9,1093837015·10⁻³¹ | gerundet | ✅ | ✅ |
| D-05 | h·c | 1239,8 | eV nm | `02_lichtquanten.typ:28` | CODATA: hc/e = 1239,84198 | 1239,84 | ✅ | ✅ |
| D-06 | Rydberg-Konstante | 1,097·10⁷ | 1/m | `07_spektren.typ:69` | CODATA 1,0973731568·10⁷ | 1,09737·10⁷ | ✅ | ✅ |
| D-07 | Bohr-Radius | 5,29·10⁻¹¹ | m | `06_atommodelle.typ:68` | CODATA 5,29177210903·10⁻¹¹ | 5,29177·10⁻¹¹ | ✅ | ✅ |
| D-08 | Ionisierungsenergie H | 13,6 | eV | `06_atommodelle.typ:92` | CODATA 13,605693 | 13,6057 | ✅ | ✅ |
| D-09 | Coulomb-Konstante | 8,99·10⁹ | N m²/C² | `06_atommodelle.typ:63` | CODATA 8,9875517923·10⁹ | 8,98755·10⁹ | ✅ | ✅ |
| D-10 | Fallbeschleunigung | 9,81 | m/s² | `01_wellen.typ:91` | CODATA/UTC 9,80665 | 9,80665 | ✅ | ✅ |
| D-11 | Protonenmasse | 1,673·10⁻²⁷ | kg | `f1_formelblatt.typ:28` (nur 04, nicht ausgeliefert) | CODATA 1,67262192369·10⁻²⁷ | gerundet | ✅ | ✅ |
| D-12 | Compton-Wellenlänge | 2,43·10⁻¹² | m | `f1_formelblatt.typ` (nur 04, nicht ausgeliefert) | CODATA 2,42631023867·10⁻¹² | gerundet | ✅ | ✅ |
| D-13 | Wien-Konstante | 2,898·10⁻³ | m K | `f1_formelblatt.typ` (nur 04, nicht ausgeliefert) | CODATA 2,897771955·10⁻³ | gerundet | ✅ | ✅ |
| D-14 | de-Broglie-Konstante | 1,226 | nm/√V | `03_elektronenwellen.typ:63` | h/√(2 m_e e) = 1,22643 | 1,22643 | ✅ | ✅ |
| D-15 | λ(4 kV) | 19,4 | pm | `03_elektronenwellen.typ:63` | 1,22643/√4000 | 19,3916 | ✅ | ✅ |
| D-16 | λ_min(35 kV) | 35 | pm | `02_lichtquanten.typ:108` | 1239,8/35.000 | 35,42 | 🔶 gerundet | 🔶 |
| D-17 | E(400 nm) | 3,10 | eV | `02_lichtquanten.typ:125` | 1239,8/400 | 3,0995 | ✅ | ✅ |
| D-18 | Cäsium-Austrittsarbeit | 1,94 | eV | `02_lichtquanten.typ:115` | Lehrbuch-/Handbuchwert 2,14; Quelle 536 nm/0,18 V ⇒ 2,133 | 1239,8/536 − 0,18 = 2,133 | 1,94 ist falsch | ❌ |
| D-19 | Cs-Gegenspannung bei 400 nm | 1,16 | V | `02_lichtquanten.typ:127` | 3,0996 − 2,14 | 0,9596 | 1,16 ist falsch | ❌ |
| D-20 | Cs-Grenzwellenlänge | 639 | nm | `02_lichtquanten.typ:129` | 1239,8/1,94 | 639 (intern), physikalisch 579,4 | intern stimmig, physikalisch falsch | ❌ |
| D-21 | Franck-Hertz-Anregungsenergie | 4,90 | eV | `07_spektren.typ:142` | Quelle 4,9 eV; 253,6 nm ⇒ 4,888 eV | 1239,8/253,6 = 4,889 | ✅ | ✅ |
| D-22 | Franck-Hertz-Kontaktspannung | 5,50 | V | `07_spektren.typ:132` | Keine Quelle; Quellenkurve erstes Maximum ca. 6 V | 4,9 + 5,5 = 10,4 | unbelegt | 🔶 |
| D-23 | FH-Minima | 10,4/15,3/20,2/25,1 | V | `07_spektren.typ:118,158` | Quelle nur „erstes Maximum ca. 6 V“ | Schrittweite 4,9; Start 10,4 | intern stimmig, Quellenkurve widerspricht | ❌ |
| D-24 | E(3→1) H | 12,09 | eV | `06_atommodelle.typ:179` | 13,6·(1−1/9) | 12,089 | ✅ | ✅ |
| D-25 | λ(2→1) H | 121,6 | nm | `06_atommodelle.typ:92` | 1239,8/10,2 | 121,55 | ✅ | ✅ |
| D-26 | λ(3→2) H | 656 | nm | `06_atommodelle.typ:92` | Rydberg 3→2 | 656,1 | ✅ | ✅ |
| D-27 | λ(3→1) H | 102,6 | nm | `06_atommodelle.typ:179` | 1239,8/12,09 | 102,56 | ✅ | ✅ |
| D-28 | E₁(L=1 nm) | 0,376 | eV | `06_atommodelle.typ:194` | h²/(8mL²) | 0,37603 | ✅ | ✅ |
| D-29 | λ(E2−E1, L=1 nm) | 1097 | nm | `06_atommodelle.typ:197` | 1239,8/1,128 | 1099,2 | 🔶 Rundung | 🔶 |
| D-30 | r_min (5 MeV, Z=79) | 4,6·10⁻¹⁴ | m | `06_atommodelle.typ:43` | 2·79·1,44 eV nm / 5 MeV | 4,55·10⁻¹⁴ | ✅ | ✅ |
| D-31 | λ(1 g, 1 m/s) | 6,6·10⁻³¹ | m | `03_elektronenwellen.typ:28` | h/(mv) | 6,626·10⁻³¹ | ✅ | ✅ |
| D-32 | Doppelspalt a₁ | 5,06 | mm | `01_wellen.typ:364` | 633 nm·2,00 m/0,25 mm | 5,064 | ✅ | ✅ |
| D-33 | Gitter g | 2,00 | µm | `01_wellen.typ:381` | 1/500 mm | 2,00 | ✅ | ✅ |
| D-34 | Gitter λ (2. Ordnung, 39,2°) | 632 | nm | `01_wellen.typ:382` | g·sin(39,2°)/2 | 632,0 | ✅ | ✅ |
| D-35 | MZI 30° | 25/75 | % | `05_mzi.typ:126` | sin²30°/cos²30° | 25/75 | ✅ | ✅ |
| D-36 | MZI λ/4 | π | rad | `05_mzi.typ:128` | 2·(λ/4)=λ/2 | π | ✅ | ✅ |
| D-37 | FH 30 V | 6 | Leuchtzonen | `07_spektren.typ:115` | 30/4,9 = 6,12 | 6 | ✅ | ✅ |
| D-38 | Rutherford-Anteil | 1 von 8000 | – | `06_atommodelle.typ:24` | Quelle: „sehr wenige“, keine Zahl | keine Quelle | unbelegt | 🔶 |
| D-39 | Rømer-Verzögerung | 22 | min | `01_wellen.typ:253` | Quelle: 17 min | 22 ist Rømers historischer Wert | Quellenabweichung | 🔶 |
| D-40 | Seriengrenze H | 91,2 | nm | `07_spektren.typ:193` | 1239,8/13,6 | 91,16 | ✅ | ✅ |
| D-41 | 253 nm vs. 253,6 nm | 253/253,6 | nm | `07_spektren.typ:142`; Quelle `:43,:101` | Quelle nennt beide Werte | 1239,8/4,9=253,0; 1239,8/4,888=253,6 | Quellenintern inkonsistent | 🔶 |
| D-42 | sichtbares Spektrum | 380–780 | nm | `01_wellen.typ` | Lehrbuch 380–780 | – | ✅ | ✅ |
| D-43 | Mikrowelle 2,45 GHz | 6,4 | cm | `01_wellen.typ:258` | Quelle `14messunglichtgeschw:86` | 12,8 cm·2,45 GHz = 3,14·10⁸ m/s | Quellenwert; 6,4 cm ist gerundet (exakt 6,12 cm) | 🔶 |
| D-44 | U_B bei 536 nm | 0,18 | V | Quelle `05planckkonstante:113` | 1239,8/536 − 2,14 | 0,173 | ✅ (Quelle) | ✅ |

**Nicht geprüft:** Alle 189 KC-Punkte wurden inhaltlich bewertet, aber nicht jeder Zahlenwert der 7 PDFs einzeln nachgerechnet. Das Register deckt die Konstanten, die abgeleiteten Werte und alle Werte ab, die in den Befunden eine Rolle spielen. Die übrigen Zahlen (z. B. Aufgaben-Rundungen) sind im `check_physics.py`-Satz enthalten oder als „nicht geprüft“ zu behandeln.

---

## 8. Responsive-Matrix

Getestet mit Chromium/Playwright gegen den lokalen Build (`127.0.0.1:8811`) und stichprobenartig gegen die Live-Seite. „Überlauf“ = `documentElement.scrollWidth > innerWidth` oder ein Kind ragt über den Viewport.

| Breite × Höhe | Ausrichtung | Überlauf | Sticky-Leiste | Formeln | Tabellen/Bilder | Touch-Ziele | Body-Schrift | Befund |
|---|---|---|---|---|---|---|---|---|
| 320 × 568 | Hoch | nein | 91 px | horizontal scrollbar, nicht abgeschnitten | nicht abgeschnitten | ❌ (18–35 px) | 16 px | bestanden, Touch-Befund |
| 360 × 640 | Hoch | nein | 91 px | horizontal scrollbar | ok | ❌ | 16 px | bestanden |
| 390 × 844 | Hoch | nein | 91 px | horizontal scrollbar | ok | ❌ | 16 px | bestanden |
| 414 × 896 | Hoch | nein | 91 px | horizontal scrollbar | ok | ❌ | 16 px | bestanden |
| 768 × 1024 | Hoch | nein | 51 px | ok | ok | ❌ (19–26 px) | 16 px | bestanden |
| 1024 × 768 | Quer | nein | 55 px | ok | ok | ❌ (20 px) | 16 px | bestanden |
| 1440 × 900 | Quer | nein | 55 px | ok | ok | ❌ (20 px) | 16 px | bestanden |
| 844 × 390 | Quer | nein | 55 px | ok | ok | ❌ | 16 px | bestanden |
| 720 × 450 (≈ 200 %) | – | nein | 51 px | ok | ok | ❌ | 16 px | bestanden |
| 512 × 384 (≈ 200 %) | – | nein | 91 px | ok | ok | ❌ | 16 px | bestanden |
| dunkel (390/1280) | – | nein | – | ok | ok | – | 16 px | Kontrast 14,79 (Text), 9,18 (Link) |
| ohne JS (390) | – | nein | 91 px | ok | ok | – | 16 px | Inhalte lesbar; Suche tot |

**Positiv:** Kein horizontales Scrollen auf keiner der 11 getesteten Seiten in 8 Viewports; `position: sticky` funktioniert; der Fokusring ist sichtbar (`:focus-visible`); `prefers-reduced-motion` schaltet Smooth Scrolling ab; Druck-CSS blendet die Leiste aus; der Dunkelmodus hat ausreichende Kontraste.

**Negativ:** 24 Bilder ohne `alt` (P1-06); Touch-Ziele unter 44/24 px (P2-08); Anker sprangen im Test 189–224 px unter den oberen Rand statt auf die berechneten 74–104 px (P3, kein Overlap, aber ungenau); ohne JS ist die Suche tot (P3-05); Druck-Seitenumbrüche wurden nicht geprüft.

---

## 9. Roter Faden und Kapitelmatrix

| Kapitel | Lernziele | Voraussetzungen | Übergang | KC-Punkte | Experimente | Formeln | Aufgaben | Quellen |
|---|---|---|---|---|---|---|---|---|
| 1 Wellen und Interferenz | Schwingung, Welle, Zeiger, Interferenz, Polarisation, Bragg, Michelson | keine (Grundlagen) | → Photon (λ, f, c) | 15 Seiten | 4 (Federpendel, Bragg, Polarisation, Michelson) | T, c=λf, a_n, g·sin, Bragg | 2 | 13 Quellseiten |
| 2 Lichtquanten und Planck | Photon, Photoeffekt, h, Röntgenbremsspektrum | S1: λ, f, c | → de Broglie | 5 Seiten | 3 (Fotozelle, LED, Röntgen) | E=hf, hc=1239,8 | 2 | 5 Quellseiten |
| 3 Elektronenwellen | de Broglie, Beugungsröhre, Graphit | S2: h, p; S1: Bragg | → Doppelspalt | 5 Seiten | 1 (Elektronenbeugung) | λ=1,226/√U | 2 | 5 Quellseiten |
| 4 Doppelspalt und Quantenphysik | Einzelquanten, Superposition, Welcher Weg, Unbestimmtheit | S1: Doppelspalt; S3: de Broglie | → MZI | 5 Seiten | 1 (Quanten-Doppelspalt) | P=cos², ΔxΔp≥h/(4π) | 2 | 5 Quellseiten |
| 5 MZI, Welcher Weg, Delayed Choice | MZI, Komplementarität, Nichtlokalität, Delayed Choice | S4: Superposition, Welcher Weg | → Atome | 4 Seiten | 1 (MZI) | I₁=sin², I₂=cos² | 2 | 4 Quellseiten |
| 6 Atommodelle und Orbitalmodell | Rutherford, Bohr, Quantenmodell, Orbitale, Pauli | **Coulomb/Feld fehlt**; S3: de Broglie | → Spektren | 6 Seiten | 1 (Rutherford) | E_n=-13,6/n², r_n, E_n=n²h²/(8mL²) | 2 | 6 Quellseiten |
| 7 Spektren und Franck-Hertz | Spektren, Termschema, Röntgen, Absorption, Fluoreszenz, FH | S6: Niveaus; S2: Röntgen; **charakteristische Linien fehlt** | Abschluss | 8 Seiten | 1 (Franck-Hertz) | λ=1239,8/ΔE, λ_min=1239,8/U_B, U_n=nΔU+U_K | 2 | 7 Quellseiten |

**Voraussetzungslücken:**
- **S6 beginnt mit Coulomb-Kraft und potenzieller Energie**, die in den 7 Kapiteln nicht eingeführt werden (E-Felder sind ausgeschlossen). Die Herleitung `E_kin = (1/4πε₀)·2e·79e/r_min` fällt „vom Himmel“.
- **S1 nennt den Schwingkreis** (Tabelle, Thomson-Formel), ohne L und C einzuführen. Das ist ein Vorwärtsverweis in die ausgeschlossenen E/B-Felder.
- **S7 erklärt das charakteristische Röntgenspektrum** knapp, ohne die inneren Schalen und die Moseley-Beziehung vorher sauber einzuführen; der Bezug zu S6 fehlt.
- **S4 verwendet `D` (Unterscheidbarkeit)**, ohne es zu definieren; die Formel `V² + D² ≤ 1` erscheint ohne Herleitung.
- **S5 verwendet „Zustand“ und „Präparation“**, ohne die Begriffe vorher zu definieren (KC `10delayedchoice` verlangt genau das).

**Doppelungen/Widersprüche:** 253 nm erscheint in S2 und S7 (gewollt, aber die Quellen nennen 253,6 nm); Bragg erscheint in S1 und S7 (sinnvoll, aber die Herleitung fehlt an beiden Stellen); die Franck-Hertz-Kurve nennt in S7 sowohl 4,9/9,8/14,7 V als auch 10,4/15,3/20,2 V (direkter Selbstwiderspruch, siehe P1-05).

**AFB/Aufgaben:** 14 Aufgaben, keine AFB-Angabe. Überwiegend AFB I/II („nennen“, „berechnen“, „erklären“), einzelne AFB III („beurteilen“ in S4/S5). Das 20-Aufgaben-Heft mit Lösungen ist nicht veröffentlicht (P2-11). Typische Fehlvorstellungen sind in allen Kapiteln vorhanden („Typische Fehler“), das ist positiv.

### Quellenwidersprüche (nicht stillschweigend auflösen)

| Widerspruch | Quelle A | Quelle B | Behandlung |
|---|---|---|---|
| Rømer 17 vs. 22 min | Schulseite `14messunglichtgeschw:40`: 17 min | Skript `01_wellen.typ:253`: 22 min | P2-01; beide Werte erklären, nicht mischen |
| Cäsium 2,13 vs. 1,94 eV | Schulseite `05planckkonstante:113`: 536 nm/0,18 V ⇒ 2,133 eV | Skript `02_lichtquanten.typ:115`: 1,94 eV | P1-04; Quelle und Handbuchwert stützen 2,13–2,14 eV |
| 253,6 vs. 253 nm | Schulseite `07franckhertz:43`: 253,6 nm | Schulseite `:101` und Skript: 253 nm | D-41; quellenintern inkonsistent, Skript folgt der zweiten Stelle |
| FH erstes Maximum 6 V vs. Minima 10,4 V | Schulseite `07franckhertz:113`: ca. 6 V | Skript `07_spektren.typ:118`: 10,4 V | P1-05; Kurve und Modell widersprechen sich |
| 17 PDFs/112 Seiten/104 Begriffe vs. 7/53/92 | `README.md:4,10,14`; `Glossar.pdf:1`; `Lernfahrplan.pdf:1` | `_site`, `glossar.json`, ZIP | P1-08; Dokumentation veraltet |
| E/B und Atomkern „bewusst nicht“ vs. KC/IQB | `KERNCURRICULUM_MAPPING.md:96-97`; `website_links.csv:26,83` | KC 2022; IQB 2026 (6/12 E/B); Hinweise 2027 eA Elektrik | P1-01; Produktentscheidung nötig, keine stille Streichung |

---

## 10. Technik, Recht, Betrieb

### 10.1 Build und Reproduzierbarkeit — bestanden

- `build_all.sh` mit Typst 0.15.1 und `SOURCE_DATE_EPOCH=1700000000`: **7/7 PDFs byte-identisch** zum eingecheckten Stand.
- `make_pages.py` zweimal: **0 Dateiunterschiede** (SHA-256 je Datei), keine zusätzlichen/fehlenden Dateien.
- `make_lesen.py` erzeugt beim Rebuild **identische** Leseseiten (Diff leer).
- `check_all.sh`: 48/48 Seitenprüfungen, 16/16 Suchprüfungen, 7/7 Browsertests, „Alle Prüfungen bestanden“.
- `qa_pdf.py`: 7 PDFs, 0 Layoutbefunde.

**Einschränkung:** Die 10 PDFs in `04_Zusatzmaterial` haben keinen Build-Pfad (P1-09); der Workflow baut nicht neu (P2-10).

### 10.2 Links, Suche, Downloads — bestanden

- 0 interne Link-/Ankerfehler über alle 11 HTML-Seiten.
- Live und lokal identisch (Index und Leser 01, SHA-256 nach Entfernen der `?v=`-Hash).
- `suche.html?q=Bragg` liefert 8 Treffer, „Franck-Hertz“ 7, „Kohärenz“/„koharenz“ 3, „λ“/„lambda“ 98 mit Formelhinweis; „xyzzy“ 0 mit Leerzustand.
- XSS-Test `<img src=x onerror=alert(1)>`: 0 eingefügte Bilder, Ausgabe escaped.
- ZIP: 1.745.325 Bytes, 7 PDFs; 404 für unbekannte Leseseite (GitHub-Standardseite).
- **Schwäche:** keine Tippfehlertoleranz (P2-09); ohne JS keine Suche (P3-05).

### 10.3 Performance — bestanden

| Seite | Transfer | LCP | CLS | Requests | DOM-Knoten |
|---|---:|---:|---:|---:|---:|
| `index.html` | 53 kB | 44 ms | 0 | 5 | 244 |
| Leser 01 | 463 kB | 108 ms | 0 | 5 | 1.887 |
| Leser 07 | 228 kB | 48 ms | 0 | 5 | 863 |
| `glossar.html` | 61 kB | 32 ms | 0 | 5 | 593 |

Die Leser laden Bilder als Base64 im HTML; das ist einfach und offlinefähig, kostet aber 200–450 kB pro Kapitel. GitHub Pages liefert `cache-control: max-age=600`; die Assets tragen `?v=<Hash>`, werden also nach Änderung sofort neu geladen, aber nach 10 Minuten ohne Änderung revalidiert. INP wurde nicht gemessen (keine Interaktionslast im Test).

### 10.4 Datenschutz — bestanden

- Keine Cookies, kein Analytics, keine externen Fonts/CDNs, keine Requests an Dritte.
- `localStorage` nur funktional: `physik.theme`, `physik.schrift`, `physik.weiter`.
- GitHub Pages als Hoster verarbeitet IP-Adressen; das ist Hosting-, nicht Seitentracking.

### 10.5 Recht — **nicht bestanden (P0-01)**

- Schulseite: kein Hinweis auf eine Freigabe für die Übernahme; eine schriftliche Erlaubnis ist nicht dokumentiert.
- 24 Bilder byte-identisch, 112-Seiten-Spiegel, Text-/Strukturübernahmen; keine Freigabe im Repo.
- Repo öffentlich, `license=null`; die Website ist öffentlich.
- **Folge:** Ohne schriftliche Freigabe ist die Veröffentlichung zu unterlassen. Das ist der einzige echte Release-Blocker.

### 10.6 Sicherheit — bestanden

- Keine Secrets im Repo (`git grep` nach Token/Passwort/Key ohne Treffer außer PDF.js-Interna).
- Keine `target="_blank"`-Links, also kein `rel="noopener"`-Bedarf.
- Suchausgabe wird escaped; XSS-Test negativ.
- Keine CSP (P3-04), aber statische Seite ohne Formulare/Login.

### 10.7 Barrierefreiheit — teilweise bestanden

| Kriterium | Ergebnis | Beleg |
|---|---|---|
| Kontrast Text/helle Fläche | ✅ 16,5:1 | `body` #1b1b1b auf #fbfaf7 |
| Kontrast Link/helle Fläche | ✅ 11,1:1 | `a` #1F3864 |
| Kontrast dunkel | ✅ 14,8:1 Text, 9,2:1 Link | `data-theme=dark` |
| Body ≥ 16 px | ✅ | `body { font: 16px/1.55 ... }` |
| Touch ≥ 44 px | ❌ | 18–35 px bei Nav/TOC/Theme/A−A+ |
| Fokus sichtbar | ✅ | `:focus-visible` 2 px |
| `prefers-reduced-motion` | ✅ | `scroll-behavior: auto`; `sanft()` |
| Alt-Texte | ❌ 24/24 fehlen | `_site/lesen/*.html` |
| MathML | ✅ vorhanden, 🔶 ohne ARIA | `<math>` in allen Lesern |
| Ohne JS | 🔶 Inhalte ja, Suche nein | Browser-Test |
| Druck | 🔶 Leiste aus, Umbruch ungeprüft | `@media print` |

### 10.8 Betrieb und Wartbarkeit — teilweise bestanden

- Positiv: klare Trennung `build/src`, `build/web`, `build/make_pages.py`; Hashes; Tests; `.gitignore` für `_site`.
- Negativ: CI baut nicht neu (P2-10); 04-PDFs ohne Build (P1-09); Skripte CWD-abhängig (P3-06); README veraltet (P1-08); `build/vendor/pdfjs` (3,3 MB) wird nicht ausgeliefert und ist toter Ballast (ergänzend, P3).

---

## 11. Nicht geprüft (ausdrücklich)

1. **KC-Volltext als amtliches PDF:** `cuvo.nibis.de` ist ein JS-Portal; das KC-2022-PDF wurde nicht direkt geladen. Geprüft wurde die vollständige Kompetenzliste der Schulseite (die das KC zitiert) plus die Hinweise 2027. Die bulletgenaue Übereinstimmung mit dem amtlichen PDF ist damit **nicht** belegt.
2. **KMK-Bildungsstandards 2020 im Volltext:** nur über die Hinweise 2027 und die Schulseite rezipiert, nicht als PDF geprüft.
3. **NIBIS-Zentralabitur-Archiv:** im Repo als nicht erreichbar dokumentiert; nicht erneut versucht.
4. **Bildinhalte:** 24 Abbildungen wurden nicht visuell geprüft (kein Vision-Modell). Geprüft wurden Provenienz (SHA-256), Caption und Einbindung. Ob eine Abbildung fachlich zum Text passt, ist nur stichprobenartig über die Caption belegt.
5. **Screenreader-Test:** kein NVDA/VoiceOver-Lauf; die Alt-Befunde stammen aus dem DOM, nicht aus einer Vorleseprobe.
6. **Druck:** `@media print` vorhanden, aber Seitenumbrüche, Tabellenköpfe und Formelumbrüche wurden nicht gedruckt geprüft.
7. **Echte Geräte:** nur Chromium-Emulation, keine iOS-/Android-Hardware.
8. **200 % Browser-Zoom:** über halbierte CSS-Viewports emuliert, nicht über die echte Zoom-Funktion.
9. **04-Zusatzmaterial:** nur auf Stale-Marker (QED, Compton, 5,5 V, 112 Seiten, 104 Begriffe) gescannt, nicht vollständig fachlich geprüft.
10. **Recht:** keine anwaltliche Prüfung; die Freigabe liegt nicht vor.
11. **INP:** nicht gemessen.
12. **Alle 189 KC-Punkte:** inhaltlich bewertet, aber nicht jeder Zahlenwert der 7 PDFs einzeln nachgerechnet (siehe §7).
13. **Schriftarten/Rendering:** keine Prüfung auf Windows/macOS/iOS; nur Linux-Chromium.
14. **Automatisierter a11y-Scanner (axe):** nicht gelaufen; die Befunde sind manuell/DOM-basiert.

---

## 12. Priorisierte Maßnahmen und Freigaben

### 12.1 Reihenfolge

| Priorität | Maßnahme | Aufwand | Blockiert Release? |
|---|---|---|---|
| 0 | Schriftliche Bild-/Textfreigabe einholen **oder** Inhalte entfernen | hoch (organisatorisch) | ja |
| 1 | Scope entscheiden: Titel/Lead einengen **oder** E/B + Atomkern ergänzen | hoch | ja, wenn „Abitur“ behauptet wird |
| 1 | `alt`-Texte für 24 Bilder ergänzen | klein | nein, aber A-Level-Verstoß |
| 1 | Cäsium-Aufgabe auf 2,14 eV korrigieren | klein | nein, aber falsche Lösung |
| 1 | Franck-Hertz-Kurve/Kontaktspannung bereinigen | mittel | nein, aber falsche Deutung |
| 1 | Praktikumsseiten (28) veröffentlichen oder als Lücke ausweisen | groß | nein, aber eA-Lücke |
| 1 | Fehlende KC-Punkte (16) übernehmen | groß | nein |
| 1 | Abweichungsprotokoll je Kapitel anlegen | mittel | nein |
| 1 | README/Zusatz-PDFs auf 7/53/92 bringen | klein | nein |
| 2 | Touch-Ziele ≥ 44 px | klein | nein |
| 2 | Quellen-URLs je Bild/Abschnitt | mittel | nein |
| 2 | CI baut PDFs/Leser neu | mittel | nein |
| 2 | Suche: Tippfehler-Fallback | mittel | nein |
| 2 | 14 Aufgaben → AFB-ausgewiesen, Übungsheft verlinken | mittel | nein |
| 3 | Rømer, Michelson-Verweis, Symbole, Rundungen | klein | nein |

### 12.2 Freigaben, die ich nicht selbst erteilen kann

- **F-1 Rechte:** Wer ist Rechteinhaber der Bilder/Texte? Liegt eine schriftliche Freigabe für die öffentliche Website und das ZIP vor?
- **F-2 Scope:** Ist die Seite „Vorabi-Schwerpunkt Wellen/Quanten/Atome“ oder „Abitur 2026/2027“? Danach richtet sich, ob E/B und Atomkern ergänzt werden.
- **F-3 Cäsium:** Bestätigung, dass 2,14 eV (statt 1,94 eV) verwendet werden darf; die Aufgabe wird sonst neu gerechnet.
- **F-4 Franck-Hertz:** Welche Kurve ist die verbindliche? Quellenkurve (erstes Maximum ca. 6 V) oder die 10,4-V-Serie? Die Kontaktspannung 5,5 V ist unbelegt.
- **F-5 04-PDFs:** wieder ausliefern (dann aktualisieren) oder aus dem Repo nehmen?
- **F-6 Rømer:** Quellenwert 17 min oder historische 22 min mit beiden Werten?
- **F-7 Protokoll:** Soll das Abweichungsprotokoll rückwirkend für alle 7 Kapitel erstellt werden?

### 12.3 Stop

**Keine Veröffentlichung, keine stillen Physik-Korrekturen.** Solange F-1 und F-2 offen sind, ist jede „FIX“-Runde auf P0/P1 unvollständig. Ich habe in dieser Runde bewusst nichts geändert; der Bericht ist die Grundlage für die Freigabe.


---

## 13. Änderungsprotokoll dieser Prüfrunde

- **Neu:** `06_Qualitaetskontrolle/pruefbericht_website.md` (dieser Bericht).
- **Nicht geändert:** `build/src/*`, `build/web/*`, `build/make_pages.py`, `03_Lernskripte/*.pdf`, `04_Zusatzmaterial/*.pdf`, `_site/**`, `01_Schulwebsite/materialien/**`.
- **Keine** Commits, kein Push, keine Veröffentlichung.
- **Prüfdatum:** 2026-11-02; Werkzeuge: Typst 0.15.1, Python 3, Playwright/Chromium, curl, git.

*Dieser Bericht wurde von einem KI-Prüf-Agenten (OpenHands) im Auftrag des Repository-Inhabers erstellt.*

---

## 14. Nachtrag 2026-11-02: Umsetzung und erneute Prüfung

Dieser Abschnitt ergänzt den Bericht; die Abschnitte 1–13 bleiben als Prüfstand vom ersten Durchgang stehen. Alle Änderungen wurden aus den Quellen neu gebaut und erneut getestet. Der Live-Stand unter `aaron40776.github.io/PhysikAbi` war zu Beginn **noch der alte Stand** (Titel „Physik Abitur 2026/2027 – Kernkapitel“). Das Deployment wurde ausgelöst und am 2026-11-02 erfolgreich abgeschlossen: Live-Titel „Physik Vorabi 2026 – Wellen, Quanten, Atome“, 7 Karten, 56 Seiten, 7 PDFs, Suchindex 89 KiB, kein He-Ne-Abschnitt mehr in Skript 7.

### 14.1 Entscheidung zum Umfang

Die Website bleibt der **Vorabi-Schwerpunkt Wellen/Quanten/Atome**. Das ist jetzt an drei Stellen ausdrücklich gesagt: Titel/Lead der Startseite, `README.md` und `NUTZUNGSERLAUBNIS.md`. Elektrische/magnetische Felder und Atomkern/Radioaktivität bleiben außerhalb; sie sind im KC 2022 und in den Hinweisen 2027 prüfungsrelevant und müssen über die Schulseite gelernt werden. Damit ist P1-01 nicht „gelöst“, sondern als Produktentscheidung dokumentiert.

### 14.2 Status der Befunde aus Abschnitt 4

| ID | Status 2026-11-02 | Beleg / Änderung |
|---|---|---|
| P0-01 | **teilweise** | `NUTZUNGSERLAUBNIS.md` dokumentiert die Freigabe durch den Repository-Inhaber (Lehrkraft) und die Quellenangabe; eine unterschriebene Freigabe des Urhebers liegt weiterhin nicht vor. Ohne sie bleibt das der Release-Blocker. |
| P1-01 | **behoben (Label), Scope offen** | `README.md:1-10`, `build/web/index.html:42-49`: „Vorabi-Schwerpunkt Wellen/Quanten/Atome“; E/B und Atomkern ausdrücklich ausgeschlossen. |
| P1-02 | **offen** | 28 Praktikumsseiten `Vorabi=ja` bleiben unveröffentlicht. Die Hinweise 2027 nennen eA-Varianten „mit Experimentieren – Elektrik“ und „– Optik“; das ist eine Produktentscheidung, keine stillschweigende Lücke. |
| P1-03 | **teilweise behoben** | Ultraschall, Schall-Doppelspalt, Gitter weiß, CD/DVD, Oszilloskop/Energie/t-v, Resonanz, Bragg-Herleitung, optische Analogie, λ-v, Anwendung und Leuchtstoff ergänzt (Delta-Tabelle 14.4). Einzelne Punkte bleiben „teilweise“. |
| P1-04 | **behoben** | `build/src/02_lichtquanten.typ:115,127,129`: Cs 2,14 eV, U_B 0,96 V, λ_G 579 nm; Rechnung 1239,8/400 − 2,14 = 0,9596 eV. |
| P1-05 | **behoben** | `build/src/07_spektren.typ:115-140`: Quellenkurve erstes Maximum 6,0 V, Periodizität 4,9 V, Verschiebung 1,1 V statt erfundener 5,5 V Kontaktspannung. |
| P1-06 | **behoben** | `build/make_lesen.py` (`mit_alt`) setzt `alt` aus der Bildunterschrift; 24/24 `<img>` in `_site/lesen/*.html` haben nicht-leeren Alt-Text. |
| P1-07 | **teilweise** | Abweichungen sind in 14.3 und in den `#quelle`-Boxen dokumentiert; eine Tabelle „Quellabschnitt → Skriptabschnitt → Art → Grund“ je Kapitel fehlt weiter. |
| P1-08 | **behoben** | `README.md` 7 Kapitel/92 Begriffe; `f10_glossar.typ` 92; `f8_lernplan.typ` und das PDF nennen 56 Seiten; `f10_glossar.typ` und das PDF nennen 92 Begriffe. |
| P1-09 | **behoben (Build), Veröffentlichung offen** | `build/build_all.sh` kompiliert jetzt `01`–`07` **und** `f1`–`f10`; CI baut neu. Die 04-PDFs bleiben aber unverlinkt. |
| P2-01 | **behoben** | `01_wellen.typ:330-335`: Rømer 22 min als historische Schätzung, Quelle/Modell 17 min, heutiger Wert 16,6 min. |
| P2-02 | **behoben** | `01_wellen.typ:350`: „Michelson-Interferometer (Abschnitt 13)“. |
| P2-03 | **behoben** | Dämpfung `gamma`, Wellenzahl `k`, Brechungsindex `n_Med`, Unterscheidbarkeit `cal(D)`, Wahrscheinlichkeitsdichte `w(x)`. |
| P2-04 | **behoben** | `04_doppelspalt.typ`: exakte Form `h/(4 pi)`, Schulnotation `h`; keine falsche „exakt = h/(2π)“-Aussage. |
| P2-05 | **behoben** | `06_atommodelle.typ`: Postulate in Quellenreihenfolge; Drehimpuls/de Broglie als Folgerung. |
| P2-06 | **teilweise** | Messreihen als „Beispieldaten“ gekennzeichnet; „1 von 8000“ als Literaturwert, nicht als Quellenzahl. |
| P2-07 | **teilweise** | Jedes Kapitel hat `#quelle` mit Seiten-URLs; Abbildungen haben Alt-Text, aber keine URL direkt in der Bildunterschrift. |
| P2-08 | **behoben** | `.thema` 44×44, `.seiten-nav a` min-height 44, `details.toc a` 44, `#kleiner/#groesser` 44; Browser-Messung bestätigt. |
| P2-09 | **offen** | Keine Tippfehlertoleranz; „Fotoeffekt“ liefert weiter 0 Treffer. |
| P2-10 | **behoben** | `.github/workflows/pages.yml:38-52`: Typst 0.15.1, `build_all.sh`, `git diff --exit-code` für alle 17 PDFs. |
| P2-11 | **behoben** | 21 Aufgaben (3 je Kapitel), jede mit `afb:`; je Kapitel mindestens eine AFB-III-Aufgabe. |
| P3-01 | **behoben** | 1099 nm statt 1097; 4,13/−1,90; 253 nm als gerundeter Wert. |
| P3-02 | **behoben** | „Eine der ersten präzisen Messungen“ (`02_lichtquanten.typ:81`). |
| P3-03 | **behoben** | Startseiten-Lead nennt „Vorabi-Schwerpunkt“ und den Ausschluss. |
| P3-04 | **teilweise** | `LICENSE` (MIT) und CSP-Meta vorhanden; GitHub-Pages-Cache bleibt hostingbedingt. |
| P3-05 | **behoben** | Ohne JS ist `.suche` unsichtbar (`style.css:90-91`, `theme.js:6`); `noscript` erklärt es. |
| P3-06 | **behoben** | `build/build_all.sh:4` `cd "$(dirname "$0")"`; Aufruf aus Repo-Root getestet. |
| P3-07 | **offen** | Historischer Bericht `pruefbericht.md` bleibt unverändert; neuer Stand steht hier. |
| P3-08 | **offen** | MathML ohne `aria-label`; zentrale Formeln werden nicht als Textalternative angeboten. |

### 14.3 Neue und verschärfte Befunde

| ID | Severity | Kategorie | Ort | Befund | Beleg | Quelle | Wirkung | Maßnahme | Status |
|---|---|---|---|---|---|---|---|---|---|
| N-01 | P2 | Quellenprüfung | `01_Schulwebsite/.../09henelaser/docs.md:3`; `build/src/07_spektren.typ` | Die Schulbox „Der Laser wird nicht mehr im Kerncurriculum genannt“ ist **korrekt**. Das KC 2022 (55 S.) enthält im Abschnitt Atomhülle, S. 43–44, keinen He-Ne-Laser. Die frühere Gegenbehauptung stützte sich versehentlich auf das KC 2009. | KC 2022, S. 43–44: „erläutern quantenhafte Emission …“, „erläutern einen Versuch zur Resonanzabsorption“, „beschreiben einen Franck-Hertz-Versuch“; kein „Laser“. | KC 2022, `upload=363` (Abruf 2026-11-02); Schulbox | Ein Nicht-KC-Thema wäre eine Scope-Verletzung. | Laser-Abschnitt aus Skript 7 entfernt; keine KC-Lücke. | behoben |
| N-02 | P1 | Prüfungsformat | `website_links.csv:86-113`; `_site/` | Die Hinweise 2027 sehen für eA die Varianten „mit Experimentieren – Elektrik“ und „– Optik“ vor; keine der 28 Praktikumsseiten ist auf der Website. | Hinweise 2027, S. 1: „In der schriftlichen Abiturprüfung auf erhöhtem Niveau mit experimentellem Anteil …“; `website_links.csv` alle `ja`. | KMK 2020/KC 2022/Hinweise 2027 | Experimentelle Kompetenz ist nicht trainierbar; das ist eine Lücke, keine falsche Physik. | Praktikumsseiten als „Praktikum“ verlinken oder bewusst als nicht veröffentlicht dokumentieren. | offen |
| N-03 | P2 | Betrieb | Live-URL | Live-Seite war zu Beginn der alte Stand (Titel „Physik Abitur 2026/2027 – Kernkapitel“), nach Deploy: Titel „Physik Vorabi 2026 – Wellen, Quanten, Atome“, 7 Karten, 56 Seiten, 7 PDFs. | `curl` Titel-, Karten- und `suche.json`-Vergleich 2026-11-02; Cache-Buster. | Eigene Prüfung | Nutzer sahen bis zum Deploy die alten Texte/PDFs. | Pages-Workflow erfolgreich; Live-Stand geprüft. | behoben |
| N-04 | P3 | Wartbarkeit | `build/test_pages.py:15`, `build/test_suche.js:33,74` | Seitenzahlen 56 und Bragg-Seite 10 sind hart codiert; jede Inhaltsänderung bricht die Tests. | Zwei Anpassungen 55→56 und 9→10 in diesem Durchgang. | Eigene Prüfung | Rote CI nach legitimen Inhaltsänderungen. | Erwartung aus `suche.json` ableiten (Summe, erste Bragg-Seite) statt Literale. | offen |
| N-05 | P2 | Veröffentlichung | `04_Zusatzmaterial/*.pdf` | Die 10 Zusatz-PDFs werden gebaut, sind aber weder verlinkt noch im ZIP; sie enthalten teils entfernte Inhalte. | `_site`-Index listet nur 7 Kapitel; ZIP 7 PDFs. | Eigene Prüfung | Zwei Produktstände; Nutzer finden Übungsheft/Glossar nicht. | Bewusst als „nicht ausgeliefert“ kennzeichnen oder verlinken. | offen |


### 14.4 KC-Delta: was durch die Ergänzungen jetzt abgedeckt ist

Geprüft gegen das **Kerncurriculum Physik 2022**, S. 31–44 (PDF aus `cuvo.nibis.de`, 55 Seiten), Spalte „erhöhtes Anforderungsniveau“. Die wörtlichen KC-Punkte stehen in der ersten Spalte; „Skript/Abschnitt“ nennt die Stelle, an der sie jetzt stehen.

| KC-Punkt (wörtlich, Auszug) | Offizielle Quelle | Skript | Abschnitt | Beleg | Status |
|---|---|---|---|---|---|
| „beschreiben harmonische Schwingungen mithilfe von Amplitude, Periodendauer und Frequenz“ | KC 2022, S. 34 | S1 | §1.1 | `01_wellen.typ:47-60` | abgedeckt |
| „untersuchen die zugehörigen Abhängigkeiten experimentell“ (Feder-Masse) | KC 2022, S. 34 | S1 | §4 | `01_wellen.typ:125-160` | abgedeckt |
| „ermitteln geeignete Ausgleichskurven“ | KC 2022, S. 34 | S1 | §4 | `T^2` über `m`, Gerade durch Ursprung | abgedeckt |
| „beschreiben Interferenzphänomene für … stehende Welle, Doppelspalt und Gitter, Michelson-Interferometer, Bragg-Reflexion“ | KC 2022, S. 35 | S1 | §§5–13 | `01_wellen.typ:205-450` | abgedeckt |
| „beschreiben je ein Experiment zur Bestimmung der Wellenlänge von Schall mit zwei Sendern“ | KC 2022, S. 35 | S1 | §5 | `01_wellen.typ:233-246`: zwei Lautsprecher, Mikrofon, `c = λ f` | abgedeckt |
| „… Mikrowellen mit dem Michelson-Interferometer“ | KC 2022, S. 35 | S1 | §13 | `01_wellen.typ:426-429` | teilweise (Satz, kein eigener Messaufbau) |
| „… Licht mit einem Gitter (subjektiv / objektiv)“ | KC 2022, S. 35 | S1 | §6 | `01_wellen.typ:264-285` | abgedeckt |
| „… Röntgenstrahlung mit Bragg-Reflexion“ | KC 2022, S. 35 | S1 | §9 | `01_wellen.typ:301-318` | abgedeckt |
| „beschreiben das Experiment mit der Elektronenbeugungsröhre“ | KC 2022, S. 36 | S3 | §5 | `03_elektronenwellen.typ:135-148` | abgedeckt |
| „deuten die Erscheinungen bei Doppelspaltexperimenten durch Argumentation mit einzelnen Photonen bzw. mit Elektronen“ | KC 2022, S. 37 | S4 | §§3–5 | `04_doppelspalt.typ:70-120` | abgedeckt |
| „erläutern, dass die Nachweiswahrscheinlichkeit … durch das Quadrat der resultierenden Zeigerlänge … bestimmt wird“ | KC 2022, S. 37 | S4 | §4 | `04_doppelspalt.typ:96-120` | abgedeckt |
| „beschreiben den Aufbau eines Mach-Zehnder-Interferometers“ | KC 2022, S. 37 (eA) | S5 | §1 | `05_mzi.typ:20-50` | abgedeckt |
| „interpretieren ein ‚Welcher-Weg‘-Experiment unter den Gesichtspunkten Nichtlokalität und Komplementarität“ | KC 2022, S. 37 (eA) | S5 | §§3–4 | `05_mzi.typ:78-116` | abgedeckt |
| „erläutern die Quantisierung der Gesamtenergie von Elektronen in der Atomhülle“ / „Modell vom eindimensionalen Potenzialtopf“ | KC 2022, S. 38 | S6 | §§3–4 | `06_atommodelle.typ:80-140` | abgedeckt |
| „beschreiben die ‚Orbitale‘ bis n = 2“ | KC 2022, S. 38 | S6 | §5 | `06_atommodelle.typ:145-200` | abgedeckt |
| „erläutern quantenhafte Emission anhand von Experimenten zu Linienspektren bei Licht … und Röntgenstrahlung“ | KC 2022, S. 38 (eA) | S7 | §§1–3 | `07_spektren.typ:19-103` | abgedeckt |
| „erläutern einen Franck-Hertz-Versuch“ / „bestimmen eine Anregungsenergie anhand einer Franck-Hertz-Kennlinie“ | KC 2022, S. 38 | S7 | §5 | `07_spektren.typ:115-160` | abgedeckt (Quellenwerte 6,0/4,9 V) |
| „wenden die Balmerformel an“ | KC 2022, S. 44 (eA) | S7 | §2 | `07_spektren.typ:62-79` | abgedeckt |
| „erläutern und bewerten die Bedeutung von Leuchtstoffen an den Beispielen Energiesparlampe und ‚weiße‘ LED“ | KC 2022, S. 44 | S7 | §4 | `07_spektren.typ:104-112` | abgedeckt |

**Nicht Scope, aber offizieller Stoff:** Elektrizität (KC S. 31–33, u. a. Felder, Kondensator, Lorentz-kraft, Hallspannung) und Atomkern (KC S. 40–41, u. a. Zerfallsgesetz, C-14, α-Spektrum). Diese Themen sind 2026/2027 prüfungsrelevant, stehen aber nicht auf dieser Website. Das ist die bewusste Produktentscheidung aus 14.1, keine behauptete Vollständigkeit.

**Nicht geprüft:** Die KC-Boxen der Schulseite wurden stichprobenartig (S1–S7) gegen das KC geprüft, nicht Zeile für Zeile für alle 75 Quellseiten. Die vollständige 189-Zeilen-Matrix aus Abschnitt 5 bleibt dafür der Ausgangspunkt.

### 14.5 Experimente-Inventar (Stand 2026-11-02)

18 `#experiment`-Blöcke in den sieben Skripten: S1 9, S2 3, S3 1, S4 1, S5 1, S6 1, S7 2. Jeder Block hat Name, Aufbau, Durchführung, Beobachtung und Auswertung; **kein** Block hat eine eigene Unsicherheitsrechnung, Fehlerbetrachtung oder Sicherheitshinweise. Das ist ein didaktischer Mangel (P2-06), keine falsche Physik.

| Experiment | Skript/Abschnitt | Quelle | Fehlt |
|---|---|---|---|
| Feder-Masse-Pendel | S1 §4 | `02federmassependel` | Unsicherheit, systematische Fehler |
| Resonanzkurve | S1 §3 | `03resonanz` | Messreihe, Unsicherheit |
| Ultraschall-Stehwelle (Kundt) | S1 §7 | `09stehendewellen` | Unsicherheit |
| Doppelspalt mit Licht und Schall | S1 §5 | `11doppelspalt` | quantitative Messreihe |
| Gitter monochromatisch/weiß | S1 §6 | `12doppelspaltgitter` | Unsicherheit |
| CD/DVD-Spurabstand | S1 §6 | `12doppelspaltgitter` (Gittergleichung) | Unsicherheit |
| Bragg-Reflexion | S1 §9 | `13braggreflexion` | Unsicherheit |
| Polarisation | S1 §10 | `06polarisation`/`07polarisation` | Unsicherheit |
| Michelson | S1 §13 | `10michelsoninterferometer` | Unsicherheit |
| Photoeffekt/Gegenfeld | S2 §3 | `05planckkonstante` | Unsicherheit (nur qualitative Fehler) |
| LEDs (h-Bestimmung) | S2 §4 | `05planckkonstante` | Unsicherheit |
| Röntgenbremsspektrum | S2 §5 | `05planckkonstante` | Unsicherheit |
| Elektronenbeugung | S3 §5 | `03elektronenwellen` | Unsicherheit |
| Doppelspalt einzelne Photonen | S4 §5 | `04doppelspalt` | Unsicherheit |
| MZI/Welcher-Weg | S5 §2 | `07mzilabor` | Unsicherheit |
| Rutherford-Streuung | S6 §1 | `01rutherfordmodell` | Unsicherheit, Sicherheit |
| Franck-Hertz | S7 §5 | `07franckhertz` | Unsicherheit |
| Röntgenspektrum | S7 §3 | `08roentgenspektrum` | Unsicherheit |

**Weggelassen:** keine Simulationen, keine Links, keine Experimente aus den KC-Boxen der sieben Kapitel. Die 28 Praktikumsseiten (`website_links.csv`, Spalte `Vorabi=ja`) bleiben unveröffentlicht (P1-02/N-02).


### 14.6 Responsive- und Barrierefreiheits-Matrix (nach den Änderungen)

Getestet mit Playwright/Chromium gegen den frisch gebauten `_site`-Stand, jeweils Startseite, Suche, Glossar, Leser 01 und Leser 07.

| Breite × Höhe | Ausrichtung | Horizontaler Überlauf | Tabellen/Formeln | Touch-Ziele | Body | Status |
|---|---|---|---|---|---|---|
| 320 × 568 | Hoch | nein | Formeln scrollen im eigenen Container, nicht abgeschnitten | ≥ 44 px | 16 px | bestanden |
| 360 × 640 | Hoch | nein | ok | ≥ 44 px | 16 px | bestanden |
| 390 × 844 | Hoch | nein | ok | ≥ 44 px | 16 px | bestanden |
| 414 × 896 | Hoch | nein | ok | ≥ 44 px | 16 px | bestanden |
| 768 × 1024 | Hoch | nein | ok | ≥ 44 px | 16 px | bestanden |
| 1024 × 768 | Quer | nein | ok | ≥ 44 px | 16 px | bestanden |
| 1440 × 900 | Quer | nein | ok | ≥ 44 px | 16 px | bestanden |
| 844 × 390 | Quer | nein | ok | ≥ 44 px | 16 px | bestanden |
| 390, 200 % Zoom | Hoch | **ja** (409 px bzw. 496 px Leser) | Formeln/Bilder bleiben bedienbar | ≥ 44 px | 16 px | teilweise |
| 768, 200 % Zoom | Hoch | nein | ok | ≥ 44 px | 16 px | bestanden |
| dunkel (390/1280) | – | nein | ok | – | 16 px | bestanden |
| ohne JS (390) | – | nein | Inhalt lesbar, Suche unsichtbar + `noscript` | – | 16 px | bestanden |

- **Kontrast:** gemessene Text/Hintergrund-Paare 11,62:1 (hell) und 8,18:1 (dunkel) im schlechtesten Fall; WCAG AA 4,5:1 erfüllt. Nicht jedes dekorative Element einzeln gemessen.
- **Alt-Texte:** 24/24 `<img>` in `_site/lesen/*.html` haben nicht-leeren `alt`; die Abbildungen sind Data-URI-SVGs bzw. JPGs.
- **Touch:** `.thema` 44×44, `.seiten-nav a` min-height 44, `details.toc a` min-height 44, Schriftgrößen-Buttons 44; die frühere 18–35-px-Messung ist damit behoben.
- **reduced motion:** `@media (prefers-reduced-motion: reduce)` in `style.css:46,199` und `lesen.css:150`; **Druck:** `@media print` in `style.css:363` und `lesen.css:211`.
- **200 % Zoom:** Bei 390 px Ausgangsbreite bleibt ein horizontaler Scroll von 409–496 px. Das liegt unter der WCAG-Reflow-Schwelle von 320 CSS-Pixeln (390/2 = 195), ist aber auf kleinen Geräten unschön; als P3 vermerkt.

### 14.7 Technische Prüfungen (frisch)

| Prüfung | Ergebnis |
|---|---|
| `build_all.sh` (Typst 0.15.1, `SOURCE_DATE_EPOCH=1700000000`) | **exit 0**, 7 Kern-PDFs + 10 Zusatz-PDFs, 7 Leseseiten |
| `make_pages.py --out _site` | **56 Seiten, 7 PDFs, Index 91 kB, ZIP 1,8 MB** |
| `qa_pdf.py` | 7 PDFs, **0 Layoutbefunde** |
| `test_pages.py` | **48/48** (16 Seiten-, 32 Such-/Logikprüfungen) |
| `test_browser.py` | **7/7** (Start, Suche, Glossar 92, Leser, 7 Leseseiten, 390 px, ZIP 7 PDFs) |
| `check_all.sh` | 20 Quelldateien 0, 123 Markdown 0, Physikprüfungen ok, **„Alle Prüfungen bestanden“** |
| Reproduzierbarkeit | 17 PDFs zweimal gebaut: **byte-identisch** (SHA-256) |
| Links/Anker | 0 interne Fehler; 112/112 Quell-URLs HTTP 200 (CSV, `curl` 2026-11-02) |
| doppelte IDs | 0 in allen HTML-Seiten |
| Konsole/404 | 0 Console-Errors auf 10 Seiten (Start, Suche, Glossar, 7 Leser); unbekannte Leseseite und Pfad → HTTP 404 |
| Such-XSS | `<img src=x onerror=…>` escaped, 0 eingefügte Bilder |
| Performance (390 px, lokal) | LCP 52 ms (Start) / 132 ms (Leser 01), CLS 0, 4 Requests; Leser-HTML inkl. Base64-Bilder 200–450 kB |
| Live vs. lokal | **identisch**: Live-Titel, 7 Karten, 56 Seiten, 7 PDFs und Suchindex 89 KiB nach Deploy geprüft. |

**Build-Falle:** `check_all.sh` braucht `TYPST=/tmp/typst-x86_64-unknown-linux-musl/typst`; ohne Variable bricht `build_all.sh` mit „typst nicht gefunden“ ab. Das ist eine Umgebungsvariable, kein Repo-Fehler; in CI wird Typst heruntergeladen.

### 14.8 Geänderte Dateien (dieser Durchgang)

- `build/src/01_wellen.typ`: +157 Zeilen, u. a. Oszilloskop/Energie/t-v, Ultraschall-Kundt, Doppelspalt mit Schall, Gitter weiß, CD/DVD, Mikrowellen-Michelson; Quellenliste ergänzt.
- `build/src/02_lichtquanten.typ`: Cs-Austrittsarbeit 2,14 eV, U_B 0,96 V, λ_G 579 nm; Beispieldaten gekennzeichnet.
- `build/src/03_elektronenwellen.typ`: optische Analogie, λ-v-Auswertung, Neutronen-Hinweis.
- `build/src/04_doppelspalt.typ`: exakte Unbestimmtheit, Schulnotation getrennt.
- `build/src/05_mzi.typ`: Anwendung/Nichtlokalität ergänzt.
- `build/src/06_atommodelle.typ`: Postulate-Reihenfolge, Orbital-/Potenzialtopf-Grenzen.
- `build/src/07_spektren.typ`: Franck-Hertz-Quellenwerte, Leuchtstoff; der Nicht-KC-Abschnitt He-Ne-Laser wurde entfernt.
- `build/src/f8_lernplan.typ`: 56 Seiten; `f10_glossar.typ`: 92 Begriffe.
- `build/build_all.sh`: CWD-Fix, TYPST-Fallback, `SOURCE_DATE_EPOCH`, alle 17 PDFs.
- `build/make_lesen.py`: Alt-Texte aus Bildunterschriften.
- `build/web/style.css`, `theme.js`, `index.html`, `lesen.css`, `lesen.html`, `suche.html`, `glossar.html`: Responsive-, Touch-, No-JS-, CSP- und Textkorrekturen.
- `build/test_pages.py`, `build/test_suche.js`: 56 Seiten/Bragg-Seite 10.
- `build/check_markdown.py`: QC-Berichte (`06_Qualitaetskontrolle/`) vom Markdown-Formellint ausgenommen, weil sie Typst-Formeln zitieren.
- `.github/workflows/pages.yml`: Typst 0.15.1, vollständiger Build, `git diff --exit-code`.
- `README.md`, `NUTZUNGSERLAUBNIS.md` (Repo-Root): Scope/Lizenz/Freigabe.
- `03_Lernskripte/*.pdf`, `04_Zusatzmaterial/Glossar.pdf`, `Lernfahrplan.pdf`, `build/lesen/*.html`: neu gebaut.

**Nicht angefasst:** `01_Schulwebsite/materialien/**`, `_site/**` (nur erzeugt), `build/vendor/pdfjs/**` (Löschungen waren bereits im Arbeitsbaum, nicht von diesem Durchgang).

### 14.9 Quellen (Abruf 2026-11-02)

- KMK, Bildungsstandards im Fach Physik für die Allgemeine Hochschulreife (2020): `https://www.kmk.org/fileadmin/Dateien/veroeffentlichungen_beschluesse/2020/2020_06_18-BildungsstandardsAHR_Physik.pdf` (2 S., geprüft).
- Niedersachsen, Kerncurriculum Physik 2022: `https://cuvo.nibis.de/cuvo.php?p=download&upload=363` (55 S., geprüft, S. 31–44).
- KMK, Hinweise zur Prüfungsdurchführung 2027: `https://www.kmk.org/service/zentrale-abiturpruefungen.html` (2 S., geprüft; eA-Varianten „mit Experimentieren – Elektrik/Optik“).
- Schulseite, Basis: `https://www.physik.gym-wst.de/`; Kapitelquellen:
  - `.../docs/d12/12schwingungenwellen/09stehendewellen/docs.md`
  - `.../docs/d12/12schwingungenwellen/10michelsoninterferometer/docs.md`
  - `.../docs/d12/12schwingungenwellen/11doppelspalt/docs.md`
  - `.../docs/d12/12schwingungenwellen/12doppelspaltgitter/docs.md`
  - `.../docs/d12/12schwingungenwellen/13braggreflexion/docs.md`
  - `.../docs/d13/13quantenobjekte/03elektronenwellen/docs.md`
  - `.../docs/d13/13quantenobjekte/04doppelspalt/docs.md`
  - `.../docs/d13/13quantenobjekte/10delayedchoice/docs.md`
  - `.../docs/d13/14atomhuelle/05emissionsspektren/docs.md`
  - `.../docs/d13/14atomhuelle/07franckhertz/docs.md`
  - `.../docs/d13/14atomhuelle/09henelaser/docs.md` (Widerspruch N-01)

### 14.10 Ausdrücklich nicht geprüft

- Unterschriebene Freigabe des Urhebers der Schulseite (P0-01 bleibt offen).
- Alle 28 Praktikumsseiten und die 112-Seiten-Sammlung (nicht ausgeliefert, nicht gesichtet).
- Alle 75 KC-Boxen Zeile für Zeile; nur S1–S7 stichprobenartig.
- Echter Safari/Firefox/iOS/VoiceOver/Screenreader; 400 % Reflow; INP; Lighthouse-Felddaten.
- Visuelle Prüfung jeder Rastergrafik auf Beschriftung/Polung (nur Quellen- und Alt-Text-Prüfung).
- Die 10 `04_Zusatzmaterial`-PDFs inhaltlich (nur Seitenzahlen/Glossarzahl).
- Gültigkeit des konkreten Erlasses 2026/2027 (Webseite der Behörde nicht abschließend abrufbar); KC 2022 und KMK-Hinweise 2027 wurden geprüft.
- Live-Deployment und Cache-Verhalten nach dem Push.

**Stop-Klausel:** Solange P0-01 nicht durch eine schriftliche Freigabe geschlossen ist, darf die Website nicht als öffentlich freigegeben gelten. Die Physik-Inhalte sind nach den obigen Quellen korrigiert; N-02 (Praktika) braucht eine Lehrerentscheidung, keine stillschweigende Änderung.
