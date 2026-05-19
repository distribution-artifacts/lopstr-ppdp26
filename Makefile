LATEXMK ?= latexmk
PDFLATEX ?= pdflatex
BIBTEX ?= bibtex

.PHONY: all clean paper pdflatex slides

all: paper.pdf slides.pdf

paper: paper.pdf

slides: slides.pdf

paper.pdf: paper.tex references.bib
	@if command -v $(LATEXMK) >/dev/null 2>&1; then \
	  $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error paper.tex; \
	else \
	  $(MAKE) pdflatex; \
	fi

pdflatex: paper.tex references.bib
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error paper.tex
	-$(BIBTEX) paper
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error paper.tex
	$(PDFLATEX) -interaction=nonstopmode -halt-on-error paper.tex

slides.pdf: slides.tex
	@if command -v $(LATEXMK) >/dev/null 2>&1; then \
	  $(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error slides.tex; \
	else \
	  $(PDFLATEX) -interaction=nonstopmode -halt-on-error slides.tex; \
	  $(PDFLATEX) -interaction=nonstopmode -halt-on-error slides.tex; \
	fi

clean:
	-rm -f paper.aux paper.bbl paper.blg paper.dvi paper.fdb_latexmk \
	       paper.fls paper.log paper.out paper.pdf paper.ps \
	       paper.run.xml paper.synctex.gz paper.toc \
	       slides.aux slides.bbl slides.blg slides.dvi slides.fdb_latexmk \
	       slides.fls slides.log slides.nav slides.out slides.pdf \
	       slides.ps slides.run.xml slides.snm slides.synctex.gz slides.toc
