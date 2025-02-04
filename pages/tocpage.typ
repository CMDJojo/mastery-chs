#let tocpage(figures, tables) = {
  set page(numbering: "i")

  v(100pt)

  show heading: set text(size: 24pt)
  align(center, heading(outlined: false)[Contents])

  v(55pt)

  {
    show outline.entry: set outline.entry(fill: repeat("." + h(6pt)))
    show outline.entry.where(level: 1): set outline.entry(fill: none)
    show outline.entry.where(level: 1): it => {
      v(8pt)
      strong(it)
    }
    outline(title: none, indent: auto)
  }

  if figures {
    pagebreak(to: "odd")
    v(100pt)
    align(center, text(24pt)[= List of Figures])
    [
      #outline(
        title: none,
        target: figure.where(kind: image),
      )
    ]
  }
  if tables {
    pagebreak(to: "odd")
    v(100pt)
    align(center, text(24pt)[= List of Tables])
    [
      #outline(title: none, target: figure.where(kind: table))
    ]
  }
}
