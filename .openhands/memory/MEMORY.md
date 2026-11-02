# Projektwissen PhysikAbi (Physik_Vorabi_2026)

## Aufbau & Build
- Typst-Quellen: `Physik_Vorabi_2026/build/src/*.typ`, Layout/Boxen in `build/src/template.typ`.
- Build: `cd build && ./build_all.sh` (nutzt Typst aus /tmp, `SOURCE_DATE_EPOCH` für reproduzierbare PDFs).
  Ergebnis: PDFs in `03_Lernskripte/` und `04_Zusatzmaterial/`, SVGs kopiert nach `05_Grafiken/`.
- Layout-QA: `python3 build/qa_pdf.py <pdfs>` (Textüberläufe), danach `get_text()` auf `{,`, `frac`, `$`.
- Grafiken: `build/make_figures.py` ist die Quelle der ausgelieferten `fig/*.svg`.
  `build/redraw_figs.py` enthält bessere Fassungen, die **nie** angewendet wurden – nicht verwechseln.

## Fallstricke
- Einzelne Grafik neu erzeugen ohne den ganzen Satz zu ändern: Kopf von make_figures.py abschneiden
  (`split("# ----... 1 Welle")[0]`) und den gewünschten Block per `exec(head + block)` ausführen.
- `fig/*.svg` haben matplotlib-Metadaten; die Version muss zu den übrigen Dateien passen (3.11.2).
- Im Übungsheft-PDF extrahieren sich Bindestriche als `\x1d` (Soft-Hyphen); PDF-Suche nach
  „Franck-Hertz“ schlägt fehl, optisch ist alles korrekt.
- Terminal-Tool: Heredocs > ~20 KB hängen/verlieren Inhalt. Große Dateien in Blöcken (`cat >>`)
  schreiben und danach mit `wc -l` prüfen.

## Arbeitsweise (Nutzerwunsch)
- Maximale Eigeninitiative: alle verfügbaren Werkzeuge ausschöpfen, nicht vorschnell
  „nicht möglich“ sagen. Erst Alternativen prüfen (Rendering, OCR/OpenCV, Screenshot-Datei,
  ASCII, geometrische Konstruktionsdaten), dann Grenzen benennen.
- Keine echten Sonderrechte nötig; Sicherheits- und Rechtegrenzen der Umgebung bleiben bestehen.
- Skills aktiv nutzen: bei wiederkehrenden Aufgaben vorhandene Skills prüfen und einsetzen;
  fehlt eine passende Fähigkeit, mit `skill-creator` eine neue erstellen oder mit `add-skill`
  aus einem Repository importieren. Neue Skills so ablegen, dass sie später wiederverwendbar sind.
- Browser-Screenshots werden nur als Datei gespeichert und nicht als Bild in den Kontext
  gespielt. Pixelprüfung daher programmatisch (Farbmasken, Bounding-Boxes, CV), nicht visuell.

## Konventionen im Repo
- Belege immer als `datei:zeile` + Zitat; Prüfergebnisse gehören in
  `06_Qualitaetskontrolle/pruefbericht.md`, nicht in den Chat.
- `PROGRESS.md` wird nur ergänzt (Nachtrag mit Datum), nicht rückwirkend umgeschrieben.

## Website (GitHub Pages)
- Pages läuft als **Workflow** (`.github/workflows/pages.yml`), Trigger u. a. `build/web/**`; testet
  vor dem Deploy. `_site/` ist ignoriert.
- Bauen: `cd Physik_Vorabi_2026 && python3 build/make_pages.py --out _site` (pymupdf);
  testen: `python3 build/test_pages.py` (baut temporär, prüft Index/Links/ZIP und ruft
  `node build/test_suche.js` für Ranking/Markierung/Phrasen).
- Quellen: `build/web/{index,suche,glossar}.html`, `style.css`, `suche.js`, `index.js`,
  `suche-seite.js`, `theme.js` (Hell/Dunkel, `physik.theme`), `glossar.js` (Filter).
  `make_pages.py` erzeugt `suche.json` (~220 kB), `glossar.html` und ZIP.
- Glossar: einzige Quelle `build/glossar.json` (104 Begriffe); daraus `glossar.html` und
  `04_Zusatzmaterial/Glossar.pdf` über `build/src/f10_glossar.typ` (Typst liest das JSON).
- Darkmode: `theme.js` setzt `data-theme` vor dem Stylesheet; CSS hat `:root[data-theme="dark"]`
  und eine Media-Query nur für `:root:not([data-theme="light"])`.
- Index: Text je Seite blockweise; Kopf-/Fußzeilen und `\xad`-Trennungen entfernt; NFKC macht
  𝜆→λ und ℎ→h. Deckblatt und gedrucktes Inhaltsverzeichnis stehen in `doc.leer` (nicht durchsucht,
  im Leser ausgeblendet).
- Ranking: exakte Abschnittsüberschrift +8 (nur Einzelblock), Fließtext +2, Formelbruchstück −3,
  Titel/Kurztext +4 je Begriff, Dokumentname exakt +12 (auch auf Gruppen-Max).
- Assets tragen `?v=<Hash aus JSON+JS+CSS>`; ohne Änderung des Hashs cacht der Browser alte JS-Dateien.
- Neues PDF = Karte erscheint automatisch; Kurztext in `BESCHREIBUNG` ergänzen. Kopfzahlen über
  `__ANZAHL__`/`__GESAMT__`. Stand: 17 PDFs, 110 Seiten. `test_pages.py`/`test_suche.js`
  enthalten die Seitenzahl hart (SEITEN, `idx.docs.length`), bei neuen PDFs mitziehen.

## Figuren
- `build/make_figures.py` ist die einzige Quelle; `redraw_figs.py` wurde entfernt (falsche
  M1-Orientierung). Einzelne Figuren mit dem Kopf der Datei und `exec(head + block)` erzeugen.
- MZI/Michelson: 45°-Elemente als `/` zeichnen; `/` reflektiert links→oben und oben→rechts.
  Strahlen müssen in den Bauteilmitten enden, sonst wirkt der Aufbau falsch.
- `check_figs.py` meldet Achsentitel außerhalb der Zeichenfläche als Fehlalarm
  (`bbox_inches="tight"`); echte Überlappungen zählen.

## Fallen (teuer gelernt)
- Typst 0.15.1 kennt **kein** `planck.reduce`/`hbar` → `h\/(2 pi)` schreiben.
- Franck-Hertz: Es sind **Stromminima** (Einbrüche), nicht Maxima. `check_sources.py` meldet
  „Strommaxima“; Formelblatt/Last-Minute/Übung 18 waren falsch und sind korrigiert.
- Figuren-Fallen: `np.sinc(u/np.pi)**2` statt `sin(u)/where(u==0,...)` (Mitte sonst 0);
  `argmax` auf gefiltertem Array nicht mit dem Original indexieren; Regressionssteigung
  bei x in `10^14 Hz` ist ~0,41, nicht `m*1e14`.
- `check_physics.py` prüft 14 Konstanten/Formeln (pint/sympy).
- Regex-Lookbehind wirkt nicht auf `s[i:]`-Slices (Lookbehind sieht Stringanfang) →
  `pattern.match(s, i)` benutzen, sonst werden `\lambda` verdoppelt.
- `01_Schulwebsite/materialien/**` ist ein 1:1-Spiegel der Schulhomepage: **nie** per sed
  verändern, nach globalen Ersetzungen `git checkout -- <Pfad>`.
- `.agents/` (lokale Skills, ~5 MB) ist per .gitignore ausgeschlossen.
- Typst-Binary: `/tmp/typst-x86_64-unknown-linux-musl/typst` (0.15.1); `pymupdf`,
  `matplotlib`, `cairosvg`, `pint`, `sympy` ggf. per pip nachinstallieren.
## Neu 01.11.2026
- HTML-Leser: `build/make_lesen.py` (Typst-HTML) + `build/lesen/`; `make_pages.py` kopiert nach `_site/lesen/`.
- MZI-Grafik korrigiert (Würfel-Strahlteiler, Spiegel); `check_figs.py` regeneriert **alle** SVGs → danach nicht geänderte zurücksetzen.
- `check_sources.py`/`check_markdown.py` aus `build/` starten.
- Glossar: `glossar.html?q=…` filtert und springt zum exakten Begriff; Suchtreffer nutzen `#glossar-<slug>`. Nie die Klasse `treffer` für Glossareinträge verwenden: global `.treffer` wird mobil per CSS ausgeblendet.
