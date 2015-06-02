default: all

all: 
	make clean
	make compile

compile:
	pdflatex usecase
	-bibtex usecase
	pdflatex usecase
	pdflatex usecase

clean:
	rm -f *.acn *.alg *.aux *.bbl *.blg *.brf *.glsdefs *.glo *.ilg *.ind *.ist *.lof *.log *.lol *.lot *.maf *.mtc* *.out *.synctex.* *.toc *.fdb_latexmk 2> /dev/null
	@find . -name "*.fdb_latexmk" -exec rm -rf {} \;

push:
	git commit -a
	git push origin master