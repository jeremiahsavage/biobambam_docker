FROM ubuntu:15.10

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get dist-upgrade -y --force-yes

RUN apt-get update && apt-get install -y --force-yes \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --disabled-password --gecos '' ubuntu && adduser ubuntu sudo && echo "ubuntu	ALL=(ALL)	NOPASSWD:ALL" >> /etc/sudoers.d/ubuntu

USER ubuntu

ENV HOME /home/ubuntu

RUN mkdir ${HOME}/tools

WORKDIR ${HOME}/tools/

RUN wget https://github.com/gt1/biobambam2/releases/download/2.0.33-release-20160317091357/biobambam2-2.0.33-release-20160317091357-x86_64-etch-linux-gnu.tar.gz
    && tar xf biobambam2-2.0.33-release-20160317091357-x86_64-etch-linux-gnu.tar.gz \
    && mv biobambam2-2.0.33-release-20160317091357-x86_64-etch-linux-gnu biobambam \
    && rm *.tar.gz
RUN mkdir -p ${HOME}/.local/
RUN mv ${HOME}/tools/biobambam/* ${HOME}/.local/
ENV PATH ${HOME}/.local/bin:$PATH

WORKDIR ${HOME}
