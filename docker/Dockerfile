FROM debian:stretch
LABEL maintainer="Qwartz Developers <dev@qwartz.org>"
LABEL description="Dockerised QwartzCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
