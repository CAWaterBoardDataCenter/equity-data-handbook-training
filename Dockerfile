FROM rocker/verse:4.4

COPY ./install.R install.R
RUN Rscript install.R
