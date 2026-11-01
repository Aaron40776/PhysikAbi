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
- Pages läuft als **Workflow** (`.github/workflows/pages.yml`), Quelle main, Trigger: Änderungen an
  `03_Lernskripte/**`, `04_Zusatzmaterial/**`, `build/make_pages.py`.
- `build/make_pages.py` erzeugt `_site/index.html`; Titel/Kurztext je PDF aus dem dict
  `BESCHREIBUNG` (fehlender Schlüssel → Dateiname). Kopfzahlen über `__ANZAHL__`/`__GESAMT__`.
- Lokal testen: `python3 make_pages.py --out /tmp/site`.
- Neues PDF = Karte erscheint automatisch; nur Kurztext im dict ergänzen.

## Fallen (teuer gelernt)
- Typst 0.15.1 kennt **kein** `planck.reduce`/`hbar` → `h\/(2 pi)` schreiben.
- Regex-Lookbehind wirkt nicht auf `s[i:]`-Slices (Lookbehind sieht Stringanfang) →
  `pattern.match(s, i)` benutzen, sonst werden `\lambda` verdoppelt.
- `01_Schulwebsite/materialien/**` ist ein 1:1-Spiegel der Schulhomepage: **nie** per sed
  verändern, nach globalen Ersetzungen `git checkout -- <Pfad>`.
- `.agents/` (lokale Skills, ~5 MB) ist per .gitignore ausgeschlossen.
