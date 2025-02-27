//#import "mastery-chs/lib.typ" : template
#import "lib.typ" : template

#show: template.with(
// Override defaults fields here, such as title, authors, etc
)

= Some title here

A reference @typst.

== Subsection

=== Subsubsection

==== Subsubsubsection

#bibliography("example-refs.bib")
#counter(heading).update(0)
#set heading(numbering: "A.1", supplement: [Appendix])

= Some appendix here <theappendix>

== wow
