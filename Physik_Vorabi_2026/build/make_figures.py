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
for k in range(13):
    ang = 2*np.pi*k/12
    x0, y0 = k*0.62, 0
    ax.annotate("", xy=(x0+0.55*np.cos(ang), 0.55*np.sin(ang)), xytext=(x0, 0),
                arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.2))
for k, t in [(0, "0"), (3, "T/4"), (6, "T/2"), (9, "3T/4")]:
    ax.text(k*0.62, -0.3, t, ha="center", color=GREY, fontsize=8)
ax.axhline(0, color="#AAAAAA", lw=0.6)
ax.set_xlim(-0.4, 8.6); ax.set_ylim(-0.75, 0.75)
ax.axis("off")
ax.set_title("Zeigerkette: gleichmäßig rotierende Zeiger längs der Ausbreitungsrichtung", fontsize=8.5, color=GREY)
save(fig, "zeigerkette")

# ---------------------------------------------------------------- 3 Doppelspalt-Geometrie
# Zwei echte Spalte (Mitte bei y = ±g/2), Strahlen starten exakt in den
# Spaltmitten und treffen sich im Punkt P auf dem Schirm.
g, e, a_n = 0.70, 5.5, 1.50
fig, ax = plt.subplots(figsize=(6.4, 3.2))
for y0, y1 in [(-1.75, -g/2 - 0.1), (-g/2 + 0.1, g/2 - 0.1), (g/2 + 0.1, 1.75)]:
    ax.plot([0, 0], [y0, y1], color="#333333", lw=2.4, solid_capstyle="butt")
ax.text(-0.12, 1.45, "Doppelspalt", rotation=90, va="center", ha="right",
        fontsize=8, color=GREY)

# Schirm
ax.plot([e, e], [-1.6, 3.0], color=BLUE, lw=3)
ax.text(e + 0.15, 2.9, "Schirm", color=BLUE, fontsize=8)

# Strahlen von den Spaltmitten zum Maximum n-ter Ordnung
for y0 in (-g/2, g/2):
    ax.annotate("", xy=(e, a_n), xytext=(0, y0),
                arrowprops=dict(arrowstyle="-|>", color=ORANGE, lw=1.2,
                                mutation_scale=9, shrinkA=0, shrinkB=0))

# Achse, Abstand e, Abstand a_n, Spaltabstand g und Winkel alpha
ax.plot([0, e], [0, 0], color=GREY, lw=0.8, ls="--")
ax.annotate("", xy=(e, 0), xytext=(e, a_n),
            arrowprops=dict(arrowstyle="<->", color=TEAL, lw=1, shrinkA=0, shrinkB=0))
ax.text(e + 0.15, a_n/2, "a$_n$", color=TEAL, fontsize=9, va="center")
ax.annotate("", xy=(e, -1.55), xytext=(0, -1.55),
            arrowprops=dict(arrowstyle="<->", color=GREY, lw=0.9, shrinkA=0, shrinkB=0))
ax.text(e/2, -1.72, "e", color=GREY, fontsize=9, ha="center", va="top")
ax.annotate("", xy=(-0.18, -g/2), xytext=(-0.18, g/2),
            arrowprops=dict(arrowstyle="<->", color="#333333", lw=0.9, shrinkA=0, shrinkB=0))
ax.text(-0.28, 0, "d", color="#333333", fontsize=9, ha="right", va="center")

winkel = np.arctan(a_n/e)
ax.plot([0, e], [0, a_n], color=GREY, lw=0.7, ls=":")
ax.add_patch(Arc((0, 0), 2.4, 2.4, theta1=0, theta2=np.degrees(winkel), color=TEAL, lw=1))
ax.text(1.32, 0.20, "α", color=TEAL, fontsize=9)

ax.text(e - 1.5, a_n + 0.25, "Maximum n-ter Ordnung", color=ORANGE, fontsize=7.5)
ax.set_xlim(-0.7, e + 0.7); ax.set_ylim(-1.8, 3.2); ax.axis("off")
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
da_mm = lam * e / g * 1e3
ax.annotate("", xy=(da_mm, 0.55), xytext=(0, 0.55),
            arrowprops=dict(arrowstyle="<->", color=ORANGE, lw=1))
ax.text(da_mm + 0.6, 0.62, "Δa = λ·e/d", color=ORANGE, fontsize=8.5)
save(fig, "doppelspalt_intensitaet")

# ---------------------------------------------------------------- 5 Einzelspalt vs. Doppelspalt
b = 0.05e-3
alpha = np.arctan(a/e)
u = np.pi*b*np.sin(alpha)/lam
I_single = np.sinc(u/np.pi)**2
fig, ax = plt.subplots(figsize=(6.2, 2.5))
ax.plot(a*1000, I_single, color=TEAL, lw=1.2, label="Einzelspalt (b = 50 µm)")
ax.plot(a*1000, I, color=BLUE, lw=0.9, alpha=0.8, label="Doppelspalt (d = 300 µm, b = 50 µm)")
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
ax.text(np.pi, 0.12, "Knoten (Abstand λ/2)", color=RED, ha="center", fontsize=8)
ax.annotate("Bauch", xy=(np.pi/2, 1.0), xytext=(np.pi/2-0.1, 1.25),
            arrowprops=dict(arrowstyle="->", color=GREY, lw=0.8), color=GREY, fontsize=8)
ax.set_xticks([]); ax.set_yticks([-1, 0, 1]); ax.set_xlabel("Ort x")
ax.set_ylim(-1.45, 1.5)
save(fig, "stehende_welle")

# ---------------------------------------------------------------- 7 Bragg
# Zwei parallele Strahlen reflektieren an benachbarten Netzebenen. Die
# Projektionen der Strecke d auf die Strahlrichtung ergeben zweimal d·sin α,
# zusammen also den Gangunterschied 2·d·sin α.
d, alpha = 1.20, np.deg2rad(38)
A = np.array([2.30, 0.0])          # Reflexionspunkt obere Ebene
B = A + np.array([0.0, -d])        # Reflexionspunkt untere Ebene
u = np.array([np.cos(alpha), -np.sin(alpha)])   # einfallende Richtung
v = np.array([np.cos(alpha),  np.sin(alpha)])   # reflektierte Richtung
L = 1.35
fig, ax = plt.subplots(figsize=(5.4, 3.4))
for y in (0.0, -d):
    ax.plot([-0.4, 5.2], [y, y], color=GREY, lw=1.0)
    for xx in np.arange(-0.25, 5.2, 0.45):
        ax.add_patch(Circle((xx, y), 0.055, color="#9AA5B1", zorder=3))
# Einfallende und reflektierte Strahlen
for P in (A, B):
    ax.plot([P[0] - L*u[0], P[0] + L*v[0]], [P[1] - L*u[1], P[1] + L*v[1]],
            color=ORANGE, lw=1.4)
    ax.annotate("", xy=(P[0] - 0.08*u[0], P[1] - 0.08*u[1]),
                xytext=(P[0] - 0.55*u[0], P[1] - 0.55*u[1]),
                arrowprops=dict(arrowstyle="-|>", color=ORANGE, lw=1.1,
                                mutation_scale=8, shrinkA=0, shrinkB=0))
# Zusatzwege d·sin alpha auf der unteren Strahlbahn
Pp = B - d*np.sin(alpha)*u
Qq = B + d*np.sin(alpha)*v
ax.plot([A[0], Pp[0]], [A[1], Pp[1]], color=TEAL, ls="--", lw=0.9)
ax.plot([A[0], Qq[0]], [A[1], Qq[1]], color=TEAL, ls="--", lw=0.9)
ax.plot([B[0], Pp[0]], [B[1], Pp[1]], color=RED, lw=2.2)
ax.plot([B[0], Qq[0]], [B[1], Qq[1]], color=RED, lw=2.2)
ax.text((B[0]+Pp[0])/2 - 0.30, (B[1]+Pp[1])/2 - 0.16, "d·sin α", color=RED, fontsize=8)
ax.text((B[0]+Qq[0])/2 + 0.04, (B[1]+Qq[1])/2 + 0.10, "d·sin α", color=RED, fontsize=8)
# Schichtabstand d
ax.annotate("", xy=(4.82, A[1]), xytext=(4.82, B[1]),
            arrowprops=dict(arrowstyle="<->", color=TEAL, lw=1, shrinkA=0, shrinkB=0))
ax.text(4.92, -d/2, "d", color=TEAL, fontsize=9, ha="left", va="center")
# Winkel alpha zwischen Strahl und Netzebene
ax.add_patch(Arc(A, 1.5, 1.5, theta1=180-np.degrees(alpha), theta2=180, color="#333333", lw=0.9))
ax.text(A[0]-1.05, A[1]+0.10, "α", fontsize=9, color="#333333")
ax.text(5.25, -d/2, "Netzebenen", color=GREY, fontsize=8, rotation=90, va="center")
ax.set_xlim(-0.4, 5.6); ax.set_ylim(-1.45, 1.55); ax.axis("off")
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
for Wa, c, lab in [(1.94, BLUE, "Caesium, W$_A$ = 1,94 eV"),
                   (4.7, ORANGE, "Kupfer, W$_A$ = 4,7 eV"),
                   (2.3, TEAL, "Natrium, W$_A$ = 2,3 eV")]:
    E = 4.1357*f/10 - Wa
    ax.plot(f, np.maximum(E, 0), color=c, lw=1.4, label=lab)
    ax.plot([Wa/4.1357*10], [0], "o", color=c, ms=4)
ax.axhline(0, color="#333333", lw=0.8)
ax.set_xlabel("Frequenz f in 10$^{14}$ Hz"); ax.set_ylabel("E$_{kin,max}$ in eV")
ax.set_xlim(0, 15); ax.set_ylim(0, 4.6)
ax.legend(frameon=False, fontsize=7.5, loc="upper left")
ax.text(6.2, 0.35, "Steigung = h·10¹⁴ (für alle Metalle gleich)", color=GREY, fontsize=7.5)
ax.grid(alpha=0.2, lw=0.5)
save(fig, "photoeffekt_fE")

# ---------------------------------------------------------------- 10 LED: U_S über f
f = np.array([4.62, 5.10, 5.49, 5.83])*1e14
U = np.array([1.90, 2.10, 2.28, 2.43])
fig, ax = plt.subplots(figsize=(5.2, 3.0))
ax.plot(f/1e14, U, "o", color=BLUE, ms=5)
k, d = np.polyfit(f, U, 1)
ax.plot(f/1e14, (k*f+d), color=ORANGE, lw=1.2, label="Steigung = (h/e)·10¹⁴")
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
ax.text(1.04, 1.6, "E", color=ORANGE, fontsize=9, rotation=90, va="center")
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
    if n <= 4:
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
# Rampenförmiger Anstieg mit Einbrüchen bei 4,9 V, 9,8 V, 14,7 V ...;
# die Minima liegen exakt bei den Vielfachen der Anregungsenergie.
U = np.linspace(0, 30, 2400)
I = 0.12 + 0.045*U
for n in range(1, 7):
    I -= 0.30*np.exp(-((U - 4.9*n)/0.48)**2)
I = np.clip(I, 0.03, None)
fig, ax = plt.subplots(figsize=(5.8, 3.0))
ax.plot(U, I, color=BLUE, lw=1.5)
for u in [4.9, 9.8, 14.7, 19.6, 24.5]:
    y = 0.12 + 0.045*u
    ax.annotate("", xy=(u, y - 0.22), xytext=(u, y + 0.38),
                arrowprops=dict(arrowstyle="->", color=ORANGE, lw=1,
                                shrinkA=0, shrinkB=0))
ax.annotate("", xy=(9.8, 0.42), xytext=(4.9, 0.42),
            arrowprops=dict(arrowstyle="<->", color=TEAL, lw=1, shrinkA=0, shrinkB=0))
ax.text(7.35, 0.50, "ΔU ≈ 4,9 V", color=TEAL, fontsize=8.5, ha="center")
ax.set_xlabel("Beschleunigungsspannung U$_B$ in V")
ax.set_ylabel("Auffängerstrom I (a. E.)")
ax.set_xlim(0, 30); ax.set_ylim(0, 1.75)
ax.set_xticks([0, 5, 10, 15, 20, 25, 30])
ax.set_xticklabels(["0", "5", "10", "15", "20", "25", "30"])
ax.grid(alpha=0.2, lw=0.5)
save(fig, "franckhertz")

# ---------------------------------------------------------------- 14 Rutherford
fig, ax = plt.subplots(figsize=(6.0, 3.2))
ax.set_xlim(-7, 9); ax.set_ylim(-5.2, 5.2); ax.axis("off")
ax.add_patch(Circle((0, 0), 0.28, fc=ORANGE, ec="#7a3512", lw=0.8, zorder=5))
ax.text(0, -0.75, "Kern", ha="center", va="top", fontsize=8.5, color="#7a3512")

def orbit(b, col):
    # Coulomb-Bahn: Hyperbel mit Exzentrizität eps = sqrt(1 + 4b²), Apside auf der y-Achse
    eps = np.sqrt(1 + 4*b*b)
    phi = np.linspace(-np.arccos(1/eps) + 1e-4, np.arccos(1/eps) - 1e-4, 400)
    r = 2*b*b/(eps*np.cos(phi) - 1)
    x, y = r*np.sin(phi), r*np.cos(phi)
    m = r < 9
    ax.plot(x[m], y[m], color=col, lw=1.2)
    ax.annotate("", xy=(x[m][12], y[m][12]), xytext=(x[m][6], y[m][6]),
                arrowprops=dict(arrowstyle="-|>", color=col, lw=1.2, shrinkA=0, shrinkB=0))

for b, col in [(0.0, ORANGE), (0.45, ORANGE), (1.0, BLUE), (2.0, BLUE), (3.6, BLUE)]:
    if b == 0:
        # Kopfstoß: das Alpha-Teilchen kehrt am Kern um (Rückstreuung).
        ax.plot([-7, -0.35], [0, 0], color=ORANGE, lw=1.2)
        ax.annotate("", xy=(-0.55, 0), xytext=(-1.7, 0),
                    arrowprops=dict(arrowstyle="-|>", color=ORANGE, lw=1.2,
                                    shrinkA=0, shrinkB=0))
        ax.plot([-0.35, -7], [0.22, 0.22], color=ORANGE, lw=1.2, ls="--")
        ax.annotate("", xy=(-6.8, 0.22), xytext=(-5.7, 0.22),
                    arrowprops=dict(arrowstyle="-|>", color=ORANGE, lw=1.2,
                                    shrinkA=0, shrinkB=0))
        ax.text(-6.9, 0.48, "Kopfstoß ($b = 0$): Rückstreuung", fontsize=7.5, color=ORANGE)
        continue
    orbit(b, col)
ax.text(-6.9, 3.9, "Alpha-Teilchen", fontsize=8.5, color=BLUE, ha="left")
ax.annotate("", xy=(-5.3, 3.55), xytext=(-6.6, 3.55),
            arrowprops=dict(arrowstyle="-|>", color=BLUE, lw=1.1))
ax.text(-6.9, -4.6, "kleiner Stoßparameter $\\rightarrow$ große Ablenkung",
        fontsize=8, color=GREY)
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
# Klarer Aufbau: Quelle -> ST1; Arm 1 über M1 nach ST2, Arm 2 über M2 nach ST2.
# Strahlteiler sind als Würfel mit Diagonale gezeichnet, Spiegel als Linie.
fig, ax = plt.subplots(figsize=(6.8, 4.0))
ax.set_xlim(0, 10.7); ax.set_ylim(0, 6.85); ax.axis("off")

def pfeil(x1, y1, x2, y2, c=BLUE, lw=1.7):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle="-|>", color=c, lw=lw,
                                mutation_scale=10, shrinkA=0, shrinkB=0), zorder=2)

def spiegel(x, y, name, tx, ty, ha="center", va="center"):
    ax.plot([x-.30, x+.30], [y-.30, y+.30], color=GREY, lw=2.4,
            solid_capstyle="butt", zorder=4)
    ax.plot([x-.30, x+.30], [y-.22, y+.38], color="#B8C2CC", lw=.8,
            solid_capstyle="butt", zorder=3)
    ax.text(tx, ty, name, fontsize=8, color=GREY, ha=ha, va=va)

def teiler(x, y, name, tx, ty):
    ax.add_patch(Rectangle((x-.28, y-.28), .56, .56, fc="#EAF2F8",
                           ec=GREY, lw=1.1, zorder=3))
    ax.plot([x-.28, x+.28], [y-.28, y+.28], color=GREY, lw=1.2, zorder=4)
    ax.text(tx, ty, name, fontsize=8, color=GREY, ha="center", va="center")

# Quelle
ax.add_patch(Rectangle((.10, 2.65), 1.15, .70, fc="white", ec=BLUE, lw=1.2, zorder=3))
ax.text(.675, 3.0, "Laser", ha="center", va="center", fontsize=8, color=BLUE)
pfeil(1.25, 3.0, 1.92, 3.0)

# ST1 und die beiden Arme
teiler(2.2, 3.0, "ST 1", 2.2, 2.33)
pfeil(2.2, 3.28, 2.2, 4.68)          # Arm 1 nach oben
pfeil(2.48, 3.0, 6.92, 3.0)          # Arm 2 nach rechts
spiegel(2.2, 5.0, "M1", 1.82, 5.28, ha="right")
pfeil(2.52, 5.0, 6.92, 5.0)          # Arm 1 nach rechts
spiegel(7.2, 3.0, "M2", 7.2, 2.33)
pfeil(7.2, 3.32, 7.2, 4.68)          # Arm 2 nach oben

# ST2, Ausgänge und Detektoren
teiler(7.2, 5.0, "ST 2", 7.2, 5.58)
pfeil(7.48, 5.0, 8.55, 5.0)
pfeil(7.2, 5.28, 7.2, 6.10)
ax.add_patch(Rectangle((8.55, 4.65), 1.05, .70, fc="white", ec=RED, lw=1.2, zorder=3))
ax.text(9.075, 5.0, "D1", fontsize=9, color=RED, ha="center", va="center")
ax.add_patch(Rectangle((6.65, 6.10), 1.10, .55, fc="white", ec=RED, lw=1.2, zorder=3))
ax.text(7.2, 6.375, "D2", fontsize=9, color=RED, ha="center", va="center")

# Phasenplättchen im oberen Arm
ax.add_patch(Rectangle((4.05, 4.70), .55, .60, fc="#EAF2F8", ec=TEAL, lw=1.1, zorder=3))
ax.text(4.325, 4.55, "Phasen-\nplättchen", fontsize=7.5, color=TEAL,
        ha="center", va="top")

# Armlängen und Beschriftung
ax.text(1.82, 3.95, "Arm 1", fontsize=8, color=GREY, rotation=90, va="center")
ax.text(4.65, 2.55, "Arm 2", fontsize=8, color=GREY, ha="center")
ax.text(.15, 6.55, "Beide Arme gleich lang: 2 + 5 = 5 + 2", fontsize=8, color=GREY)
save(fig, "mzi")

# ---------------------------------------------------------------- 17 Unbestimmtheit
fig, axes = plt.subplots(1, 2, figsize=(6.2, 2.2), sharey=True)
for ax, b_, t in zip(axes, [0.2, 0.5], ["schmaler Spalt", "breiter Spalt"]):
    th = np.linspace(-0.035, 0.035, 2000)
    u = np.pi*b_*th/(550e-9*1e3)
    I2 = np.sinc(u/np.pi)**2
    ax.plot(th*1000, I2, color=BLUE if b_ == 0.2 else TEAL, lw=1.2)
    ax.set_title(t, fontsize=8)
    ax.set_xlabel("Ort auf dem Schirm in mm")
    ax.set_xlim(-35, 35)
axes[0].set_ylabel("Intensität")
fig.subplots_adjust(wspace=0.3)
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
# Links: Δφ = 0, die Zeiger zeigen gegeneinander -> D1 bleibt dunkel.
# Rechts: beliebige Phasendifferenz, die Resultierende bestimmt die Zählrate.
fig, axes = plt.subplots(1, 2, figsize=(6.4, 2.7))
for k, (ax, delta, titel) in enumerate(zip(
        axes, [0.0, np.pi/2],
        ["Δφ = 0: Zeiger heben sich auf (D1 dunkel)", "Δφ = 90°: Resultierende"])):
    z1 = np.array([1.0, 0.0])
    z2 = np.array([np.cos(np.pi - delta), np.sin(np.pi - delta)])
    for z, c in ((z1, BLUE), (z2, ORANGE)):
        ax.annotate("", xy=tuple(z), xytext=(0, 0),
                    arrowprops=dict(arrowstyle="-|>", color=c, lw=1.9,
                                    mutation_scale=11, shrinkA=0, shrinkB=0))
    res = z1 + z2
    if np.hypot(*res) > 0.05:
        ax.annotate("", xy=tuple(res), xytext=(0, 0),
                    arrowprops=dict(arrowstyle="-|>", color=TEAL, lw=2.2,
                                    mutation_scale=11, shrinkA=0, shrinkB=0))
        ax.text(res[0]*0.5, res[1]*0.5 + 0.12, "Summe", color=TEAL, fontsize=8,
                ha="center")
    else:
        ax.text(0, -0.28, "Summe = 0", color=TEAL, fontsize=8, ha="center")
    ax.text(1.02, 0.06, "Zeiger 1", color=BLUE, fontsize=7.5, ha="left", va="bottom")
    ax.text(-1.02, 0.06, "Zeiger 2", color=ORANGE, fontsize=7.5, ha="right", va="bottom")
    ax.add_patch(Arc((0, 0), 0.7, 0.7, theta1=180, theta2=180 - np.degrees(delta),
                     color=GREY, lw=0.7, ls="--"))
    ax.set_xlim(-1.15, 1.55); ax.set_ylim(-0.45, 1.45)
    ax.set_aspect("equal"); ax.axis("off")
    ax.set_title(titel, fontsize=8, color=GREY)
fig.tight_layout()
save(fig, "qed_zeiger")

# ---------------------------------------------------------------- 20 Reflexion/Brechung
fig, ax = plt.subplots(figsize=(4.6, 2.8))
ax.add_patch(Rectangle((-2, -1.4), 4, 1.4, color="#D6EAF8"))
ax.plot([-2, 2], [0, 0], color="#333333", lw=1.5)
ax.plot([0, 0], [-1.2, 1.2], color=GREY, lw=0.7, ls="--")
ax.annotate("", xy=(0, 0), xytext=(-1.0, 1.0), arrowprops=dict(arrowstyle="->", color=BLUE, lw=1.5))
ax.annotate("", xy=(1.0, 1.0), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=TEAL, lw=1.5))
ax.annotate("", xy=(0.6, -1.1), xytext=(0, 0), arrowprops=dict(arrowstyle="->", color=ORANGE, lw=1.5))
ax.add_patch(Arc((0, 0), 1.0, 1.0, theta1=90, theta2=135, color=GREY, lw=0.7))
ax.add_patch(Arc((0, 0), 1.0, 1.0, theta1=45, theta2=90, color=GREY, lw=0.7))
ax.add_patch(Arc((0, 0), 1.0, 1.0, theta1=-90, theta2=-61.4, color=GREY, lw=0.7))
ax.text(-0.30, 0.60, "α", fontsize=8); ax.text(0.24, 0.60, "α", fontsize=8)
ax.text(0.20, -0.82, "β", fontsize=8)
ax.text(-1.90, 0.55, "n$_1$", fontsize=8, color=BLUE, ha="left")
ax.text(-1.90, -1.25, "n$_2$ > n$_1$", fontsize=8, color=BLUE, ha="left")
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
ax1.annotate(f"Steigung {m_:.2f} V je $10^{{14}}$ Hz",
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

# ------------------------------------------------- Michelson (Skript 1)
# Strahlteiler in der Mitte: ein Teil nach oben zum festen, ein Teil nach rechts
# zum beweglichen Spiegel. Beide laufen zurück und werden nach unten zum Schirm
# überlagert. Elemente und Strahlen treffen sich exakt in den Bauteilen.
fig, ax = plt.subplots(figsize=(6.4, 3.8))
ax.set_xlim(0, 9.6); ax.set_ylim(0, 5.6); ax.axis("off")

def mpfeil(x1, y1, x2, y2, c=RED, lw=1.4, ls="-"):
    ax.annotate("", xy=(x2, y2), xytext=(x1, y1),
                arrowprops=dict(arrowstyle="-|>", color=c, lw=lw, ls=ls,
                                mutation_scale=9, shrinkA=0, shrinkB=0))

# Laser links
ax.add_patch(Rectangle((0.2, 2.55), 1.0, 0.55, fc=GREY, ec="none"))
ax.text(0.7, 2.3, "Laser", ha="center", fontsize=8, color=GREY)
mpfeil(1.2, 2.82, 3.96, 2.82)

# Strahlteiler bei (4.0, 2.82), 45°
ax.plot([3.32, 4.68], [2.14, 3.50], color=BLUE, lw=2.4, solid_capstyle="butt")
ax.text(4.82, 2.0, "Strahlteiler", fontsize=8, color=BLUE, ha="left", va="top")

# Arm 1: nach oben zum festen Spiegel und zurück
mpfeil(4.0, 2.95, 4.0, 4.45)
ax.add_patch(Rectangle((3.45, 4.45), 1.1, 0.18, fc=TEAL, ec="none"))
ax.text(4.0, 4.8, "fester Spiegel", ha="center", fontsize=8, color=TEAL)
mpfeil(4.18, 4.35, 4.18, 3.0, ls=":")

# Arm 2: nach rechts zum beweglichen Spiegel und zurück
mpfeil(4.15, 2.82, 7.55, 2.82)
ax.add_patch(Rectangle((7.55, 2.2), 0.16, 1.24, fc=ORANGE, ec="none"))
ax.text(7.85, 3.75, "beweglicher\nSpiegel", fontsize=8, color=ORANGE, va="bottom")
mpfeil(7.4, 3.05, 4.3, 3.05, ls=":")

# Verschiebung Δd am beweglichen Spiegel
ax.annotate("", xy=(7.95, 3.0), xytext=(7.95, 2.2),
            arrowprops=dict(arrowstyle="<->", color=ORANGE, lw=0.9, shrinkA=0, shrinkB=0))
ax.text(8.1, 2.6, "Δd", fontsize=8, color=ORANGE, va="center")

# Ausgang nach unten zum Schirm
mpfeil(3.88, 2.7, 3.88, 1.05)
ax.plot([3.2, 4.6], [1.05, 1.05], color=GREY, lw=2.4, solid_capstyle="butt")
ax.text(4.75, 1.05, "Schirm", fontsize=8, color=GREY, va="center")
ax.text(0.25, 0.35, "Gangunterschied  Δs = 2·Δd", fontsize=9, color=BLUE)

save(fig, "michelson")
