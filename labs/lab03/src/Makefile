FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))

LATEX_FORMAT = --pdf-engine=xelatex -V mainfont=FreeSerif

FILTER = --filter pandoc-crossref

%.docx: %.md
	-pandoc $< $(FILTER) -o $@

%.pdf: %.md
	-pandoc $< $(LATEX_FORMAT) $(FILTER) -o $@

all: $(FILES)
	@echo $(FILES)

clean:
	-rm $(FILES) *~
