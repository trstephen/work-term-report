TEX = pdflatex -interaction nonstopmode
BIB = biber

REPORT = wt_template
BIBFILE = $(REPORT)
ARTIFACTS := *.aux *.log *.bbl *.bcf *.blg *.out *.lot *.lof *.xml *.toc *.gz

all: $(REPORT).pdf

clean:
	rm -fv $(ARTIFACTS) $(REPORT).pdf
	cd sections && rm -fv *.aux

$(REPORT).pdf: $(REPORT).tex
	$(TEX) $(REPORT)
	$(BIB) $(BIBFILE)
	$(TEX) $(REPORT)
