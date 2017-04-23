FROM node:6.9.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base && \
    npm install --global yarn

