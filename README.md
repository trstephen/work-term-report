Uvic Co-op Work Term Template
=============
[![Build Status](https://travis-ci.org/trstephen/work-term-report.svg?branch=master)](https://travis-ci.org/trstephen/work-term-report)

A set of LaTeX files that generates a work term report following the Uvic co-op
department's [style guide](https://www.uvic.ca/coopandcareer/assets/docs/studentsalumni/engineering_work_term_report_guide.pdf).
A [full installation of LaTeX](http://latex-project.org/ftp.html) is recommended.

## Installation
##### OSX & Unix
```bash
git clone git@github.com:trstephen/work-term-report.git ~/<whatever>
cd ~/<whatever>
make
```

`make` will create `wt_template.pdf` and `letter/letter_of_transmittal.pdf` which
match their `*_demo.pdf` counterparts.

##### Windows
Use your favorite Tex IDE to create the report. Use `Biber` for the bibliography.

## Tips for maintaining a large text document in git
1. I've found it helpful to break up large reports into several files each covering
a chapter or section. `wt_template.tex` is full of package includes, macros and
other cruft that you don't need to look at once it's set up. The text you care
about ends up in the middle of this cruft. It's easier to track down changes in
a diff when they come from multiple single purpose files instead of a single monolith.
1. Use line breaks for a manageable diff. Latex will join lines that don't have
a blank separating line so you can break at 80 or so characters. I've found that
this can feel unnatural when writing and made [this gist](https://gist.github.com/trstephen/aea34ecbf1db8e1ec758) to insert line breaks
at new sentences before committing.
1. [TexStudio](http://www.texstudio.org) is a cross-platform Latex IDE that does
a great job of handing large projects. The tabbed interface is very helpful for
managing multiple files.
  - The compile chain for this project can be defined within TexStudio by accessing
  `Settings > Build` and setting
    - _Default Compiler_ `txs:///pdflatex | txs:///biber | txs:///pdflatex`
    - _Default Bibliography Tool_  `Biber`

## Issues
[Let me know!](https://github.com/trstephen/work-term-report/issues)

I've built this on a TeXLive 2014 installation and wouldn't be surprised if some
of the more finicky features -- such as the appendix numbering and bibliography
style -- don't output as expect on other versions.
