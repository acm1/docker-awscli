FROM debian:jessie

RUN apt-get update && \
    apt-get install -y --no-install-recommends awscli groff-base less && \
    apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

ENTRYPOINT ["aws"]