#import "lib.typ" : join

#let abspage(school, title, subtitle, authors, department, abstract, keywords) = {
  [
    #title\
    #subtitle\
    #upper(authors.join([\ ]))\
    #department\
    #join(school, ", ", last: " and ")
    #v(8pt)
    #show heading: set text(size: 17pt)
    #heading(outlined: false)[Abstract]
    #v(8pt)
    #abstract
  ]
  v(1fr)
  if keywords.len() > 0 {
    [Keywords: #keywords.join(", ")]
  }
  v(10pt)
}
