#import "lib.typ" : template, appendices

#show: template.with(
  // Override defaults fields here, such as title, authors, etc
  // extra-faithful: true // if you want extra faithful mode
  advisor: none
)

= Some title here

A reference @typst.

== Subsection

=== Subsubsection

==== Subsubsubsection

#bibliography("example-refs.bib")
#show: appendices

= Some appendix here <theappendix>

== wow
