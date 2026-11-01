#!/usr/bin/env python3
"""Abbildungen für das Übungsheft Diagrammauswertung (SVG, Text als Pfade)."""
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

plt.rcParams.update({
    "svg.fonttype": "path", "font.family": "DejaVu Sans", "font.size": 9,
    "axes.linewidth": 0.8, "axes.edgecolor": "#333333", "lines.linewidth": 1.5,
})
BLUE, TEAL, ORANGE, RED, GREY = "#1F3864", "#0B7285", "#C05621", "#B03A2E", "#666666"
OUT = "fig"


def save(fig, name):
    fig.savefig(f"{OUT}/{name}.svg", bbox_inches="tight", transparent=True)
    plt.close(fig)
    print("ok", name)


def regress(x, y):
    m, b = np.polyfit(x, y, 1)
    pred = m * x + b
    ss_res = ((y - pred) ** 2).sum()
    ss_tot = ((y - y.mean()) ** 2).sum()
    return m, b, 1 - ss_res / ss_tot, y - pred


# 1 Resonanzrohr ------------------------------------------------------------
n = np.arange(1, 6)
L = np.array([0.1615, 0.3330, 0.5045, 0.6760, 0.8475]) + np.array([0.0010, -0.0015, 0.0008, -0.0006, 0.0012])
m1, b1, r1, _ = regress(n, L)
print(f"Resonanz: m={m1:.4f} m, b={b1:.4f} m, R2={r1:.6f}, c={2*m1*1000:.1f} m/s")
fig, ax = plt.subplots(figsize=(5.6, 3.0))
ax.plot([0.7, 5.3], [m1 * 0.7 + b1, m1 * 5.3 + b1], color=BLUE, lw=1.4)
ax.plot(n, L, "o", ms=5, mfc="white", mec=TEAL, mew=1.6)
ax.set_xlabel("Ordnung $n$"); ax.set_ylabel("Rohrlänge $L$ in m")
ax.set_xticks(n); ax.grid(alpha=0.25, lw=0.6)
ax.annotate("Steigung $\\lambda/2$", xy=(3.6, m1 * 3.6 + b1), xytext=(3.7, 0.40),
            color=BLUE, fontsize=8.5, arrowprops=dict(arrowstyle="->", color=BLUE, lw=0.9))
save(fig, "diag_resonanz")

# 2 Kondensator-Entladung ---------------------------------------------------
t = np.arange(0, 7)
U = 10.0 * np.exp(-t / 2.0) * np.array([1.0, 1.01, 0.99, 1.01, 0.98, 1.02, 0.99])
m2, b2, r2, _ = regress(t, np.log(U))
print(f"Entladung: m={m2:.4f} 1/s, b={b2:.4f}, R2={r2:.6f}, RC={-1/m2:.3f} s, C={-1/m2/1e6*1e6:.1f} uF")
fig, (a1, a2) = plt.subplots(1, 2, figsize=(6.6, 2.8))
a1.plot(t, U, "o", ms=4.5, mfc="white", mec=TEAL, mew=1.4)
a1.plot(np.linspace(0, 6, 60), 10 * np.exp(-np.linspace(0, 6, 60) / 2), color=BLUE, lw=1.2)
a1.set_xlabel("$t$ in s"); a1.set_ylabel("$U$ in V"); a1.grid(alpha=0.25, lw=0.6)
a1.set_title("linear aufgetragen", fontsize=8.5)
a2.plot(t, np.log(U), "o", ms=4.5, mfc="white", mec=ORANGE, mew=1.4)
a2.plot([0, 6], [b2, m2 * 6 + b2], color=BLUE, lw=1.2)
a2.set_xlabel("$t$ in s"); a2.set_ylabel("$\\ln(U/U_0)$"); a2.grid(alpha=0.25, lw=0.6)
a2.set_title("halblogarithmisch", fontsize=8.5)
fig.tight_layout()
save(fig, "diag_entladung")

# 3 Residuen / Modellkritik -------------------------------------------------
v = np.array([5, 10, 15, 20, 25, 30], float)
s = v**2 / (2 * 8.0) + np.array([0.25, -0.30, 0.20, -0.25, 0.30, -0.20])
m3, b3, r3, res3 = regress(v, s)
vv = v**2
m4, b4, r4, _ = regress(vv, s)
print(f"Bremsweg: linear v: m={m3:.4f}, R2={r3:.5f} | v^2: m={m4:.5f} 1/(2a), R2={r4:.6f}, a={1/(2*m4):.2f}")
fig, (a1, a2, a3) = plt.subplots(1, 3, figsize=(7.4, 2.7))
a1.plot(v, s, "o", ms=4.5, mfc="white", mec=TEAL, mew=1.4)
a1.plot(v, m3 * v + b3, color=BLUE, lw=1.2)
a1.set_xlabel("$v$ in m/s"); a1.set_ylabel("$s$ in m"); a1.grid(alpha=0.25, lw=0.6)
a2.axhline(0, color=GREY, lw=0.8)
a2.plot(v, res3, "o-", ms=4, color=RED, lw=1.0)
a2.set_xlabel("$v$ in m/s"); a2.set_ylabel("Residuum in m"); a2.grid(alpha=0.25, lw=0.6)
a3.plot(vv, s, "o", ms=4.5, mfc="white", mec=TEAL, mew=1.4)
a3.plot(vv, m4 * vv + b4, color=BLUE, lw=1.2)
a3.set_xlabel("$v^2$ in m²/s²"); a3.set_ylabel("$s$ in m"); a3.grid(alpha=0.25, lw=0.6)
fig.tight_layout()
save(fig, "diag_residuen")

# 4 Fehlerbalken g ----------------------------------------------------------
LL = np.array([0.20, 0.40, 0.60, 0.80, 1.00])
g_true = 9.81
TT = 2 * np.pi * np.sqrt(LL / g_true) + np.array([0.004, -0.006, 0.005, -0.004, 0.003])
T2 = TT**2
T2_err = 2 * TT * 0.01
m5, b5, r5, _ = regress(T2, LL)
g = 4 * np.pi**2 * m5
print(f"g-Bestimmung: m={m5:.4f} m/s^2, b={b5:.4f}, R2={r5:.6f}, g={g:.2f}")
fig, ax = plt.subplots(figsize=(5.4, 3.0))
ax.errorbar(T2, LL, xerr=T2_err, fmt="o", ms=4.5, mfc="white", mec=TEAL, mew=1.4,
            ecolor=GREY, elinewidth=0.9, capsize=2.5)
ax.plot(T2, m5 * T2 + b5, color=BLUE, lw=1.2)
ax.set_xlabel("$T^2$ in s²"); ax.set_ylabel("$L$ in m"); ax.grid(alpha=0.25, lw=0.6)
save(fig, "diag_g")

# 5 Steigungen deuten -------------------------------------------------------
fig, axes = plt.subplots(1, 3, figsize=(7.2, 2.4))
for ax, (xl, yl) in zip(axes, [("$t$ in s", "$s$ in m"), ("$I$ in A", "$U$ in V"), ("$\\Delta T$ in K", "$Q$ in kJ")]):
    ax.plot([0, 1], [0, 1], color=BLUE, lw=1.4)
    ax.set_xlabel(xl); ax.set_ylabel(yl); ax.grid(alpha=0.2, lw=0.5)
    ax.set_xticks([]); ax.set_yticks([])
fig.tight_layout()
save(fig, "diag_steigungen")
