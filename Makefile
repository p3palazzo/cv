cv.pdf : cv.md _spec/defaults.yaml cv.yaml
	pandoc -o $@ -d _spec/defaults.yaml $<

%.pdf : %.md _spec/defaults.yaml cv.yaml
	pandoc -o $@ -d _spec/defaults.yaml $<

%.tex : %.md _spec/defaults.yaml cv.yaml
	pandoc -o $@ -d _spec/defaults.yaml $<
	
.PHONY : clean
clean :
	rm -rf *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml
