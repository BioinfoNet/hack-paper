.PHONY: clean all

all:
	make manuscript-biorxiv.pdf
	make Supplementary-File.pdf

manuscript.tex: manuscript.md
	pandoc manuscript.md -o manuscript.tex
	perl -pi -e 's/^/%% / if /\\includegraphics\{.\/figure01.pdf\}/' manuscript.tex

manuscript-biorxiv.pdf: manuscript-biorviv.tex manuscript.tex
	latex manuscript-biorviv
	bibtex manuscript-biorviv
	latex manuscript-biorviv
	latex manuscript-biorviv
	dvipdf manuscript-biorviv

Supplementary-File.pdf: Supplementary-File.md
	 Rscript -e "rmarkdown::render('Supplementary-File.md', output_format = 'pdf_document')"

clean:
	rm -f *~
	rm -f manuscript-biorviv.aux
	rm -f manuscript-biorviv.bbl
	rm -f manuscript-biorviv.blg
	rm -f manuscript-biorviv.dvi
	rm -f manuscript-biorviv.log
	rm -f manuscript-biorviv.out
	rm -f manuscript-biorviv.tex.pdf

