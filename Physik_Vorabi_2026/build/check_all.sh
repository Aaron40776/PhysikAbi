#!/bin/bash
# Vollständige Prüfkette: Quellen, Markdown, Physik, Satz, PDFs.
set -euo pipefail
cd "$(dirname "$0")"

python3 check_sources.py      # Typst-Quellen
python3 check_markdown.py     # Formeln in .md (LaTeX statt Typst-Syntax)
python3 check_physics.py      # Konstanten (pint) und Formeln (sympy)
./build_all.sh                # 17 PDFs setzen
python3 qa_pdf.py ../03_Lernskripte/*.pdf ../04_Zusatzmaterial/*.pdf

echo "Alle Prüfungen bestanden."
