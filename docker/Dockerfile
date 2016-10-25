FROM ubuntu:xenial-20161010

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y wget \
    && apt-get clean \
    && rm -rf /usr/local/* \
    && wget https://github.com/gt1/biobambam2/releases/download/2.0.57-release-20160918185932/biobambam2-2.0.57-release-20160918185932-x86_64-etch-linux-gnu.tar.gz \
    && tar xf biobambam2-2.0.57-release-20160918185932-x86_64-etch-linux-gnu.tar.gz \
    && mv biobambam2-2.0.57-release-20160918185932-x86_64-etch-linux-gnu/* /usr/local/ \
    && rm -rf biobambam* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*