#!/usr/bin/env python3
r"""Prüft Formeln in Markdown-Dateien auf GitHub-taugliches LaTeX.

GitHub rendert `$...$` als LaTeX. Typst-Syntax (`lambda`, `frac(a)(b)`, `\/`)
erscheint dort als Textmüll statt als Formel.
"""
import pathlib
import re
import sys

TYPST = re.compile(
    r"(?<![\\\w])(lambda|alpha|beta|gamma|Delta|Omega|phi|pi|theta|mu|nu|omega|sigma|"
    r"epsilon|rho|dot|degree|approx|times|frac|sqrt|plus\.minus)(?![A-Za-z])"
    r"|(?<!\\)\\/|\^\(|>=|<=|->"
)
CODE_FENCE = re.compile(r"```.*?```|~~~.*?~~~", re.S)
INLINE_CODE = re.compile(r"`[^`\n]*`")
MATH = re.compile(r"\$\$(.+?)\$\$|\$([^$\n]+?)\$", re.S)


def strip_indented_code(text):
    """Entfernt Codeblöcke mit vier Leerzeichen, die auf eine Leerzeile folgen.

    Eingerückte Listenfortsetzungen bleiben stehen: Sie folgen einer nicht leeren Zeile.
    """
    lines = []
    in_code = False
    for line in text.splitlines():
        indented = line.startswith("    ") or line.startswith("\t")
        if indented:
            if in_code or not lines or not lines[-1].strip():
                in_code = True
                lines.append("")
                continue
        if line.strip():
            in_code = False
        lines.append(line)
    return "\n".join(lines)


def lint(path):
    raw = path.read_text(errors="replace")
    text = strip_indented_code(INLINE_CODE.sub("", CODE_FENCE.sub("", raw)))
    problems = []
    for match in MATH.finditer(text):
        body = match.group(1) or match.group(2)
        line = text[: match.start()].count("\n") + 1
        for token in TYPST.finditer(body):
            problems.append(f"{path}:{line}: Typst-Syntax {token.group(0)!r} in Formel")
        if '","' in body:
            problems.append(f"{path}:{line}: Dezimalkomma als ','\"' statt '{{,}}'")
        if body.count("{") != body.count("}"):
            problems.append(f"{path}:{line}: unpaarige Klammern in Formel")
    if text.count("$") % 2:
        problems.append(f"{path}: ungerade Anzahl '$' außerhalb von Code")
    return problems


if __name__ == "__main__":
    files = [p for p in pathlib.Path("..").rglob("*.md") if ".agents" not in p.parts]
    findings = [problem for path in files for problem in lint(path)]
    for finding in findings[:40]:
        print("  ! " + finding)
    print(f"{len(files)} Markdown-Dateien geprüft, {len(findings)} Befunde")
    sys.exit(1 if findings else 0)
