FROM alpine:latest

RUN apk --update add git less openssh curl wget bash bash-completion && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh && \
    sed -e 's;/bin/ash$;/bin/bash;g' -i /etc/passwd && \
    echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config && \
    mkdir -p /root/downloads

VOLUME /git
VOLUME /root

WORKDIR /git
