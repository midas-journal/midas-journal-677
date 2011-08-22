#
#

TARGET=SegLVChallenge.pdf
SOURCE=${TARGET:.pdf=.tex}
BBLSOURCE=SegLVChallenge.bib
BBLTARGET=${TARGET:.pdf=.bbl}
TARGETNX=${TARGET:.pdf=}

.SUFFIXES : .tex .pdf
.PHONY : test

.tex.pdf: 
	@echo "Making " $*.pdf
	pdflatex $*
	pdflatex $*
#	dvips -R0 -o $*.ps $*
#	ps2pdf $*.ps

all: pdf

${TARGET}: ${SOURCE} ${BBLTARGET}

${BBLTARGET}: ${BBLSOURCE}
	bibtex ${TARGETNX}


# this is the more important target
pdf:
	latex ${TARGETNX}
	latex ${TARGETNX}
	bibtex ${TARGETNX}
	latex ${TARGETNX}
	latex ${TARGETNX}
	./MonDviPdf.sh ${TARGETNX}

test:
	@echo "TARGET = " ${TARGET}
	@echo "SOURCE = " ${SOURCE}

all:

clean:
	-rm *.aux *.log *.out *.ps *.toc *.dvi *.nav *.pdf *.snm *.bbl *.blg *~

# DANGEROUS use only just before shipping, 
#cleanall:
#	-rm *.png */*.png *.zip *.pdf */*.pdf *.ps */*.svg 
#	-rm -rf lncs
#	latex $< 
#	dvips -R0 -o $*.ps $<
#	ps2pdf $*.ps
