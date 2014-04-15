NAME='aciris'

default: pdf

clean: 
	-rm -f $(NAME).aux $(NAME).spl $(NAME).log $(NAME).out $(NAME).pdf $(NAME).blg $(NAME).bbl


bib:
	bibtex $(NAME)

pdf:
	pdflatex $(NAME)

all:
	pdflatex $(NAME) && bibtex $(NAME) && pdflatex $(NAME) && pdflatex $(NAME) && pdflatex $(NAME)

read:
	acroread $(NAME).pdf

