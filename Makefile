all:
	hfst-lexc chv.lexc -o chv.lexc.hfst
	hfst-twolc chv.twol -o chv.twol.hfst
	hfst-compose-intersect -1 chv.lexc.hfst -2 chv.twol.hfst -o chv.gen.hfst
	hfst-invert chv.gen.hfst | hfst-fst2fst -O -o chv.morf.hfst

clean:
	rm *.hfst
