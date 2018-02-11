default: psalm.pdf

psalm.pdf: psalm.ltx chant.png
	xelatex psalm.ltx
	rm psalm.aux psalm.log

chant.png: chant.pdf
	convert -density 600 chant.pdf -trim chant.png

chant.pdf: chant.ly
	/Applications/LilyPond.app/Contents/Resources/bin/lilypond -dno-point-and-click chant.ly

.PHONY: clean
clean:
	rm -f psalm.pdf psalm.aux psalm.log chant.png chant.pdf
