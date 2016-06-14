FROM quay.io/jeremiahsavage/cdis_base

ENV biobambam_docker 0.3

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

RUN apt-get update && apt-get install -y --force-yes \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER ubuntu

ENV HOME /home/ubuntu

RUN mkdir ${HOME}/tools

WORKDIR ${HOME}/tools/

RUN wget https://github.com/gt1/biobambam2/releases/download/2.0.44-release-20160517104101/biobambam2-2.0.44-release-20160517104101-x86_64-etch-linux-gnu.tar.gz \
    && tar xf biobambam2-2.0.44-release-20160517104101-x86_64-etch-linux-gnu.tar.gz \
    && mv biobambam2-2.0.44-release-20160517104101-x86_64-etch-linux-gnu biobambam2 \
    && rm *.tar.gz
ENV PATH ${HOME}/tools/biobambam2/bin:$PATH

WORKDIR ${HOME}
