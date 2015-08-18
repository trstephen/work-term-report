Uvic Co-op Work Term Template
=============
A set of LaTeX files that generates a work term report following the Uvic co-op department's [style guide](https://www.uvic.ca/coopandcareer/assets/docs/studentsalumni/engineering_work_term_report_guide.pdf). A [full installation of LaTeX](http://latex-project.org/ftp.html) is assumed regarding the packages included in the document.

The end goal of this project is to create an encaspulated style file and guidebook that will be used by other students for their work term reports. This distribution is intended to ellicit feedback regarding usability and, hopefully, bring any bugs to light.

Bibliographies are handled by BibLatex (here's a [tutorial](https://www.youtube.com/watch?v=-UVp9ItOc4A)).

The included files should compile and produce pdfs that match their *_demo* counterparts.

Send feedback via Github through @trstephen or via [email](mailto:tstephen@uvic.ca).

### Changes
##### v 0.3
* Bibliography handled by `Biber` and `BibLatex`

##### v 0.2
* Appendices are no longer handled by a custom environment but with custom commands. This resolves the issue where the last page of the appendix would not follow the proper numbering scheme.
	* `tocloft` and `appendix` have been removed as default packages since they were used to solve this problem
* The margins may be changed to 1" by uncommenting the line `hmargin=1in,` in the `\geometry` setup.
* The `Note` field of the bibliography holds the _Last Accessed_ date.

#### TODO
* Appendix
  * ~~fix blank page workaround for last page number~~
* Title Page
  * maybe do the same import thing as the letter
  * ~~recreate the approval graphic in situ~~
  * make the approval box *prettier*
    * less top/bottom padding
    * box is longer than pagewidth
    * fields are aligned (table?)
* Layout
  * ~~Change padewidth? It's the "proper" way according to various typography style guides but official style guide specifies a 1" margin.~~
* ~~References~~
  * ~~find out how URLs\webpages are displayed in ieeetr~~
    * ~~works with @misc entry but it's clunky. Requires manual entry of \url{} and does not display last accessed date. May have to install another bib style~~
