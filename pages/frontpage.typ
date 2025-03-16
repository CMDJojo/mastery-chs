#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let frontpage(school, year, title, subtitle, names, department, subject) = {
  let bg = block(
    inset: (left: 60pt, right: 10pt, top: 44pt, bottom: 30pt),
    grid(
      rows: (auto, 1fr, auto),
      {
        image("../img/logos-horizontal.jpg")
        v(1em)
        line(length: 100%, stroke: black + 1pt)
      },
      none,
      {
        line(length: 100%, stroke: black + 1pt)
        align(left, par(leading: 0.45em)[
          #department\
          #smallcaps(join(school, [\ ]))\
          Gothenburg, Sweden, #year
        ])
      }
    )
  )

  set page(background: bg, margin: 65pt)
  set text(font: "New Computer Modern Sans")

  [
    #v(58.5%)

    #huge(weight: "bold", par(leading: 0.45em, title))

    #v(8pt)

    #x-large(subtitle)

    #v(22pt)

    Master's thesis in #subject

    #v(14pt)

    #upper(x-large(names))
  ]
}
