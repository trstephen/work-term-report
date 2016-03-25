TEX = pdflatex -interaction nonstopmode

LETTER = letter_of_transmittal
ARTIFACTS := *.aux *.log *.bbl *.bcf *.blg *.out *.lot *.lof *.xml *.toc

all: $(LETTER).pdf

clean:
	rm -fv $(ARTIFACTS) $(LETTER).pdf

$(LETTER).pdf: $(LETTER).tex
	$(TEX) $(LETTER)
