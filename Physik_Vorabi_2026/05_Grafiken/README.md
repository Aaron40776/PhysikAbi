# Grafiken

Die Skripte verwenden jetzt die Original-Abbildungen der Unterrichtsseiten
(`schule/`, PNG/JPG). Die früheren eigenen SVG-Darstellungen bleiben als Arbeitsstand
im Ordner, werden aber nicht mehr eingebunden.

- `make_figures.py` – Diagramme (Intensitätsverläufe, Messkurven, Orbitale, Concept Map)
- `redraw_figs.py` – die Schemata (Rutherford, Bragg, Doppelspalt, Zeigerbild,
  Energieniveaus, Unbestimmtheit)
- `mk_map.py` – Concept Map der Gesamtübersicht

`schule/` wird bei jedem Lauf von `build/build_all.sh` aus `build/fig/schule/` neu
kopiert. **Nicht direkt hier bearbeiten** – Änderungen gehen beim nächsten Build verloren.

Prüfung der Abbildungen: `build/check_figs.py` (Textkollisionen, Clipping).
