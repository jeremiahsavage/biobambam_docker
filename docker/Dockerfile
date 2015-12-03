FROM ubuntu:14.04

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get dist-upgrade -y --force-yes

RUN apt-get update && apt-get install -y --force-yes \
    git \
    python-pip \
    python-virtualenv \
    python3-dev \
    software-properties-common \
    time \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --disabled-password --gecos '' ubuntu && adduser ubuntu sudo && echo "ubuntu	ALL=(ALL)	NOPASSWD:ALL" >> /etc/sudoers.d/ubuntu

USER ubuntu

ENV HOME /home/ubuntu

RUN mkdir ${HOME}/tools

WORKDIR ${HOME}/tools/

RUN wget https://github.com/gt1/biobambam2/releases/download/2.0.25-release-20151105154334/biobambam2-2.0.25-release-20151105154334-x86_64-etch-linux-gnu.tar.gz \
    && tar xf biobambam2-2.0.25-release-20151105154334-x86_64-etch-linux-gnu.tar.gz \
    && mv biobambam2-2.0.25-release-20151105154334-x86_64-etch-linux-gnu biobambam2 \
    && rm *.tar.gz

WORKDIR ${HOME}

RUN pip install --user virtualenvwrapper \
    && /bin/bash -c "source ${HOME}/.local/bin/virtualenvwrapper.sh \
    && mkvirtualenv --python=/usr/bin/python3 p3 \
    && pip install ipython pandas sqlalchemy \
    && echo source ${HOME}/.local/bin/virtualenvwrapper.sh >> ${HOME}/.bashrc \
    && echo source ${HOME}/.virtualenvs/p3/bin/activate >> ${HOME}/.bashrc"
