.PHONY : all install/R
 
all : install/R
	quarto render

install/R :
	Rscript install.R