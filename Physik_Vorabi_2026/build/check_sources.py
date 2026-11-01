#!/usr/bin/env python3
"""Lint der Typst-Quellen vor dem Build.

Fängt Fehler ab, die erst im PDF sichtbar werden:
* `","` außerhalb des Mathemodus (Typst macht daraus Anführungszeichen),
* `{,}` als Dezimalkomma (alte Schreibweise, rendert sichtbare Klammern),
* fremde Schriftsysteme (Copy-Paste-Reste),
* unpaarige `$`-Delimiter.
"""
import pathlib
import re
import sys

FREMD = re.compile(r"[\u0400-\u04FF\u4E00-\u9FFF\u3040-\u30FF\u0600-\u06FF\u0590-\u05FF]")


def lint(path):
    problems = []
    text = path.read_text()
    in_math = False
    line = 1
    i = 0
    while i < len(text):
        char = text[i]
        if char == "\n":
            line += 1
        if char == "\\":
            i += 2
            continue
        if char == "$":
            in_math = not in_math
            i += 1
            continue
        if not in_math and text.startswith('","', i):
            problems.append(f"{path}:{line}: '\",\"' im Textmodus")
        i += 1
    if in_math:
        problems.append(f"{path}: unpaariger '$'-Delimiter")
    for number, raw in enumerate(text.splitlines(), 1):
        if "{,}" in raw:
            problems.append(f"{path}:{number}: '{{,}}' statt Komma")
        if FREMD.search(raw):
            problems.append(f"{path}:{number}: fremdes Schriftsystem")
    return problems


if __name__ == "__main__":
    files = sorted(pathlib.Path("src").glob("*.typ")) + [pathlib.Path("template.typ")]
    findings = [problem for path in files for problem in lint(path)]
    for finding in findings:
        print("  ! " + finding)
    print(f"{len(files)} Quelldateien geprüft, {len(findings)} Befunde")
    sys.exit(1 if findings else 0)
