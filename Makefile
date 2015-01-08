

LATEX=latex
LATEX=pdflatex
BIBTEX=bibtex

#default=redraft.dvi
paper:paper.pdf
paper.pdf:paper.tex *tex *.bib Makefile fig/*png *png *pdf 
	$(LATEX)  paper 
	$(BIBTEX) paper
	$(LATEX)  paper
	$(LATEX)  paper
#	dvips     paper.dvi
#	ps2pdf    paper.ps
#	rm        paper.dvi
#	rm        paper.ps

clean:
	rm -f *.aux  *.nav *.out *.snm *.toc *.blg *.end *.log *~
pristine: clean
	rm -f *.bbl 

