# mastery-chs: Chalmers Master's Thesis template in Typst

A thesis template for Master Thesises at
[Chalmers University of Technology](https://www.chalmers.se/en/).
More or less a port of the
[provided LaTeX template](https://www.overleaf.com/read/psszszkvvmkd), although
not a 100% faithful one.

## Usage

Example usage:

```typst
#import "@preview/mastery-chs:0.1.0" : template, appendices, flex-caption
#let department = "Department of Computer Science and Engineering"
#show: template.with(
  school: ("Chalmers University of Technology", "University of Gothenburg"),
  title: "Developing a Backend-Compatibility Check for the BNF Converter",
  subtitle: "And Implementing a Blazingly-Fast BNFC Back-End in Rust",
  authors: ("Jonathan Widén", "Leopold Wigbratt"),
  supervisor: ("Andreas Abel", department),
  examiner: ("Carl-Johan Seger", department),
  department: department,
  subject: "Computer Science and Engineering"
)

= Introduction

#figure(
  image("my_figure.svg", width: 75%),
  caption: flex-caption(
    [Short caption used in list of figures.],
    [Additional elaboration on the caption presented inline with the figure.],
  ),
)

#bibliography("refs.bib")
#show: appendices

= Some appendix
```
