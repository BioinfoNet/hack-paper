.PHONY: clean all manuscript.tex manuscript-biorxiv.pdf Supplementary-File.pdf

all:
	make manuscript.tex
	make manuscript-biorxiv.pdf
	make Supplementary-File.pdf

manuscript.tex: manuscript.md
	pandoc manuscript.md -o manuscript.tex
	perl -pi -e 's/^/%% / if /\\includegraphics\{.\/figure01.pdf\}/' manuscript.tex

manuscript-biorxiv.pdf: manuscript-biorxiv.tex manuscript.tex
	latex manuscript-biorxiv
	bibtex manuscript-biorxiv
	latex manuscript-biorxiv
	latex manuscript-biorxiv
	dvipdf manuscript-biorxiv
	htlatex manuscript-biorxiv.tex

Supplementary-File.pdf: Supplementary-File.md
	 Rscript -e "rmarkdown::render('Supplementary-File.md', output_format = 'pdf_document')"

clean:
	rm -f *~
	rm -f manuscript-biorxiv.aux
	rm -f manuscript-biorxiv.bbl
	rm -f manuscript-biorxiv.blg
	rm -f manuscript-biorxiv.dvi
	rm -f manuscript-biorxiv.log
	rm -f manuscript-biorxiv.out
	rm -f manuscript-biorxiv.tex.pdf
	rm -f manuscript.tex

