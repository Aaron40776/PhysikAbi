# Prüfbericht

Stand: 01.11.2026 · Werkzeug: Typst 0.15.1 (Satz), PyMuPDF (Prüfung), Python 3.13

## Prüfkette

1. `build/check_sources.py` prüft die Typst-Quellen, bevor gesetzt wird.
2. `build/check_markdown.py` prüft Formeln in allen 122 Markdown-Dateien auf LaTeX-Syntax.
3. `build/check_physics.py` prüft Konstanten (`pint`) und Formeln (`sympy`) gegen die im Material
   gedruckten Sollwerte.
4. `build/build_all.sh` setzt alle 16 Dokumente mit festem `SOURCE_DATE_EPOCH`.
5. `build/qa_pdf.py` prüft die fertigen PDFs und bricht mit Exit-Code 1 ab, wenn Befunde bleiben.

Ein Kommando für alles: `build/check_all.sh`.

## Geprüfte Kriterien

1. PDF öffnet fehlerfrei, Seitenzahl und Textmenge werden erfasst.
2. Keine nicht gerenderten Formelreste (Dollarzeichen, Backslash-Befehle, `sqrt`, `frac`, geschweifte Klammern).
3. Keine Anführungszeichen zwischen Ziffern (kaputtes Dezimalkomma).
4. Kein Textblock ragt aus dem Satzspiegel.
5. Keine fast leeren Seiten ab Seite 3.
6. Vektorzeichnungen vorhanden (Abbildungen sind Pfade, keine Rasterbilder).
7. Quellen-Lint: `","` nur im Mathemodus, kein `{,}`, keine fremden Schriftsysteme, paarige Dollar-Delimiter.

## Ergebnis

| Dokument | Seiten | Wörter | Zeichen | Vektorobjekte | Befunde |
|---|---:|---:|---:|---:|---:|
| `01_Wellen_und_Interferenz` | 9 | 1.053 | 11.176 | 766 | 0 |
| `02_Lichtquanten_und_Planck` | 6 | 865 | 8.604 | 378 | 0 |
| `03_Elektronenwellen_und_Beugung` | 7 | 753 | 7.951 | 238 | 0 |
| `04_Doppelspalt_und_Quantenphysik` | 6 | 761 | 8.007 | 429 | 0 |
| `05_MZI_Welcher_Weg_Delayed_Choice_QED` | 6 | 850 | 8.469 | 214 | 0 |
| `06_Atommodelle_und_Orbitalmodell` | 7 | 810 | 8.072 | 393 | 0 |
| `07_Spektren_und_Franck_Hertz` | 6 | 819 | 8.528 | 373 | 0 |
| `Abitur_Analyse` | 5 | 809 | 9.080 | 76 | 0 |
| `Experimentesammlung` | 5 | 1.084 | 15.275 | 44 | 0 |
| `Formelblatt` | 5 | 721 | 7.759 | 171 | 0 |
| `Gesamtuebersicht` | 5 | 672 | 7.857 | 424 | 0 |
| `Last_Minute_Lernzettel` | 4 | 610 | 6.137 | 56 | 0 |
| `Lernfahrplan` | 4 | 586 | 5.360 | 72 | 0 |
| `Regression_und_Auswertung` | 7 | 1.488 | 13.276 | 470 | 0 |
| `Uebungsheft_20_Aufgaben` | 13 | 4.262 | 34.385 | 269 | 0 |
| `Uebungsheft_Diagrammauswertung` | 7 | 1.137 | 9.800 | 734 | 0 |

**Summe: 16 Dokumente, 102 Seiten, 17.284 Wörter, 169.734 Zeichen, 5.123 Vektorobjekte, 0 Befunde.**

Aufteilung: 7 Lernskripte (47 Seiten, 5.911 Wörter) und 8 Zusatzdokumente (48 Seiten, 10.233 Wörter).

Zählweise: Wörter ab zwei Zeichen aus der Textextraktion; Symbole in Formeln zählen nicht mit.
Deshalb liegt der Wert niedriger als eine Zählung über den Typst-Quelltext.

## In dieser Überarbeitung gefunden und behoben

| # | Befund | Ort | Korrektur |
|---|---|---|---|
| 1 | `","` im Textmodus erzeugt typografische Anführungszeichen, sichtbar als `17„,“5` | `f6_uebungen.typ` Z. 379, 429, 452, 693 | durch echtes Komma ersetzt (0,3 %, 1,5 %, 17,5 keV, 0,154 nm) |
| 2 | Fremdsprachiges Copy-Paste-Rest „принадлежит“ | `f6_uebungen.typ` Z. 396 | „gehört“ |
| 3 | Sachfehler: `U_B(f)` als „fallende Gerade“ bezeichnet, obwohl `U_B` mit `f` steigt | `f6_uebungen.typ` Z. 409 | „steigende Gerade“ |
| 4 | Recheninkonsistenz: `7,40 − 5,19 = 2,21`, im Text stand `2,22`; dadurch Steigung und `h` leicht falsch | `f6_uebungen.typ` Z. 413–415 | `2,21`; Steigung `4,12·10⁻¹⁵ V s`; `h = 6,60·10⁻³⁴ J s` |

Ursache von Befund 1: Der frühere Fix gegen sichtbare Klammern hatte `{,}` global durch `","`
ersetzt. In Formeln ist das richtig, im Fließtext nicht. `check_sources.py` erkennt diesen
Unterschied jetzt über die Dollar-Delimiter.

## Formeltypografie in den PDFs

Typst setzt `a\/b` als Schrägstrich und `a/b` als gestapelten Bruch mit Bruchstrich. In
36 abgesetzten Gleichungen (Übungsheft 18, Regression 15, Elektronenwellen 2, Wellen 1) stand
der Schrägstrich, obwohl ein Bruchstrich gemeint war. Umgestellt wurde nur der *abgesetzte*
Teil; in Fließtextformeln bleibt der Schrägstrich, weil ein gestapelter Bruch die Zeilenhöhe
sprengen würde. In Exponenten (`^(1\/2)`) bleibt er ebenfalls.

Ergebnis: 102 Seiten wie zuvor, aber 36 zusätzliche Bruchstriche (Vektorobjekte 4.355 → 5.123).

Einheiten wurden geprüft: Im Mathemodus müssen sie in Anführungszeichen stehen (`"m"`), sonst
setzt Typst sie kursiv. Alle 9 Auffälligkeiten waren Variablen (Amplitude $A$, Masse $m$,
Weg $s$), keine Einheiten – das Material war hier bereits korrekt.

## Formeln in Markdown

GitHub und VS Code rendern `$...$` als LaTeX. In vier Dateien stand dort Typst-Syntax
(`$c = lambda f$`, `$6","626 dot 10^(-34)$`, `$D\/m$`), die als Textmüll erscheint.
Umgestellt wurden 23 Formeln:

| Datei | Formeln | Beispiel |
|---|---:|---|
| `06_Qualitaetskontrolle/review.md` | 17 | `$h = 6{,}626 \cdot 10^{-34}$` |
| `00_Projektverwaltung/RECHERCHEERGEBNISSE.md` | 4 | `$n\lambda = g\sin(\arctan(a_n/e))$` |
| `00_Projektverwaltung/THEMENSTATUS.md` | 2 | `$c = \lambda f$` |

Der Schulspiegel (`01_Schulwebsite/`, 112 Seiten) verwendet bereits korrektes LaTeX und
blieb unverändert. Geprüft: alle 47 Formeln der drei Dateien rendern fehlerfrei; der Linter
findet in 122 Dateien keine Typst-Syntax, keine unpaarigen Klammern und keine ungeraden
Dollar-Zahlen mehr.

## Reproduzierbarkeit

Vor den inhaltlichen Änderungen wurde das Projekt neu gebaut: alle 15 PDFs waren
byte-identisch zum Stand im Repo (gleiche Typst-Version, gleicher `SOURCE_DATE_EPOCH`).
Quellen und PDFs waren also synchron. Nach den Korrekturen wurde erneut gebaut; nur das
Übungsheft ändert sich.

## Frühere Prüfung (unverändert gültig)

- Dezimalkomma-Paare an 303 Stellen ersetzt, fehlende Klammern bei Zehnerexponenten
  ergänzt, Mathematik in Anführungszeichen aufgelöst, Kopfzeile auf der Inhaltsseite ergänzt,
  Tippfehler korrigiert.
- Naturkonstanten und Stichproben der Rechenwege nachgerechnet.

## Plausibilitätsprüfung dieser Runde

- Konstanten und Schlüsselformeln reproduzierbar geprüft mit `build/check_physics.py`
  (`pint` + `sympy`): `h·c = 1239,84 eV nm`, `m_p/m_e = 1836,15`, `R·h·c = 13,61 eV`,
  `λ(4 kV) = 19,39 pm`, `E1(0,5 nm) = 1,504 eV`, `λ(4,9 eV) = 253,0 nm`, `λmin(25 kV) = 49,59 pm`.
  Die Ableitung `E_n = n²h²/(8mL²)` aus `p = nh/(2L)` ist symbolisch bestätigt. ✔
- Alle 20 Aufgabenlösungen des Übungshefts nachgerechnet; Befunde 3 und 4 waren die einzigen
  Abweichungen. ✔
- Abbildungen: 27 SVGs in `build/fig/`, 27 in `05_Grafiken/`, byte-identisch, alle 27 im Satz
  referenziert; keine verwaiste Datei. ✔

## Grenzen

- Die NIBIS-Aufgaben 2016–2024 bleiben unausgewertet (Bot-Schutz), siehe `abitur_analyse.md`.
- Die Prüfung findet Formfehler und Rechenfehler, keine fachlich falschen Erklärungen.
