
MAIN = Mina-Hermina-CV

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN).tex

clean:
	latexmk -c

.PHONY: all clean
