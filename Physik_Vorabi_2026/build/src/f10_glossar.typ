#import "../template.typ": *

#show: setup.with(title: "Glossar", kicker: "Zusatzmaterial")

#set text(size: 8.8pt)
#cover(
  "Zusatzmaterial · Nachschlagen",
  "Glossar Physik",
  "104 Begriffe von Amplitude bis Zählrate – alphabetisch, mit Formelzeichen und Kurzerklärung",
  lernziele: (
    "Begriffe präzise verwenden statt nur wiedererkennen",
    "Formelzeichen und Einheiten sicher zuordnen",
    "Lücken gezielt im zugehörigen Skript nachlesen",
  ),
)


#let daten = json("../glossar.json").sorted(key: e => e.t)
#let briefe = ("A", "B", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "Z")

#columns(2, gutter: 14pt)[
  #for b in briefe {
    let es = daten.filter(e => upper(e.t.at(0)) == b)
    if es.len() > 0 {
      heading(level: 1, numbering: none, outlined: true)[#b]
      for e in es {
        let alias = e.at("a", default: none)
        block(above: 0.55em, below: 0.2em, breakable: false)[
          #text(weight: "bold", fill: col-primary, e.t)
          #h(0.45em)
          #text(e.d)
          #if alias != none [
            #linebreak()
            #text(size: 7.8pt, fill: rgb("#666666"), "auch: " + alias)
          ]
        ]
      }
    }
  }
]
