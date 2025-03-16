//#import "mastery-chs/lib.typ" : template
#import "lib.typ" : template, appendices

#show: template.with(
// Override defaults fields here, such as title, authors, etc
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
