MAIN=ForceSetPoint
pdf:
	pdflatex -synctex=1 --file-line-error-style --shell-escape --interaction=nonstopmode $(MAIN)
	del *.log *.out

diff:
	latexdiff $(MAIN)_old.tex $(MAIN).tex > $(MAIN)-diff.tex
	pdflatex --shell-escape --interaction=nonstopmode $(MAIN)-diff.tex
	pdflatex --shell-escape --interaction=nonstopmode $(MAIN)-diff.tex
