FROM alpine:latest

RUN apk --update add git less openssh curl wget && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh

VOLUME /git
VOLUME /root

WORKDIR /git
