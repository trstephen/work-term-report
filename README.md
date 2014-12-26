Uvic Co-op Work Term Template
=============
A set of LaTeX files that generates a work term report following the Uvic co-op department's [style guide](https://www.uvic.ca/coopandcareer/assets/docs/studentsalumni/engineering_work_term_report_guide.pdf). A [full installation of LaTeX](http://latex-project.org/ftp.html) is assumed regarding the packages included in the document.

The end goal of this project is to create an encaspulated style file and guidebook that will be used by other students for their work term reports.

### v 0.1.1
This distribution is intended to ellicit feedback regarding usability and, hopefully, bring any bugs to light. Bibliographies are handled by BibLatex (here's a [tutorial](https://www.youtube.com/watch?v=-UVp9ItOc4A)).

The included files should compile and produce pdfs that match their __demo_ counterparts.

Send feedback via Github through @trstephen or via [email](mailto:tstephen@uvic.ca).

#####Known issues
* BibLatex does not handle online citations nicely. See the .bib file for a workaround
* A trailing blank page is used to fix the page numbering for appendices. This will print without wasting any resources, but it should be eliminated.

##TODO:
* Appendix
  * fix blank page workaround for last page number
* Title Page
  * maybe do the same import thing as the letter
  * recreate the approval graphic in situ
  * make the approval box *prettier* 
    * less top/bottom padding
    * box is longer than pagewidth
    * fields are aligned (table?)
* Layout
  * Change padewidth? It's the "proper" way according to various typography style guides but official style guide specifies a 1" margin.
* References
  * find out how URLs\webpages are displayed in ieeetr
    * works with @misc entry but it's clunky. Requires manual entry of \url{} and does not display last accessed date. May have to install another bib style
