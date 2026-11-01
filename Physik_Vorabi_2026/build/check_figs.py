import matplotlib
matplotlib.use("Agg")
from matplotlib.figure import Figure
from matplotlib.text import Text
from matplotlib.colors import to_rgba
import itertools, os

problems=[]
orig=Figure.savefig

def check(fig, fname):
    fig.canvas.draw()
    r=fig.canvas.get_renderer()
    fb=fig.bbox
    texts=[]
    for t in fig.findobj(Text):
        s=t.get_text()
        if not s.strip() or not t.get_visible(): continue
        try: bb=t.get_window_extent(r)
        except Exception: continue
        if bb.width<=0: continue
        texts.append((s,bb))
    name=os.path.basename(str(fname))
    # outside canvas
    for s,bb in texts:
        if bb.x0<fb.x0-2 or bb.y0<fb.y0-2 or bb.x1>fb.x1+2 or bb.y1>fb.y1+2:
            problems.append(f"{name}: Text ausserhalb: {s!r}")
    # overlaps
    for (s1,b1),(s2,b2) in itertools.combinations(texts,2):
        ix=min(b1.x1,b2.x1)-max(b1.x0,b2.x0)
        iy=min(b1.y1,b2.y1)-max(b1.y0,b2.y0)
        if ix>2 and iy>2:
            a=ix*iy; small=min(b1.width*b1.height,b2.width*b2.height)
            if a/small>0.25:
                problems.append(f"{name}: Ueberlappung {s1!r} / {s2!r} ({a/small:.0%})")
    # nearly invisible artists (white on transparent)
    for ln in fig.findobj(matplotlib.lines.Line2D):
        try:
            c=to_rgba(ln.get_color())
            if c[3]<0.25 or (c[0]>0.93 and c[1]>0.93 and c[2]>0.93 and ln.get_linewidth()<6):
                problems.append(f"{name}: helle Linie {ln.get_color()} lw={ln.get_linewidth()}")
        except Exception: pass

Figure.savefig=lambda self,fname,**kw: (check(self,fname), orig(self,fname,**kw))[1]
import runpy
runpy.run_path("make_figures.py", run_name="__main__")
print("\n--- BEFUNDE ---")
seen=set()
for p in problems:
    if p not in seen: print(p); seen.add(p)
print("gesamt:",len(seen))
