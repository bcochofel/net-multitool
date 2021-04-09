FROM alpine:3.13
LABEL maintainer="Bruno Cochofel <bruno.cochofel@gmail.com>"

RUN apk update && apk add --no-cache \
    tcptraceroute \
    net-tools \
    curl \
    socat \
    openssl \
    jq \
    nmap \
    bind-tools

RUN addgroup -g 5000 -S alpine && adduser -S alpine -u 5000 -G alpine

USER alpine

CMD ["/bin/sh"]
