#let ackpage(date, authors, acknowledgements) = [
  #v(20pt)
  #show heading: set text(size: 17pt)
  #heading(outlined: false)[Acknowledgements]
  #v(8pt)
  #acknowledgements
  #v(56pt)
  #align(right)[
    #authors.join(" and "), Gothenburg, #date.display()
  ]
]
