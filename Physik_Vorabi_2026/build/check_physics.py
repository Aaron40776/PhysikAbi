#!/usr/bin/env python3
"""Prüft Naturkonstanten und Schlüsselformeln der Skripte gegen CODATA-Werte.

Die Sollwerte sind die im Material gedruckten Zahlen. Abweichungen über der
Toleranz bedeuten: entweder Konstante falsch oder Rechenweg falsch.
"""
import math
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
    ("h·c (Skript 2: 1239,8 eV nm)", (EH * C).to(u.eV * u.nm).magnitude, 1239.8, 0.1),
    ("mp/me (Konstante: etwa 1836)", (MP / ME).to("").magnitude, 1836, 1),
    ("R·h·c (Skript 7: 13,6 eV)", (R * EH * C).to(u.eV).magnitude, 13.6, 0.05),
    ("λ(4 kV) (Skript 3: 19,4 pm)",
     (EH / (2 * ME * E * 4000 * u.V) ** 0.5).to(u.pm).magnitude, 19.4, 0.1),
    ("E1, L=0,5 nm (Skript 6: 1,50 eV)",
     (EH**2 / (8 * ME * (0.5 * u.nm) ** 2)).to(u.eV).magnitude, 1.50, 0.01),
    ("λ(4,9 eV) (Skript 2: 253 nm)", (EH * C / (4.9 * u.eV)).to(u.nm).magnitude, 253, 1),
    ("λmin(25 kV) (Skript 7: 49,6 pm)",
     (EH * C / (25 * u.kV * E)).to(u.pm).magnitude, 49.6, 0.1),
    ("E(600 nm) (Skript 2: 2,07 eV)",
     (EH * C / (600 * u.nm)).to(u.eV).magnitude, 2.07, 0.01),
    ("Kmax(400 nm, W_A=2,2 eV) (Skript 2: 0,90 eV)",
     (EH * C / (400 * u.nm)).to(u.eV).magnitude - 2.2, 0.90, 0.02),
    ("Rydberg 3→2 (Skript 7: 656 nm)",
     (1 / (R * (1 / 4 - 1 / 9))).to(u.nm).magnitude, 656.1, 0.5),
    ("Doppelspalt λ (Skript 1/4; d=0,10 mm, a=6 mm, e=1 m; 600 nm)",
     (0.10 * u.mm * math.sin(math.atan(6e-3 / 1.0))).to(u.nm).magnitude, 600, 0.5),
    ("MZI P_D1(Δφ=90°) (Skript 5)",
     math.sin(math.pi / 4) ** 2, 0.5, 1e-12),
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
