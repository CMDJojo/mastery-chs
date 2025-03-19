#import "lib.typ" : template, appendices, flex-caption

#show: template.with(
  // Override defaults fields here, such as title, authors, etc
  // extra-faithful: true // if you want extra faithful mode
  advisor: none
)

= Some title here

A reference @typst.

== Subsection

#figure(
  table(
    columns: (auto, auto),
    [*Column 1*], [*Column 2*],
    [Foo], [Bar]
  ),
  caption: flex-caption(
    [A short caption for TOC],
    [A much longer caption that does not show up in the TOC]
  )
)

=== Subsubsection

==== Subsubsubsection

#bibliography("example-refs.bib")
#show: appendices

= Some appendix here <theappendix>

== wow
