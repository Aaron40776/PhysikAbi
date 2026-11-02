# Grafiken

Die Abbildungen sind Vektorgrafiken (SVG). Die meisten werden von Skripten in `../build/`
erzeugt; die MZI-Schemazeichnung `mzi_clean.svg` ist eine eigene, korrigierte Darstellung.

- `make_figures.py` – Diagramme (Intensitätsverläufe, Messkurven, Orbitale, Concept Map)
- `redraw_figs.py` – die Schemata (Rutherford, Bragg, Doppelspalt, Zeigerbild,
  Energieniveaus, Unbestimmtheit)
- `mk_map.py` – Concept Map der Gesamtübersicht

Die Dateien in diesem Ordner werden bei jedem Lauf von `build/build_all.sh` aus
`build/fig/` neu kopiert. **Nicht direkt hier bearbeiten** – Änderungen gehen beim
nächsten Build verloren.

Prüfung der Abbildungen: `build/check_figs.py` (Textkollisionen, Clipping).
