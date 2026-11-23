SRCS 	:= $(wildcard posts/*/main.tex)
PDFS 	:= $(SRCS:.tex=.pdf)
EXTRA	:= $(SRCS:.tex=.aux) $(SRCS:.tex=.log)

.PHONY: all clean

all: $(PDFS)

posts/%/main.pdf: posts/%/main.tex
	cd posts/$* && pdflatex -interaction=nonstopmode -halt-on-error main.tex

clean:
	rm -f $(EXTRA)
