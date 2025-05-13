.PHONY : all
 
all : index.html modules/identifying-injustice.html modules/interrogating-mechanism.html

index.html : README.md
	pandoc -s -f markdown -t html5 -o $@ $< -c style.css

reports/%.html : analyses/%.Rmd | install/R
	scripts/knit.sh $< $@

reports/%.pdf : analyses/%.Rmd | install/R
	scripts/knit.sh $< $@

install/R:
	Rscript install.R