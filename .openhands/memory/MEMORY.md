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
