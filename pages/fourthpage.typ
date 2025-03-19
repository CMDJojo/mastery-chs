#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let fourthpage(faith, school, year, title, subtitle, authors, department, supervisor, advisor, examiner) = {
  grid(rows: (1fr, auto), {
      let fmt-auth = if faith {
        upper
      } else {
        smallcaps
      }
      let vv = v(0.8cm)
      v(6cm)
      [
        #title\
        #subtitle\
        #fmt-auth(authors.join[\ ])
      ]
      vv
      [
        #sym.copyright #fmt-auth(authors.join(", ")), #year
      ]
      vv
      let items = (
        ([Supervisor:], supervisor),
        ([Advisor:], advisor),
        ([Examiner:], examiner)
      ).filter(it => it.at(1) != none)
      if faith {
        grid(
          columns: (auto),
          gutter: 6pt,
          ..items.map(it => [#it.at(0) #it.at(1).at(0), #it.at(1).at(1)])
        )
      } else {
        grid(
            columns: (auto, auto, auto),
            gutter: 6pt,
            ..items.map(it => (it.at(0), [#it.at(1).at(0),], it.at(1).at(1))).flatten()
          )
      }
      vv
      [
        Master's Thesis #year\
        #department\
        #join(school, ", ", last: " and ")\
        SE-412 96 Gothenburg\
        Telephone +46 31-772 10 00
      ]
    },
    [
      Typeset in Typst\
      Gothenburg, Sweden, #year
    ]
  )
  pagebreak()
}
