SRC =   paper.tex abstract.tex intro.tex physical.tex \
	architecture.tex evaluation.tex cache.tex  \
	related.tex future.tex conclusions.tex \
	privatecore.bib

PDF = paper.pdf

$(PDF):	$(SRC)
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

clean:
	$(RM) $(PDF) *.dvi *.aux *.log *.bbl *.blg
