FROM jenkins/inbound-agent:alpine

USER root

RUN apk add --no-cache img && \
    rm -rf /var/cache/apk/*

USER jenkins

