import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.patches import Rectangle, FancyArrow, Arc, Circle

plt.rcParams.update({"svg.fonttype":"path","font.family":"DejaVu Sans","font.size":9,
                     "axes.linewidth":0.8,"mathtext.fontset":"dejavusans"})
NAVY="#1F3864"; ORANGE="#C05621"; TEAL="#0B7285"; GREY="#555555"; LGREY="#9E9E9E"
OUT="fig"

def save(fig,name):
    fig.savefig(f"{OUT}/{name}.svg",bbox_inches="tight",transparent=True)
    plt.close(fig)
    print("ok",name)

def arrow(ax,x1,y1,x2,y2,c,ly=1.4,**kw):
    ax.annotate("",xy=(x2,y2),xytext=(x1,y1),
                arrowprops=dict(arrowstyle="-|>",color=c,lw=ly,shrinkA=0,shrinkB=0,
                                mutation_scale=10,**kw))

# ---------------------------------------------------------------- MZI
fig,ax=plt.subplots(figsize=(7.0,4.3))
ax.set_xlim(-0.2,11.2); ax.set_ylim(-0.2,7.2); ax.axis("off")
# Quelle
ax.add_patch(Rectangle((0.25,1.15),1.25,0.7,fc="white",ec=NAVY,lw=1.3))
ax.text(0.875,1.5,"Quelle",ha="center",va="center",fontsize=8.5,color=NAVY)
# Strahl zur ST1
arrow(ax,1.5,1.5,2.05,1.5,ORANGE)
# ST1 (45 Grad)
ax.plot([1.72,2.28],[1.22,1.78],color=TEAL,lw=2.6,solid_capstyle="butt")
ax.text(2.36,1.20,"ST 1",fontsize=8.5,color=TEAL,ha="left",va="top")
# Arm 1: senkrecht nach oben
arrow(ax,2.0,1.5,2.0,4.42,ORANGE)
# Arm 2: waagerecht nach rechts
arrow(ax,2.0,1.5,7.95,1.5,ORANGE)
ax.text(4.9,1.66,"Arm 2",fontsize=8,color=LGREY,ha="center")
ax.text(2.14,3.1,"Arm 1",fontsize=8,color=LGREY,ha="left")
# Spiegel M1 oben links: reflektiert oben -> rechts
ax.plot([1.72,2.28],[4.78,4.22],color=GREY,lw=3,solid_capstyle="butt")
ax.text(1.62,4.92,"Spiegel M1",fontsize=8.5,color=GREY,ha="right",va="bottom")
# Spiegel M2 unten rechts: reflektiert rechts -> oben
ax.plot([7.72,8.28],[1.22,1.78],color=GREY,lw=3,solid_capstyle="butt")
ax.text(8.36,1.05,"Spiegel M2",fontsize=8.5,color=GREY,ha="left",va="top")
# Strahlen von Spiegeln zu ST2
arrow(ax,2.0,4.5,7.95,4.5,ORANGE)
arrow(ax,8.0,1.5,8.0,4.42,ORANGE)
# ST2
ax.plot([7.72,8.28],[4.22,4.78],color=TEAL,lw=2.6,solid_capstyle="butt")
ax.text(7.62,4.92,"ST 2",fontsize=8.5,color=TEAL,ha="right",va="bottom")
# Ausgaenge
arrow(ax,8.0,4.5,9.95,4.5,ORANGE)
arrow(ax,8.0,4.5,8.0,6.35,ORANGE)
# Detektoren
ax.add_patch(Rectangle((9.95,4.15),1.05,0.7,fc="white",ec=TEAL,lw=1.3))
ax.text(10.47,4.5,"D1",ha="center",va="center",fontsize=9,color=TEAL)
ax.add_patch(Rectangle((7.45,6.35),1.1,0.6,fc="white",ec=TEAL,lw=1.3))
ax.text(8.0,6.65,"D2",ha="center",va="center",fontsize=9,color=TEAL)
save(fig,"mzi")

# ---------------------------------------------------------------- Rutherford
fig,ax=plt.subplots(figsize=(6.2,3.4))
ax.set_xlim(-7,9); ax.set_ylim(-5.2,5.2); ax.axis("off")
ax.add_patch(Circle((0,0),0.28,fc=ORANGE,ec="#7a3512",lw=0.8,zorder=5))
ax.text(0,-0.75,"Kern",ha="center",va="top",fontsize=8.5,color="#7a3512")
def orbit(b,color,lw=1.3):
    eps=np.sqrt(1+4*b*b); phi_max=np.arccos(1/eps)
    phi=np.linspace(-phi_max+1e-4,phi_max-1e-4,400)
    r=2*b*b/(eps*np.cos(phi)-1)
    x=r*np.sin(phi); y=r*np.cos(phi)
    m=r<9
    ax.plot(x[m],y[m],color=color,lw=lw)
    arrow(ax,x[m][6],y[m][6],x[m][12],y[m][12],color,ly=lw)
for b,c in [(0.0,ORANGE),(0.45,ORANGE),(1.0,NAVY),(2.0,NAVY),(3.6,NAVY)]:
    if b==0:
        ax.plot([-7,0],[0,0],color=ORANGE,lw=1.3)
        ax.plot([0.35,7],[0,0],color=ORANGE,lw=1.3)
        arrow(ax,4.0,0,5.2,0,ORANGE)
        continue
    orbit(b,c)
ax.text(-6.9,3.9,"Alpha-Teilchen",fontsize=8.5,color=NAVY,ha="left")
arrow(ax,-6.6,3.55,-5.3,3.55,NAVY,ly=1.1)
ax.text(-6.9,-4.6,"kleiner Stoßparameter $\\rightarrow$ große Ablenkung",fontsize=8,color=GREY)
ax.text(-6.9,4.9,"Rutherford-Streuung an Gold",fontsize=9,color=NAVY)
save(fig,"rutherford")

# ---------------------------------------------------------------- Bragg
fig,ax=plt.subplots(figsize=(5.6,3.2))
ax.set_xlim(-1.2,6.4); ax.set_ylim(-2.6,3.0); ax.axis("off")
for y in (0.0,-1.5):
    ax.plot([-1.0,6.0],[y,y],color=GREY,lw=1.1)
    for x in np.arange(-0.9,6.0,0.55):
        ax.plot([x,x],[y-0.10,y+0.10],color=LGREY,lw=0.6)
ax.text(6.15,0.0,"Netzebene 1",fontsize=8,color=GREY,va="center")
ax.text(6.15,-1.5,"Netzebene 2",fontsize=8,color=GREY,va="center")
arrow(ax,1.0,2.6,2.15,1.35,ORANGE)
ax.text(0.78,2.62,"einfallend",fontsize=8,color=ORANGE,ha="left",va="bottom")
arrow(ax,2.55,1.2,3.7,-0.05,ORANGE)
arrow(ax,3.7,-0.05,4.55,0.9,ORANGE)
ax.text(4.6,0.95,"reflektiert",fontsize=8,color=ORANGE,ha="left")
ax.plot([2.35,2.35],[1.4,2.35],color=GREY,lw=0.9,ls="--")
ax.plot([2.35,3.35],[1.4,1.4],color=LGREY,lw=0.9,ls=":")
ax.plot([2.35,3.35],[-1.5,-1.5],color=LGREY,lw=0.9,ls=":")
ax.add_patch(Arc((2.35,1.4),1.4,1.4,theta1=60,theta2=90,color=TEAL,lw=1.0))
ax.text(2.05,1.95,"$\\alpha$",fontsize=9,color=TEAL,ha="right")
ax.annotate("",xy=(1.55,0.0),xytext=(1.55,-1.5),
            arrowprops=dict(arrowstyle="<->",color=TEAL,lw=1.0))
ax.text(1.45,-0.75,"$d$",fontsize=9,color=TEAL,ha="right",va="center")
ax.text(-1.15,-2.45,"Gangunterschied benachbarter Ebenen: $2d\\sin\\alpha$",fontsize=8.5,color=GREY)
save(fig,"bragg")

# ---------------------------------------------------------------- Doppelspalt-Geometrie
fig,ax=plt.subplots(figsize=(6.4,3.2))
ax.set_xlim(-1.0,7.6); ax.set_ylim(-1.9,3.7); ax.axis("off")
for y0,y1 in [(-1.8,-0.95),(-0.55,0.35),(0.75,1.65),(2.05,3.5)]:
    ax.plot([0,0],[y0,y1],color="#333333",lw=2.2,solid_capstyle="butt")
ax.text(-0.12,2.6,"Doppelspalt",rotation=90,va="center",ha="right",fontsize=8.5,color=GREY)
ax.plot([6,6],[-1.7,3.4],color=NAVY,lw=3,solid_capstyle="butt")
ax.text(6.15,3.2,"Schirm",color=NAVY,fontsize=8.5)
# Strahlen von beiden Spalten zum Punkt a_n = 0
arrow(ax,0.05,-0.10,5.95,0.30,ORANGE,ly=1.0)
arrow(ax,0.05,1.20,5.95,0.30,ORANGE,ly=1.0)
ax.plot([0.05,5.95],[-0.50,0.30],color=LGREY,lw=0.8,ls=":")
ax.plot([0.05,5.95],[1.40,0.30],color=LGREY,lw=0.8,ls=":")
ax.plot([0,6],[0.65,0.65],color=GREY,lw=0.8,ls="--")
ax.text(3.0,0.80,"$e$",color=GREY,fontsize=9,ha="center")
ax.annotate("",xy=(5.72,0.30),xytext=(5.72,0.65),
            arrowprops=dict(arrowstyle="<->",color=TEAL,lw=0.9,shrinkA=0,shrinkB=0))
ax.text(5.80,0.47,"$a_n$",color=TEAL,fontsize=9,ha="left",va="center")
ax.add_patch(Arc((0,0.65),2.6,2.6,theta1=-6,theta2=12,color=TEAL,lw=0.9))
ax.text(1.42,0.86,"$\\alpha$",color=TEAL,fontsize=9)
ax.annotate("",xy=(0.32,-0.10),xytext=(0.32,1.20),
            arrowprops=dict(arrowstyle="<->",color="#333333",lw=0.9,shrinkA=0,shrinkB=0))
ax.text(0.40,0.55,"$g$",color="#333333",fontsize=9,va="center")
ax.text(6.15,-0.05,"Maximum $n$-ter\nOrdnung",color=ORANGE,fontsize=7.5,va="top")
save(fig,"doppelspalt_geometrie")

# ---------------------------------------------------------------- QED-Zeiger
fig,ax=plt.subplots(figsize=(4.6,3.0))
ax.set_xlim(-1.5,2.0); ax.set_ylim(-0.6,1.8); ax.axis("off")
ax.set_aspect("equal")
a1=0.0; a2=2.0
v1=np.array([np.cos(a1),np.sin(a1)]); v2=np.array([np.cos(a2),np.sin(a2)])
arrow(ax,0,0,v1[0],v1[1],NAVY,ly=1.9)
arrow(ax,0,0,v2[0],v2[1],ORANGE,ly=1.9)
ax.plot([v2[0],v1[0]+v2[0]],[v2[1],v1[1]+v2[1]],color=LGREY,lw=0.9,ls=":")
ax.plot([v1[0],v1[0]+v2[0]],[v1[1],v1[1]+v2[1]],color=LGREY,lw=0.9,ls=":")
res=v1+v2
arrow(ax,0,0,res[0],res[1],TEAL,ly=2.4)
ax.text(1.02,-0.16,"Zeiger 1",color=NAVY,fontsize=8.5,ha="left")
ax.text(-1.45,0.78,"Zeiger 2",color=ORANGE,fontsize=8.5,ha="left")
ax.text(res[0]/2-0.05,res[1]/2+0.32,"Summe",color=TEAL,fontsize=8.5,ha="center")
ax.add_patch(Arc((0,0),0.8,0.8,theta1=0,theta2=115,color=GREY,lw=0.7,ls="--"))
ax.text(0.30,0.30,"$\\Delta\\varphi$",fontsize=8.5,color=GREY)
ax.text(-1.45,1.60,"Amplituden addieren sich",fontsize=9,color=NAVY)
save(fig,"qed_zeiger")

# ---------------------------------------------------------------- Energieniveaus H (neu)
fig,ax=plt.subplots(figsize=(5.8,4.0))
ax.set_xlim(-1.45,4.75); ax.set_ylim(-15.2,1.6); ax.axis("off")
levels={1:-13.6,2:-3.40,3:-1.51,4:-0.85}
for n,E in levels.items():
    ax.plot([0,1.25],[E,E],color=NAVY,lw=2.2,solid_capstyle="butt")
    ax.text(-0.10,E,f"$n={n}$",fontsize=9,color=NAVY,ha="right",va="center")
    ax.text(1.32,E,f"{-E:.2f} eV".replace(".",","),
            fontsize=8,color=GREY,ha="left",va="center")
ax.plot([0,1.25],[0,0],color=LGREY,lw=1.0,ls="--")
ax.text(1.32,0.12,"Ionisationsgrenze  0 eV",fontsize=8,color=LGREY,ha="left",va="bottom")
trans=[(4,2,486,"4\u21922",2.05),(3,2,656,"3\u21922",2.85),(2,1,122,"2\u21921",2.45)]
for (hi,lo,lam,lab,x) in trans:
    y1,y2=levels[hi],levels[lo]
    ax.annotate("",xy=(x,y2),xytext=(x,y1),
                arrowprops=dict(arrowstyle="-|>",color=ORANGE,lw=1.2,mutation_scale=9,shrinkA=0,shrinkB=0))
    ax.text(x+0.10,(y1+y2)/2,f"{lab}: {lam} nm",fontsize=8,color=ORANGE,ha="left",va="center")
ax.text(-1.42,1.30,"Energie in eV",fontsize=9,color=GREY)
save(fig,"energieniveaus_h")

# ---------------------------------------------------------------- Unbestimmtheit (neu)
fig,axes=plt.subplots(1,2,figsize=(6.6,2.6))
for k,(ax,b,lab) in enumerate(zip(axes,[0.06,0.20],["schmaler Spalt","breiter Spalt"])):
    ax.set_xlim(-1.0,1.0); ax.set_ylim(-0.15,1.15)
    ax.axhline(0,color="white",lw=0)
    sig={"schmaler Spalt":0.42,"breiter Spalt":0.17}[lab]
    x=np.linspace(-1,1,800)
    I=np.sinc(x/sig)**2
    ax.plot(x,I,color=NAVY,lw=1.3)
    ax.fill_between(x,I,color=NAVY,alpha=0.08)
    ax.set_xlabel("Ort auf dem Schirm $a$",fontsize=8)
    ax.set_xticks([-0.6,0,0.6]); ax.set_xticklabels(["-0,6","0","+0,6"],fontsize=8)
    ax.set_yticks([0,0.5,1.0]); ax.set_yticklabels(["0","0,5","1"],fontsize=8)
    if k==0: ax.set_ylabel("relative Intensität $I$",fontsize=8)
    ax.set_title(f"{lab}  ($b$ = {'50' if k==0 else '150'} µm)",fontsize=9,color=NAVY)
    ax.tick_params(length=2.5,pad=1.5)
    for s in ("top","right"): ax.spines[s].set_visible(False)
    ax.annotate("",xy=(sig*1.0,1.08),xytext=(-sig*1.0,1.08),
                arrowprops=dict(arrowstyle="<->",color=ORANGE,lw=1.0,shrinkA=0,shrinkB=0))
    ax.text(0,1.10,f"Breite $\\propto \\lambda/b$",fontsize=7.5,color=ORANGE,ha="center",va="bottom")
    ax.text(0.98,0.86,"$\\Delta x$ klein\n$\\Rightarrow\\Delta p_x$ groß" if k==0 else "$\\Delta x$ groß\n$\\Rightarrow\\Delta p_x$ klein",
            fontsize=7.5,color=GREY,ha="right",va="top")
fig.tight_layout()
save(fig,"unbestimmtheit")
