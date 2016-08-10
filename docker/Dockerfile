FROM ubuntu:xenial-20160809

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR /usr/local/

RUN rm -rf *

RUN wget https://github.com/gt1/biobambam2/releases/download/2.0.54-release-20160802163650/biobambam2-2.0.54-release-20160802163650-x86_64-etch-linux-gnu.tar.gz \
    && tar xf biobambam2-2.0.54-release-20160802163650-x86_64-etch-linux-gnu.tar.gz \
    && mv biobambam2-2.0.54-release-20160802163650-x86_64-etch-linux-gnu biobambam2 \
    && mv biobambam2/* ./ \
    && rmdir biobambam2 \
    && rm *.tar.gz
