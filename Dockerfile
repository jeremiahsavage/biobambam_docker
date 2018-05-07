FROM ubuntu:bionic-20180426

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

ENV LD_LIBRARY_PATH /usr/local/lib

RUN apt-get update \
    && apt-get install -y \
       autoconf \
       g++ \
       libtool \
       pkg-config \
       wget \
       zlib1g-dev \
    && apt-get clean \
    && rm -rf /usr/local/* \
    && wget https://github.com/gt1/libmaus2/archive/2.0.483-release-20180507173657.tar.gz \
    && wget https://github.com/gt1/biobambam2/archive/2.0.87-release-20180301132713.tar.gz \
    && tar xf 2.0.483-release-20180507173657.tar.gz \
    && cd libmaus2-2.0.483-release-20180507173657 \
    && libtoolize \
    && aclocal \
    && autoreconf -i -f \
    && ./configure \
    && make \
    && make install \
    && cd ../ \
    && rm -rf libmaus2-2.0.483-release-20180507173657 2.0.483-release-20180507173657.tar.gz \
    && tar xf 2.0.87-release-20180301132713.tar.gz \
    && cd biobambam2-2.0.87-release-20180301132713 \
    && export LIBMAUSPREFIX=/usr/local \
    && autoreconf -i -f \
    && ./configure --with-libmaus2=${LIBMAUSPREFIX} \
    && make \
    && make install \
    && cd ../ \
    && rm -rf biobambam2-2.0.87-release-20180301132713 2.0.87-release-20180301132713.tar.gz \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*