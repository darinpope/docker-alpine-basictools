FROM alpine:latest

RUN apk --update add git less openssh curl wget && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git
