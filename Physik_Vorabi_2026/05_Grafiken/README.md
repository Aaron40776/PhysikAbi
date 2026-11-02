# Grafiken

Die meisten Abbildungen der Skripte sind Vektorgrafiken (SVG), erzeugt von Skripten in
`../build/`. Ausnahme: `mzi_source.png` ist die Originalabbildung aus dem Schulmaterial
(siehe `QUELLEN.md`).

- `make_figures.py` – Diagramme (Intensitätsverläufe, Messkurven, Orbitale, Concept Map)
- `redraw_figs.py` – die Schemata (MZI, Rutherford, Bragg, Doppelspalt, QED-Zeiger,
  Energieniveaus, Unbestimmtheit)
- `mk_map.py` – Concept Map der Gesamtübersicht

Die Dateien in diesem Ordner werden bei jedem Lauf von `build/build_all.sh` aus
`build/fig/` neu kopiert. **Nicht direkt hier bearbeiten** – Änderungen gehen beim
nächsten Build verloren.

Prüfung der Abbildungen: `build/check_figs.py` (Textkollisionen, Clipping).

## Fremdabbildungen

- `mzi_source.png` – Mach-Zehnder-Aufbau aus „Physik am Gymnasium Westerstede“,
  <https://www.physik.gym-wst.de/docs/d13/13quantenobjekte/06machzehnderinterferometer/docs/mzi01.png>.
  Verwendung mit Erlaubnis; Quellenangabe steht in der Bildunterschrift.
