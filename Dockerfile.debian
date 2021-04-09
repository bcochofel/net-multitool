FROM debian:buster
LABEL maintainer="Bruno Cochofel <bruno.cochofel@gmail.com>"

RUN apt update && apt install -y \
    traceroute \
    curl \
    dnsutils \
    jq \
    nmap \
    net-tools \
    socat \
    openssl \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 5000 debian \
    && useradd --home-dir /home/debian --create-home --uid 5000 \
    --gid 5000 --shell /bin/sh --skel /dev/null debian

USER debian

CMD ["/bin/bash"]
