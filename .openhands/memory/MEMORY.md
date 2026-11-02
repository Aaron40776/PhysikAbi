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

## Konventionen im Repo
- Belege immer als `datei:zeile` + Zitat; Prüfergebnisse gehören in
  `06_Qualitaetskontrolle/pruefbericht.md`, nicht in den Chat.
- `PROGRESS.md` wird nur ergänzt (Nachtrag mit Datum), nicht rückwirkend umgeschrieben.

## Website (GitHub Pages)
- **Stand 2026-11-02:** 7 Kernkapitel, **56 Seiten**, Glossar **92**, Suchindex 93 kB, ZIP 1,8 MB.
- Prüfkette: `TYPST=/tmp/typst-x86_64-unknown-linux-musl/typst ./build/check_all.sh`;
  braucht `pint` + `sympy` (`python3 -m pip install pint sympy`). Ohne TYPST bricht build_all ab.
- `build/check_markdown.py` überspringt `06_Qualitaetskontrolle/` (Berichte zitieren Typst-Formeln).
- Live `aaron40776.github.io/PhysikAbi` war am 2026-11-02 noch der alte Stand; kein Push in dem Durchgang.
- **Rechte:** `NUTZUNGSERLAUBNIS.md` (Repo-Root) dokumentiert die Freigabe des Repo-Inhabers, aber keine
  unterschriebene Freigabe des Schulseiten-Urhebers → P0-Release-Blocker bleibt.
- **Quellenwiderspruch:** Schulbox `09henelaser` sagt „Laser nicht mehr im KC“; KC Physik 2022 eA, S. 39
  verlangt He-Ne-Laser + Laseranwendung. Skript 7 hat deshalb einen als „ergänzend“ markierten Abschnitt.
- KC 2022 PDF (54 S.) liegt unter `/tmp/kc_physik.pdf`: `cuvo.nibis.de/cuvo.php?p=download&upload=306`.
- Pages läuft als **Workflow** (`.github/workflows/pages.yml`), Trigger u. a. `build/web/**`; testet
  vor dem Deploy. `_site/` ist ignoriert.
- Bauen: `cd Physik_Vorabi_2026 && python3 build/make_pages.py --out _site` (pymupdf);
  testen: `python3 build/test_pages.py` (baut temporär, prüft Index/Links/ZIP und ruft
  `node build/test_suche.js` für Ranking/Markierung/Phrasen).
- Quellen: `build/web/{index,lesen,suche}.html`, `style.css`, `suche.js` (Normalisierung, Bewertung,
  Ausschnitte, Panel), `index.js` (Lernstand, Weiterlesen), `lesen.js` (Textansicht),
  `suche-seite.js`. `make_pages.py` erzeugt `suche.json` (~185 kB) + ZIP.
- Index: Text je Seite blockweise; Kopf-/Fußzeilen und `\xad`-Trennungen entfernt; NFKC macht
  𝜆→λ und ℎ→h. Deckblatt und gedrucktes Inhaltsverzeichnis stehen in `doc.leer` (nicht durchsucht,
  im Leser ausgeblendet).
- Ranking: exakte Abschnittsüberschrift +8 (nur Einzelblock), Fließtext +2, Formelbruchstück −3,
  Titel/Kurztext +4 je Begriff, Dokumentname exakt +12 (auch auf Gruppen-Max).
- Assets tragen `?v=<Hash aus JSON+JS+CSS>`; ohne Änderung des Hashs cacht der Browser alte JS-Dateien.
- Neues PDF = Karte erscheint automatisch; Kurztext in `BESCHREIBUNG` ergänzen. Kopfzahlen über
  `__ANZAHL__`/`__GESAMT__`.

## Fallen (teuer gelernt)
- Typst 0.15.1 kennt **kein** `planck.reduce`/`hbar` → `h\/(2 pi)` schreiben.
- Regex-Lookbehind wirkt nicht auf `s[i:]`-Slices (Lookbehind sieht Stringanfang) →
  `pattern.match(s, i)` benutzen, sonst werden `\lambda` verdoppelt.
- `01_Schulwebsite/materialien/**` ist ein 1:1-Spiegel der Schulhomepage: **nie** per sed
  verändern, nach globalen Ersetzungen `git checkout -- <Pfad>`.
- `.agents/` (lokale Skills, ~5 MB) ist per .gitignore ausgeschlossen.
