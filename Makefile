all: dino.pdf
dino.dvi: dino.tex Dino_Flow.eps sigplanconf.cls
	latex dino.tex
dino.ps: dino.dvi
	dvips dino.dvi
dino.pdf: dino.ps
	ps2pdf dino.ps
clean:
	rm -f dino.log dino.aux
distclean: clean
	rm -f dino.dvi dino.ps dino.pdf
