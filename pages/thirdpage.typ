#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let thirdpage(school, year, title, subtitle, authors, department) = {
  set page(margin: (left: 120pt, right: 120pt, top: 90pt, bottom: 90pt))

  align(center + horizon,
    grid(
      rows: (auto, 1fr, auto),
      large(smallcaps[Master's thesis 2025]),
      {
        v(20pt)
        x-large(weight: "semibold", title)
        v(10pt)
        large(subtitle)
        v(24pt)
        large(upper(authors))
      },
      [
        #image("../img/logos-vertical.png", width: 45%)
        #v(5mm)
        #department\
        #smallcaps(join(school, [\ ]))\
        Gothenburg, Sweden, #year
      ]
    )
  )
}
