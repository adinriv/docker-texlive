FROM ubuntu:rolling
MAINTAINER adin

ENV PATH=/usr/local/texlive/bin/x86_64-linux:$PATH

COPY texlive-profile.txt /tmp/

# set up packages
RUN apt-get update -qq &&\
    apt-get install --no-install-recommends -y \
      wget \
      perl \
    &&\
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    mkdir /tmp/install-tl && \
    tar -xzf install-tl-unx.tar.gz -C /tmp/install-tl --strip-components=1 && \
    /tmp/install-tl/install-tl --profile=/tmp/texlive-profile.txt && \
    apt-get autoclean &&\
    apt-get autoremove &&\
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/*

