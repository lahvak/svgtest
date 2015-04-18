LATEX = dvilualatex
LATEX_FLAGS = 
DVI_TO_SVG = dvisvgm
DVI_TO_SVG_FLAGS = --no-fonts

all: svg

svg: svgtest.svg

svgtest.svg: svgtest.dvi
	$(DVI_TO_SVG) $(DVI_TO_SVG_FLAGS) svgtest.dvi

svgtest.dvi: svgtest.tex
	$(LATEX) $(LATEX_FLAGS) svgtest.tex

clean:
	rm *.dvi *.svg *.log *.aux
