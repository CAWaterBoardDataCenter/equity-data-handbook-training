FROM rocker/geospatial:4.4

RUN apt-get update && apt-get install -y wget gdebi-core \
    && wget https://quarto.org/download/latest/quarto-linux-amd64.deb \
    && gdebi -n quarto-linux-amd64.deb \
    && quarto --version

COPY ./install.R install.R
RUN Rscript install.R

RUN mkdir /build
WORKDIR /build
