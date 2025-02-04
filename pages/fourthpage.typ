#import "lib.typ" : join
#import "../font-sizes.typ" : *

#let fourthpage(school, year, title, subtitle, authors, department, supervisor, advisor, examiner) = {
  grid(rows: (1fr, auto), {
      let vv = v(0.8cm)
      v(6cm)
      [
        #title\
        #subtitle\
        #upper(authors.join[\ ])
      ]
      vv
      [
        #sym.copyright #upper(authors.join(", ")), #year
      ]
      vv
      grid(
        columns: (auto),
        gutter: 6pt,
        [Supervisor: #supervisor.at(0), #supervisor.at(1)],
        [Advisor: #advisor.at(0), #advisor.at(1)],
        [Examiner: #examiner.at(0), #examiner.at(1)],
      )
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
