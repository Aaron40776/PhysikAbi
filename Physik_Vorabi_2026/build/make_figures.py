#!/usr/bin/env python3
"""Erzeugt alle Grafiken für die Lernskripte als SVG (Text als Pfade)."""
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Rectangle, FancyArrowPatch, Circle, Arc, Polygon

plt.rcParams.update({
    "svg.fonttype": "path",
    "font.family": "DejaVu Sans",
    "font.size": 9,
    "axes.linewidth": 0.8,
    "axes.edgecolor": "#333333",
    "lines.linewidth": 1.6,
})
BLUE, TEAL, ORANGE, RED, GREY = "#1F3864", "#0B7285", "#C05621", "#B03A2E", "#666666"
OUT = "fig"

def save(fig, name):
    fig.savefig(f"{OUT}/{name}.svg", bbox_inches="tight", transparent=True)
    plt.close(fig)
    print("ok", name)

# ---------------------------------------------------------------- 1 Welle
fig, ax = plt.subplots(figsize=(6.4, 2.6))
x = np.linspace(0, 4*np.pi, 800)
ax.plot(x, np.sin(x), color=BLUE, label="t = 0")
ax.plot(x, np.sin(x-0.9), color=ORANGE, ls="--", label="t = Δt > 0")
ax.annotate("", xy=(np.pi/2+0.9, 0), xytext=(np.pi/2, 0),
            arrowprops=dict(arrowstyle="->", color=TEAL, lw=1.4))
ax.text(np.pi/2+0.45, 0.12, "Δx = c·Δt", color=TEAL, ha="center")
ax.annotate("", xy=(np.pi/2, 0), xytext=(np.pi/2, 1.0),
            arrowprops=dict(arrowstyle="<->", color=GREY, lw=0.9))
ax.text(np.pi/2-0.25, 0.55, "A", color=GREY)
ax.annotate("", xy=(2*np.pi, -1.15), xytext=(0, -1.15),
            arrowprops=dict(arrowstyle="<->", color=GREY, lw=0.9))
ax.text(np.pi, -1.05, "λ", color=GREY, ha="center")
ax.set_xlabel("Ort x"); ax.set_ylabel("Auslenkung s")
ax.set_yticks([]); ax.set_xticks([]); ax.set_ylim(-1.4, 1.35)
ax.legend(frameon=False, loc="upper right", fontsize=8)
ax.spines[["top", "right"]].set_visible(False)
save(fig, "welle_raumzeit")

# ---------------------------------------------------------------- 2 Zeigerkette
fig, ax = plt.subplots(figsize=(6.0, 2.3))
for k in range(14):
    ang = 0.42*k
    x0, y0 = k*0.62, 0
    ax.annotate("", xy=(x0+0.55*np.cos(ang), 0.55*np.sin(ang)), xytext=(x0, 0),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))
for k, t in [(0, "0"), (3, "T/4"), (7, "T/2"), (11, "3T/4")]:
    ax.text(k*0.62, -0.3, t, ha="center", color=GREY, fontsize=8)
ax.axhline(0, color="#AAAAAA", lw=0.6)
ax.set_xlim(-0.4, 8.6); ax.set_ylim(-0.75, 0.75)
ax.axis("off")
ax.set_title("Zeigerkette: gleichmäßig rotierende Zeiger längs der Ausbreitungsrichtung", fontsize=8.5, color=GREY)
save(fig, "zeigerkette")

# ---------------------------------------------------------------- 3 Doppelspalt-Geometrie
fig, ax = plt.subplots(figsize=(6.0, 3.0))
ax.plot([0, 0], [1.0, 2.2], color="#333333", lw=2)
ax.plot([0, 0], [-0.2, 0.8], color="#333333", lw=2)
ax.plot([0, 0], [2.35, 2.9], color="#333333", lw=2)
ax.plot([0, 0], [-0.9, -0.35], color="#333333", lw=2)
ax.text(-0.15, 2.55, "Doppelspalt", rotation=90, va="center", fontsize=8, color=GREY)
# Schirm
ax.plot([6, 6], [-1.6, 3.4], color=BLUE, lw=3)
ax.text(6.15, 3.2, "Schirm", color=BLUE, fontsize=8)
# Strahlen
ax.plot([0, 6], [0.15, 1.55], color=ORANGE, lw=1.2)
ax.plot([0, 6], [1.85, 1.55], color=ORANGE, lw=1.2)
ax.plot([0, 6], [0.15, 0.0], color="#BDBDBD", lw=0.9, ls=":")
ax.plot([0, 6], [1.85, 0.0], color="#BDBDBD", lw=0.9, ls=":")
ax.plot([0.1, 6.1], [1.0, 1.0], color=GREY, lw=0.8, ls="--")
ax.text(3.0, 1.08, "e", color=GREY, fontsize=9)
ax.annotate("", xy=(5.6, 0.0), xytext=(5.6, 1.0),
            arrowprops=dict(arrowstyle="<->", color=TEAL, lw=0.9))
ax.text(5.7, 0.45, "a$_n$", color=TEAL)
ax.plot([4.2, 4.9], [0.0, 0.0], color="k", lw=0)
ax.text(4.35, 0.12, "Maximum n-ter Ordnung", color=ORANGE, fontsize=7.5)
ax.text(-0.05, 1.0, "g", ha="right", color="#333333")
ax.annotate("", xy=(0.22, 1.85), xytext=(0.22, 0.15),
            arrowprops=dict(arrowstyle="<->", color="#333333", lw=0.9))
# Winkel
ax.add_patch(Arc((0, 0.15), 3.2, 3.2, theta1=0, theta2=14, color=TEAL, lw=1))
ax.text(1.85, 0.42, "α", color=TEAL, fontsize=9)
ax.set_xlim(-0.7, 7.0); ax.set_ylim(-1.8, 3.6); ax.axis("off")
save(fig, "doppelspalt_geometrie")

# ---------------------------------------------------------------- 4 Doppelspalt-Intensität
lam, g, e = 633e-9, 0.30e-3, 2.0
a = np.linspace(-0.03, 0.03, 4000)
alpha = np.arctan(a/e)
ds = g*np.sin(alpha)
I = np.cos(np.pi*ds/lam)**2
fig, ax = plt.subplots(figsize=(6.2, 2.4))
ax.plot(a*1000, I, color=BLUE, lw=0.9)
ax.set_xlabel("Ort auf dem Schirm a in mm")
ax.set_ylabel("Intensität I / I$_0$")
ax.set_xlim(-30, 30); ax.set_ylim(0, 1.15)
ax.grid(alpha=0.25, lw=0.5)
ax.annotate("", xy=(a[np.argmax(I[a > 0.001])]*1000, 0.55), xytext=(0, 0.55),
            arrowprops=dict(arrowstyle="<->", color=ORANGE, lw=1))
ax.text(4.5, 0.62, "Δa = λ·e/g", color=ORANGE, fontsize=8.5)
save(fig, "doppelspalt_intensitaet")

# ---------------------------------------------------------------- 5 Einzelspalt vs. Doppelspalt
b = 0.05e-3
alpha = np.arctan(a/e)
u = np.pi*b*np.sin(alpha)/lam
I_single = (np.sin(u)/np.where(u == 0, 1e-12, u))**2
fig, ax = plt.subplots(figsize=(6.2, 2.5))
ax.plot(a*1000, I_single, color=TEAL, lw=1.2, label="Einzelspalt (b = 50 µm)")
ax.plot(a*1000, I, color=BLUE, lw=0.9, alpha=0.8, label="Doppelspalt (g = 300 µm, b = 50 µm)")
ax.plot(a*1000, np.cos(np.pi*ds/lam)**2*I_single, color=ORANGE, lw=0.7, ls="--",
        label="Doppelspalt mit Beugungshülle")
ax.set_xlabel("Ort auf dem Schirm a in mm"); ax.set_ylabel("Intensität (normiert)")
ax.set_xlim(-30, 30); ax.set_ylim(0, 1.1)
ax.legend(frameon=False, fontsize=7.5)
save(fig, "einzelspalt_doppelspalt")

# ---------------------------------------------------------------- 6 Stehende Welle
fig, ax = plt.subplots(figsize=(6.2, 2.2))
x = np.linspace(0, 3*np.pi, 600)
for k, ph in enumerate([0, np.pi/4, np.pi/2]):
    ax.plot(x, np.cos(ph)*np.sin(x), color=[BLUE, ORANGE, TEAL][k], lw=1.3, alpha=0.9)
nodes = np.arange(0, 3*np.pi+0.01, np.pi)
ax.plot(nodes, np.zeros_like(nodes), "o", color=RED, ms=5)
ax.text(np.pi, 0.12, "Knoten (Δs = n·λ/2)", color=RED, ha="center", fontsize=8)
ax.annotate("Bauch", xy=(np.pi/2, 1.0), xytext=(np.pi/2-0.1, 1.25),
            arrowprops=dict(arrowstyle="->", color=GREY, lw=0.8), color=GREY, fontsize=8)
ax.set_xticks([]); ax.set_yticks([-1, 0, 1]); ax.set_xlabel("Ort x")
ax.set_ylim(-1.45, 1.5)
save(fig, "stehende_welle")

# ---------------------------------------------------------------- 7 Bragg
fig, ax = plt.subplots(figsize=(4.9, 2.9))
for y in [0.0, 0.9, 1.8]:
    ax.plot([0, 4.2], [y, y], color=GREY, lw=0.9)
    for xx in np.arange(0.1, 4.2, 0.4):
        ax.add_patch(Circle((xx, y), 0.07, color="#9AA5B1"))
ax.plot([0.7, 2.5], [2.6, 0.9], color=BLUE, lw=1.5)
ax.plot([2.5, 4.3], [0.9, 2.6], color=BLUE, lw=1.5)
ax.plot([2.5, 2.5], [0.9, 2.15], color=TEAL, ls="--", lw=1)
ax.plot([2.5, 3.15], [2.15, 2.15], color=ORANGE, ls="--", lw=1)
ax.text(2.6, 1.45, "d", color=TEAL)
ax.text(2.85, 2.22, "d·sin α", color=ORANGE, fontsize=8)
ax.add_patch(Arc((0.7, 2.6), 1.6, 1.6, theta1=270, theta2=326, color="#333333", lw=0.8))
ax.text(1.15, 2.05, "α", fontsize=9)
ax.text(4.25, 1.75, "Netzebenen", color=GREY, fontsize=8, rotation=90, va="center")
ax.set_xlim(0.2, 4.8); ax.set_ylim(-0.2, 2.9); ax.axis("off")
save(fig, "bragg")

# ---------------------------------------------------------------- 8 Elektronenbeugung (Bild)
fig, ax = plt.subplots(figsize=(3.0, 3.0))
xx, yy = np.meshgrid(np.linspace(-1, 1, 600), np.linspace(-1, 1, 600))
r = np.hypot(xx, yy)
ring = (np.exp(-((r-0.18)/0.02)**2) + 0.8*np.exp(-((r-0.36)/0.025)**2)
        + 0.5*np.exp(-((r-0.55)/0.03)**2) + 0.3*np.exp(-((r-0.78)/0.035)**2))
ring += 0.35*np.exp(-(r/0.05)**2)
img = np.clip(ring, 0, 1)
ax.imshow(1 - 0.82*img, cmap="gray", origin="lower", extent=[-1, 1, -1, 1], vmin=0, vmax=1)
ax.set_xticks([]); ax.set_yticks([])
ax.set_title("Beugungsbild (schematisch)", fontsize=8)
ax.text(0.5, -0.04, "Ringmuster (schematisch, invertiert)", transform=ax.transAxes,
        fontsize=7, color=GREY, ha="center", va="top")
save(fig, "elektronenbeugung_bild")

# ---------------------------------------------------------------- 9 Photoeffekt f-E-Diagramm
f = np.linspace(0, 15, 300)
fig, ax = plt.subplots(figsize=(5.6, 3.0))
for Wa, c, lab in [(2.1, BLUE, "Caesium, W$_A$ = 2,1 eV"),
                   (4.7, ORANGE, "Kupfer, W$_A$ = 4,7 eV"),
                   (2.3, TEAL, "Natrium, W$_A$ = 2,3 eV")]:
    E = 4.1357*f/1000 - Wa
    ax.plot(f, np.maximum(E, 0), color=c, lw=1.4, label=lab)
    ax.plot([Wa/4.1357*1000], [0], "o", color=c, ms=4)
ax.axhline(0, color="#333333", lw=0.8)
ax.set_xlabel("Frequenz f in 10$^{14}$ Hz"); ax.set_ylabel("E$_{kin,max}$ in eV")
ax.set_xlim(0, 15); ax.set_ylim(0, 4.6)
ax.legend(frameon=False, fontsize=7.5, loc="upper left")
ax.text(6.2, 0.35, "Steigung = h (für alle Metalle gleich)", color=GREY, fontsize=7.5)
ax.grid(alpha=0.2, lw=0.5)
save(fig, "photoeffekt_fE")

# ---------------------------------------------------------------- 10 LED: U_S über f
f = np.array([4.62, 5.10, 5.49, 5.83])*1e14
U = np.array([1.90, 2.10, 2.28, 2.43])
fig, ax = plt.subplots(figsize=(5.2, 3.0))
ax.plot(f/1e14, U, "o", color=BLUE, ms=5)
k, d = np.polyfit(f, U, 1)
ax.plot(f/1e14, (k*f+d), color=ORANGE, lw=1.2, label=f"Steigung = h/e")
ax.set_xlabel("Frequenz f in 10$^{14}$ Hz"); ax.set_ylabel("Spannung U$_S$ in V")
ax.set_xlim(4.4, 6.0); ax.set_ylim(1.7, 2.6)
ax.legend(frameon=False, fontsize=8)
ax.grid(alpha=0.2, lw=0.5)
save(fig, "led_hbestimmung")

# ---------------------------------------------------------------- 11 Potenzialtopf
fig, ax = plt.subplots(figsize=(5.4, 3.2))
ax.plot([0, 0, 1, 1], [0, 3.0, 3.0, 0], color="#333333", lw=2)
ax.plot([0, 1], [0, 0], color="#333333", lw=2)
for n in range(1, 4):
    E = 0.33*n**2
    ax.plot([0, 1], [E, E], color=BLUE, lw=1.2)
    ax.text(-0.06, E, f"n = {n}", ha="right", va="center", color=BLUE, fontsize=8)
ax.annotate("", xy=(1.0, 0.33), xytext=(1.0, 2.97),
            arrowprops=dict(arrowstyle="<->", color=ORANGE, lw=1))
ax.text(1.04, 1.6, "E$_{kin}$ – E$_{pot}$", color=ORANGE, fontsize=7.5, rotation=90, va="center")
ax.text(0.5, 3.1, "L", ha="center", color=GREY)
ax.annotate("", xy=(1.0, 3.05), xytext=(0, 3.05),
            arrowprops=dict(arrowstyle="<->", color=GREY, lw=0.8))
ax.set_xlim(-0.3, 1.25); ax.set_ylim(0, 3.6); ax.axis("off")
save(fig, "potenzialtopf")

# ---------------------------------------------------------------- 12 Energieniveaus Wasserstoff
fig, ax = plt.subplots(figsize=(5.6, 3.4))
nE = {1: -13.6, 2: -3.40, 3: -1.51, 4: -0.85, 5: -0.54, 6: -0.38}
for n, E in nE.items():
    ax.hlines(E+13.6, 0.05, 0.95, color=BLUE, lw=1.3)
    ax.text(0.98, E+13.6, f"n = {n}", va="center", fontsize=8, color=BLUE)
    ax.text(0.0, E+13.6, f"{E:.2f} eV".replace(".", ","), va="center", ha="right", fontsize=7.5, color=GREY)
trans = [(3, 2, 656), (4, 2, 486), (5, 2, 434), (6, 2, 410), (2, 1, 122)]
for i, (a1, b1, lam) in enumerate(trans):
    x = 0.18 + 0.13*i
    ax.annotate("", xy=(x, nE[b1]+13.6), xytext=(x, nE[a1]+13.6),
                arrowprops=dict(arrowstyle="->", color=ORANGE, lw=1.3))
    ax.text(x-0.02, (nE[a1]+nE[b1])/2+13.6, f"{lam} nm", rotation=90, va="center",
            ha="right", fontsize=6.5, color=ORANGE)
ax.text(0.55, 14.6, "Energie über dem Grundzustand in eV", fontsize=8, color=GREY)
ax.set_xlim(-0.45, 1.25); ax.set_ylim(-0.4, 15.4); ax.axis("off")
save(fig, "energieniveaus_h")

# ---------------------------------------------------------------- 13 Franck-Hertz
U = np.linspace(0, 30, 1200)
I = 1 + 0.055*U - 0.9*(1 - np.exp(-((U % 11.0)/1.1)**8)) * (U > 0)
I = np.clip(I, 0.06, None)
I = I * (1 - 0.004*U)
fig, ax = plt.subplots(figsize=(5.8, 3.0))
ax.plot(U+1.8, I, color=BLUE, lw=1.4)
for u in [1.8+11, 1.8+22]:
    ax.annotate("", xy=(u, 0.2), xytext=(u, 1.35),
                arrowprops=dict(arrowstyle="->", color=ORANGE, lw=1))
ax.text(13.3, 1.45, "ΔU ≈ 11 V", color=ORANGE, fontsize=8.5)
ax.set_xlabel("Beschleunigungsspannung U$_B$ in V")
ax.set_ylabel("Auffängerstrom I (a. E.)")
ax.set_xlim(0, 34); ax.set_ylim(0, 1.9)
ax.set_xticks([0, 11.8, 22.8, 33.8])
ax.set_xticklabels(["0", "11,8", "22,8", "33,8"])
ax.grid(alpha=0.2, lw=0.5)
save(fig, "franckhertz")

# ---------------------------------------------------------------- 14 Rutherford
fig, ax = plt.subplots(figsize=(5.4, 3.0))
ax.add_patch(Circle((0, 0), 0.10, color=RED, zorder=5))
ax.text(0.13, 0.10, "Kern", color=RED, fontsize=8)
for y0, col in [(0.9, BLUE), (0.5, TEAL), (0.2, ORANGE), (1.4, "#8E44AD")]:
    b = y0
    t = np.linspace(-4.0, 4.0, 800)
    x = (b**2*t)/(b**2+t**2)*0.9
    y = (-b*t**2)/(b**2+t**2)*0.9 + b*0.9/2
    ax.plot(x, y, color=col, lw=1.1)
ax.plot([], [], color=BLUE, lw=1, label="Streuparameter b")
ax.set_xlim(-2.4, 2.4); ax.set_ylim(-0.4, 1.7); ax.axis("off")
ax.set_title("Rutherford-Streuung: je kleiner b, desto größer der Ablenkwinkel", fontsize=8, color=GREY)
save(fig, "rutherford")

# ---------------------------------------------------------------- 15 Orbitale
fig, axes = plt.subplots(1, 3, figsize=(6.4, 2.3))
xx, yy = np.meshgrid(np.linspace(-3, 3, 300), np.linspace(-3, 3, 300))
r = np.hypot(xx, yy)
psi_1s = np.exp(-r)
psi_2s = (2-r)*np.exp(-r/2)
psi_2p = xx*np.exp(-r/2)
for ax, psi, t in zip(axes, [psi_1s, psi_2s, psi_2p],
                      ["1s: kugelsymmetrisch", "2s: eine Knotenfläche", "2p: zwei Keulen"]):
    ax.imshow(np.abs(psi)**2, extent=[-3, 3, -3, 3], cmap="Blues", origin="lower")
    ax.set_title(t, fontsize=8)
    ax.set_xticks([]); ax.set_yticks([])
save(fig, "orbitale")

# ---------------------------------------------------------------- 16 MZI
fig, ax = plt.subplots(figsize=(6.4, 2.9))
# Strahlteiler 1 links, ST2 rechts, Spiegel oben/unten
ax.plot([1.0, 1.9], [1.4, 1.4], color=ORANGE, lw=2)
ax.plot([1.4, 1.85], [0.95, 1.35], color="#555555", lw=3)
ax.text(1.62, 0.75, "ST 1", fontsize=8, ha="center", color="#555555")
ax.plot([1.9, 4.6], [1.4, 1.4], color=ORANGE, lw=1.6)
ax.plot([1.9, 4.6], [1.4, 2.55], color=ORANGE, lw=1.6)
ax.plot([1.85, 1.85], [2.55, 3.0], color="#555555", lw=3, alpha=0)
# Spiegel
ax.plot([2.4, 3.0], [3.05, 2.55], color="#555555", lw=3)
ax.text(2.72, 3.18, "Spiegel M1", fontsize=8, ha="center", color="#555555")
ax.plot([2.4, 3.0], [-0.25, 0.25], color="#555555", lw=3)
ax.text(2.72, -0.45, "Spiegel M2", fontsize=8, ha="center", color="#555555")
# Strahlengänge oben / unten
ax.plot([1.9, 1.9], [1.4, 2.55], color=ORANGE, lw=1.6)
ax.plot([2.7, 4.6], [2.75, 1.65], color=ORANGE, lw=1.6)
ax.plot([2.7, 4.6], [0.0, 1.15], color=ORANGE, lw=1.6)
ax.plot([1.9, 1.9], [1.4, 0.15], color=ORANGE, lw=1.6)
ax.plot([1.9, 2.7], [0.15, 0.0], color=ORANGE, lw=1.6)
ax.plot([4.6, 5.1], [1.4, 1.4], color="#555555", lw=3)
ax.text(4.85, 1.12, "ST 2", fontsize=8, ha="center", color="#555555")
ax.plot([4.9, 6.4], [1.4, 1.4], color=ORANGE, lw=1.6)
ax.plot([5.1, 6.4], [1.4, 2.5], color=ORANGE, lw=1.6)
ax.add_patch(Rectangle((6.4, 1.25), 0.3, 0.3, color=RED))
ax.add_patch(Rectangle((6.4, 2.35), 0.3, 0.3, color=RED))
ax.text(6.35, 1.0, "D1", fontsize=8, color=RED)
ax.text(6.35, 2.75, "D2", fontsize=8, color=RED)
ax.plot([0.4, 0.95], [1.4, 1.4], color=ORANGE, lw=2)
ax.text(0.2, 1.55, "Quelle", fontsize=8)
ax.set_xlim(0, 7.2); ax.set_ylim(-0.7, 3.5); ax.axis("off")
save(fig, "mzi")

# ---------------------------------------------------------------- 17 Unbestimmtheit
fig, axes = plt.subplots(1, 2, figsize=(6.2, 2.2), sharey=True)
for ax, b_, t in zip(axes, [0.2, 0.5], ["schmaler Spalt", "breiter Spalt"]):
    th = np.linspace(-0.035, 0.035, 2000)
    u = np.pi*b_*th/(550e-9*1e3)
    I2 = (np.sin(u)/np.where(u == 0, 1e-12, u))**2
    ax.plot(th*1000, I2, color=BLUE if b_ == 0.2 else TEAL, lw=1.2)
    ax.set_title(t, fontsize=8)
    ax.set_xlabel("Ort auf dem Schirm in mm")
    ax.set_xlim(-35, 35)
axes[0].set_ylabel("Intensität")
save(fig, "unbestimmtheit")

# ---------------------------------------------------------------- 18 Wellenfunktion
fig, ax = plt.subplots(figsize=(6.0, 2.4))
x = np.linspace(-6, 6, 800)
psi = np.exp(-x**2/4)*np.cos(2.2*x)
ax.plot(x, psi, color=BLUE, lw=1.2, label="Realteil Ψ(x)")
ax.fill_between(x, 0, psi**2, color=ORANGE, alpha=0.35, label="|Ψ(x)|²")
ax.axhline(0, color="#333333", lw=0.7)
ax.set_xlabel("Ort x"); ax.set_yticks([])
ax.legend(frameon=False, fontsize=8)
ax.set_title("Wellenpaket: das Betragsquadrat gibt die Aufenthaltswahrscheinlichkeit an",
             fontsize=8, color=GREY)
ax.spines[["top", "right", "left"]].set_visible(False)
save(fig, "wellenfunktion")

# ---------------------------------------------------------------- 19 QED-Zeiger
fig, ax = plt.subplots(figsize=(4.4, 2.6))
for ang, c, lab in [(0.0, BLUE, "Weg 1"), (2.0, ORANGE, "Weg 2")]:
    ax.annotate("", xy=(np.cos(ang), np.sin(ang)), xytext=(0, 0),
                arrowprops=dict(arrowstyle="-|>", color=c, lw=1.8))
res = np.array([np.cos(0)+np.cos(2.0), np.sin(0)+np.sin(2.0)])
ax.annotate("", xy=tuple(res), xytext=(0, 0),
            arrowprops=dict(arrowstyle="-|>", color=TEAL, lw=2.2))
ax.text(1.02, 0.08, "Zeiger 1", color=BLUE, fontsize=8)
ax.text(-0.35, 1.0, "Zeiger 2", color=ORANGE, fontsize=8)
ax.text(res[0]*0.55, res[1]+0.13, "Summe", color=TEAL, fontsize=8)
ax.add_patch(Arc((0, 0), 0.9, 0.9, theta1=0, theta2=115, color=GREY, lw=0.7, ls="--"))
ax.set_xlim(-1.0, 1.6); ax.set_ylim(-0.2, 1.6); ax.axis("off")
ax.set_title("Wahrscheinlichkeitsamplituden addieren sich als Zeiger", fontsize=8, color=GREY)
save(fig, "qed_zeiger")

# ---------------------------------------------------------------- 20 Reflexion/Brechung
fig, ax = plt.subplots(figsize=(4.6, 2.8))
ax.add_patch(Rectangle((-2, -1.4), 4, 1.4, color="#D6EAF8"))
ax.plot([-2, 2], [0, 0], color="#333333", lw=1.5)
ax.plot([0, 0], [-1.2, 1.2], color=GREY, lw=0.7, ls="--")
ax.annotate("", xy=(-1.0, 1.0), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.5))
ax.annotate("", xy=(1.0, 1.0), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=TEAL, lw=1.5))
ax.annotate("", xy=(0.6, -1.1), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=ORANGE, lw=1.5))
ax.add_patch(Arc((0, 0), 1.0, 1.0, theta1=135, theta2=180, color=GREY, lw=0.7))
ax.add_patch(Arc((0, 0), 1.0, 1.0, theta1=0, theta2=45, color=GREY, lw=0.7))
ax.text(-0.55, 0.22, "α", fontsize=8); ax.text(0.2, 0.28, "α", fontsize=8)
ax.text(0.66, -0.75, "β", fontsize=8)
ax.text(0.1, 0.62, "n$_1$", fontsize=8, color=BLUE)
ax.text(0.1, -1.25, "n$_2$ > n$_1$", fontsize=8, color=BLUE)
ax.set_xlim(-2, 2); ax.set_ylim(-1.4, 1.4); ax.axis("off")
save(fig, "reflexion_brechung")

print("fertig")

# ------------------------------------------------- Auswertung/Regression
f = np.array([7.4025, 6.8761, 5.4908, 5.1869])
U = np.array([1.16, 0.94, 0.37, 0.25])
m_, b_ = np.polyfit(f, U, 1)
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(7.0, 2.8),
                               gridspec_kw={"width_ratios": [1.35, 1]})
ax1.plot(f, U, "o", color=BLUE, ms=6, label="Messpunkte")
xf = np.linspace(5.0, 7.6, 50)
ax1.plot(xf, m_ * xf + b_, "-", color=RED, lw=1.4, label="Ausgleichsgerade")
ax1.set_xlabel(r"Frequenz $f$ in $10^{14}$ Hz")
ax1.set_ylabel(r"Gegenspannung $U_B$ in V")
ax1.set_title("Messreihe und Regression", fontsize=9)
ax1.legend(fontsize=7, loc="upper left", frameon=False)
ax1.annotate(f"Steigung {m_*1e14:.2f} V pro $10^{{14}}$ Hz",
             xy=(5.6, 0.36), xytext=(5.55, 0.95), fontsize=7, color=RED,
             arrowprops=dict(arrowstyle="->", color=RED, lw=0.7))
ax1.grid(alpha=0.25)
res = (U - (m_ * f + b_)) * 1000
ax2.axhline(0, color=GREY, lw=0.8)
ax2.vlines(f, 0, res, color=TEAL, lw=1.2)
ax2.plot(f, res, "o", color=TEAL, ms=5)
ax2.set_xlabel(r"Frequenz $f$ in $10^{14}$ Hz")
ax2.set_ylabel("Residuum in mV")
ax2.set_title("Residuen: kein Muster erkennbar", fontsize=9)
ax2.set_ylim(-4, 4)
ax2.grid(alpha=0.25)
fig.tight_layout()
save(fig, "regression")
