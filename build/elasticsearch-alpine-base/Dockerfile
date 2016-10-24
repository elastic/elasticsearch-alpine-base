FROM alpine:latest

# Update image and install base packages
RUN apk update && \
    apk upgrade && \
    apk add bash curl openjdk8 openssl && \
    rm -rf /var/cache/apk/*

# Install elasticsearch user
RUN adduser -D -u 1000 -h /usr/share/elasticsearch elasticsearch
