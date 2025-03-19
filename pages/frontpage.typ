#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let frontpage(faithful, title-font, school, year, title, subtitle, names, department, subject) = {
  let inset = if faithful {
    (left: 60pt, right: 10pt, top: 44pt, bottom: 30pt)
  } else {
    (left: 60pt, right: 60pt, top: 44pt, bottom: 30pt)
  }
  let bg = block(
    inset: inset,
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
  set text(font: title-font)

  [
    #v(58.5%)

    #huge(weight: "bold", par(leading: 0.45em, title))

    #v(8pt)

    #x-large(subtitle)

    #v(22pt)

    Master's thesis in #subject

    #v(14pt)

    #if faithful {
      upper(x-large(names))
    } else {
      smallcaps(x-large(names))
    }
  ]
}
