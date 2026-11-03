// Gemeinsames Layout für alle Lernskripte (Typst)
#let col-primary = rgb("#1F3864")
#let col-accent = rgb("#0B7285")
#let col-warn = rgb("#9C4221")
#let col-def = rgb("#1B4F72")
#let col-bg-def = rgb("#EAF2F8")
#let col-bg-merk = rgb("#E8F6F3")
#let col-bg-exp = rgb("#FDF3E7")
#let col-bg-warn = rgb("#FDECEA")
#let col-bg-herl = rgb("#F4F0FA")

#let doc-title = ""
#let doc-subtitle = ""
#let doc-kicker = ""
#let content-start = state("content-start", false)

// ---------- Bausteine ----------
#let box(title, color, bg, body) = block(
  width: 100%, inset: (x: 8pt, y: 6pt), radius: 3pt,
  stroke: (left: 2.5pt + color), fill: bg, breakable: true,
  above: 10pt, below: 10pt,
)[
  #text(fill: color, weight: "bold", size: 9.5pt)[#title]
  #v(-2pt)
  #body
]

#let definition(body) = box("Definition", col-def, col-bg-def, body)
#let merksatz(body) = box("Merksatz", col-accent, col-bg-merk, body)
#let experiment(body) = box("Experiment", col-warn, col-bg-exp, body)
#let achtung(body) = box("Achtung – typische Fehlerquelle", rgb("#B03A2E"), col-bg-warn, body)
#let herleitung(body) = box("Herleitung", rgb("#5B2C87"), col-bg-herl, body)
#let prüfung(body) = box("Prüfungsrelevanz", col-primary, rgb("#EAEDF5"), body)
#let leitfrage(body) = box("Leitfrage", col-primary, rgb("#EEF2F8"), body)
#let vorwissen(body) = box("Vorwissen", rgb("#5D6D7E"), rgb("#F4F6F7"), body)
#let vertiefung(body) = box("Vertiefung – Simulationen der Schulseite", col-accent, rgb("#EAF7F7"), body)

#let aufgabe(nr, punkte: none, afb: none, body) = block(
  width: 100%, inset: 8pt, radius: 3pt, above: 12pt, below: 8pt,
  stroke: 0.7pt + col-primary, fill: white, breakable: true,
)[
  #text(fill: col-primary, weight: "bold")[Aufgabe #nr]
  #if afb != none [#h(1.2em) #text(fill: col-primary, size: 9pt)[AFB #afb]]
  #if punkte != none [#h(1fr) #text(fill: col-primary, size: 9pt)[#punkte P.]]
  #v(-2pt)
  #body
]

#let lösung(body) = block(
  width: 100%, inset: (x: 8pt, y: 6pt), radius: 3pt, above: 4pt, below: 10pt,
  stroke: (left: 1.5pt + rgb("#7F8C8D")), fill: rgb("#FAFAFA"), breakable: true,
)[
  #text(fill: rgb("#566573"), weight: "bold", size: 9.5pt)[Lösung]
  #v(-2pt)
  #body
]

#let quelle(body) = block(
  inset: (x: 10pt, y: 6pt), fill: rgb("#F7F7F7"), stroke: (top: 0.5pt + rgb("#BBBBBB")),
  width: 100%, above: 10pt,
)[#text(size: 8.5pt, fill: rgb("#444444"))[#body]]

// ---------- Seiteneinrichtung ----------
#let setup(title: "", kicker: "", body) = {
  set document(title: doc-title, author: "Lernskript Physik – Vorabi 2026")
  set page(
    paper: "a4",
    margin: (x: 2.1cm, top: 2.2cm, bottom: 2.0cm),
    header: context {
      if content-start.get() or counter(page).get().first() > 2 {
        set text(size: 8pt, fill: rgb("#666666"))
        grid(columns: (1fr, auto),
          [#kicker #h(6pt) | #title],
          [Physik · Vorabi 2026],
        )
        v(-6pt)
        line(length: 100%, stroke: 0.4pt + rgb("#AAAAAA"))
      }
    },
    footer: context {
      if content-start.get() or counter(page).get().first() > 2 {
        set text(size: 8.5pt, fill: rgb("#666666"))
        grid(columns: (1fr, auto, 1fr),
          [Gymnasium Westerstede], [], [#align(right)[Seite #counter(page).get().first()]],
        )
      }
    },
  )
  set text(lang: "de", font: "Libertinus Serif", size: 10.2pt, hyphenate: true)
  set par(justify: true, leading: 0.68em, spacing: 0.75em)
  set heading(numbering: "1.1.1")
  show heading: set text(font: "Libertinus Serif")
  show heading.where(level: 1): it => block(above: 16pt, below: 8pt)[
    #content-start.update(true)
    #set text(size: 16pt, fill: col-primary, weight: "bold")
    #it
    #v(-6pt)
    #line(length: 100%, stroke: 1.2pt + col-primary)
  ]
  show heading.where(level: 2): it => block(above: 13pt, below: 5pt)[
    #set text(size: 12.5pt, fill: col-accent, weight: "bold")
    #it
  ]
  show heading.where(level: 3): it => block(above: 10pt, below: 4pt)[
    #set text(size: 11pt, fill: col-primary, weight: "bold")
    #it
  ]
  show figure.caption: set text(size: 8.8pt, style: "italic")
  show figure: set block(breakable: false)
  set table(stroke: 0.4pt + rgb("#999999"), inset: 5pt)
  show table.cell.where(y: 0): set text(weight: "bold")
  set list(indent: 1.1em, body-indent: 0.5em)
  set enum(indent: 1.2em, body-indent: 0.5em)
  set math.equation(numbering: "(1)")
  show math.equation: set text(font: "New Computer Modern Math")
  body
}

// ---------- Titelseite ----------
#let cover(kicker, titel, untertitel, lernziele: ()) = {
  page(numbering: none, margin: (x: 2.1cm, y: 2.2cm))[
    #v(1.2cm)
    #text(size: 10pt, fill: col-accent, weight: "bold", tracking: 1pt)[#kicker]
    #v(0.2cm)
    #line(length: 100%, stroke: 2.2pt + col-primary)
    #v(0.5cm)
    #text(size: 26pt, fill: col-primary, weight: "bold")[#titel]
    #v(0.3cm)
    #text(size: 13pt, fill: rgb("#444444"))[#untertitel]
    #v(1.0cm)
    #if lernziele.len() > 0 [
      #block(fill: rgb("#F2F4F8"), inset: 12pt, radius: 3pt, width: 100%)[
        #text(weight: "bold", size: 10.5pt, fill: col-primary)[Das können Sie nach diesem Skript]
        #v(2pt)
        #for z in lernziele [#text(size: 9.6pt)[– #z] #linebreak()]
      ]
    ]
    #v(1fr)
    #block(fill: col-primary, inset: 12pt, radius: 3pt, width: 100%)[
      #text(fill: white, size: 9.5pt)[
        Lernskript zur Vorbereitung auf das Vorabitur am 06.11.2026 · Gymnasium Westerstede, Niedersachsen
        #linebreak()
        Grundlage: Kerncurriculum Physik (Niedersachsen 2022), Unterrichtsmaterialien
        www.physik.gym-wst.de, Aufgabenpool der Länder (IQB)
      ]
    ]
  ]
}

// ---------- Inhaltsverzeichnis ----------
#let toc-page() = page(numbering: none)[
  #set heading(numbering: none)
  #text(size: 18pt, weight: "bold", fill: col-primary)[Inhalt]
  #v(4pt)
  #line(length: 100%, stroke: 1pt + col-primary)
  #v(8pt)
  #outline(title: none, indent: 1.2em, depth: 2)
]
