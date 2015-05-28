FILE=project_report

all: $(FILE).pdf

.PHONY: clean
clean:
	\rm *.aux *.blg *.out *.bbl *.log *.pdf *.toc *.bcf *.xml

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	biber $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
