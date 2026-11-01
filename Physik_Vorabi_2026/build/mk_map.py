import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch
plt.rcParams.update({"svg.fonttype":"path","font.family":"DejaVu Sans","font.size":8})
fig, ax = plt.subplots(figsize=(9.2,4.4))
ax.set_xlim(0,100); ax.set_ylim(0,48); ax.axis("off")
cols={"w":"#1F3864","q":"#0B7285","a":"#C05621","m":"#5B2C87"}
def box(x,y,w,h,t,c,fs=7.6):
    ax.add_patch(FancyBboxPatch((x,y),w,h,boxstyle="round,pad=0.35,rounding_size=1.2",
        fc="white",ec=c,lw=1.4))
    ax.text(x+w/2,y+h/2,t,ha="center",va="center",fontsize=fs,color=c,wrap=True)
def arr(x1,y1,x2,y2,c="#555555"):
    ax.add_patch(FancyArrowPatch((x1,y1),(x2,y2),arrowstyle="-|>",mutation_scale=9,
        color=c,lw=1.0,shrinkA=2,shrinkB=2))
# Welle-Kette
box(1,33,17,8,"Schwingung\n$T$, $f$, $\\omega$",cols["w"])
box(21,33,17,8,"Welle\n$c=\\lambda f$",cols["w"])
box(41,33,18,8,"Interferenz\n$\\Delta s$, Kohärenz",cols["w"])
box(62,33,16,8,"Doppelspalt\nGitter, Bragg",cols["w"])
box(81,33,17,8,"Wellenlängen-\nmessung",cols["w"])
for a,b in [(18,21),(38,41),(59,62),(78,81)]: arr(a+0.5,37,b-0.5,37)
# Quantenkette
box(1,17,17,8,"Planck\n$E=hf$",cols["q"])
box(21,17,17,8,"Photon\n$p=h/\\lambda$",cols["q"])
box(41,17,18,8,"Materiewelle\nde Broglie",cols["q"])
box(62,17,16,8,"Einzelquanten\nKomplementarität",cols["q"])
box(81,17,17,8,"MZI / QED\nDelayed Choice",cols["q"])
for a,b in [(18,21),(38,41),(59,62),(78,81)]: arr(a+0.5,21,b-0.5,21)
# Atomkette
box(1,1,17,8,"Rutherford\nKern-Hülle",cols["a"])
box(21,1,17,8,"Bohr\n$E_n=-13{,}6/n^2$",cols["a"])
box(41,1,18,8,"Potenzialtopf\nQuantisierung",cols["a"])
box(62,1,16,8,"Spektren\n$\\Delta E=hf$",cols["a"])
box(81,1,17,8,"Orbitale\nPauliprinzip",cols["a"])
for a,b in [(18,21),(38,41),(59,62),(78,81)]: arr(a+0.5,5,b-0.5,5)
# Querverbindungen
arr(9,33,9,25,cols["m"]); ax.text(9.8,28.4,"h wird sichtbar",fontsize=6.6,color=cols["m"],rotation=90,va="center")
arr(50,33,50,25,cols["m"]); ax.text(50.8,28.4,"Beugung = Interferenz",fontsize=6.6,color=cols["m"],rotation=90,va="center")
arr(70,25,70,9,cols["m"]); ax.text(70.8,16.4,"Anregung durch Photonen",fontsize=6.6,color=cols["m"],rotation=90,va="center")
ax.text(1,45.5,"Wellen",fontsize=10,color=cols["w"],weight="bold")
ax.text(1,29.5,"Quanten",fontsize=10,color=cols["q"],weight="bold")
ax.text(1,13.5,"Atome",fontsize=10,color=cols["a"],weight="bold")
fig.savefig("fig/gesamtuebersicht.svg",bbox_inches="tight",transparent=True)
print("ok")
