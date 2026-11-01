#!/usr/bin/env python3
"""Prüft Naturkonstanten und Schlüsselformeln der Skripte gegen CODATA-Werte.

Die Sollwerte sind die im Material gedruckten Zahlen. Abweichungen über der
Toleranz bedeuten: entweder Konstante falsch oder Rechenweg falsch.
"""
import sys

import pint
import sympy as sp

u = pint.UnitRegistry()
EH = 6.62607015e-34 * u.J * u.s
C = 2.99792458e8 * u.m / u.s
E = 1.602176634e-19 * u.C
ME = 9.1093837015e-31 * u.kg
MP = 1.67262192369e-27 * u.kg
R = 1.0973731568160e7 / u.m

checks = [
    ("h·c (Formelblatt: 1239,8 eV nm)", (EH * C).to(u.eV * u.nm).magnitude, 1239.8, 0.1),
    ("mp/me (Formelblatt: etwa 1836)", (MP / ME).to("").magnitude, 1836, 1),
    ("R·h·c (Formelblatt: 13,6 eV)", (R * EH * C).to(u.eV).magnitude, 13.6, 0.05),
    ("λ(4 kV) (Übungsheft: 19,4 pm)",
     (EH / (2 * ME * E * 4000 * u.V) ** 0.5).to(u.pm).magnitude, 19.4, 0.1),
    ("E1, L=0,5 nm (Übungsheft: 1,50 eV)",
     (EH**2 / (8 * ME * (0.5 * u.nm) ** 2)).to(u.eV).magnitude, 1.50, 0.01),
    ("λ(4,9 eV) (Übungsheft: 253 nm)", (EH * C / (4.9 * u.eV)).to(u.nm).magnitude, 253, 1),
    ("λmin(25 kV) (Prüfbericht: 49,6 pm)",
     (EH * C / (25 * u.kV * E)).to(u.pm).magnitude, 49.6, 0.1),
]

failures = 0
for label, measured, expected, tolerance in checks:
    ok = abs(measured - expected) <= tolerance
    failures += not ok
    print(f"{'ok ' if ok else 'FEHLER'} {label}: {measured:.4g} (Soll {expected})")

n, h, m, length = sp.symbols("n h m L", positive=True)
energy = sp.simplify((n * h / (2 * length)) ** 2 / (2 * m))
identity = sp.simplify(energy - n**2 * h**2 / (8 * m * length**2)) == 0
failures += not identity
print(f"{'ok ' if identity else 'FEHLER'} E_n = n²h²/(8mL²) symbolisch aus p = nh/(2L)")

sys.exit(1 if failures else 0)
