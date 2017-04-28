FROM node:6.9.1-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    chromium \
    xvfb \
    python \
    python-dev \
    py-pip \
    build-base && \
    npm install --global yarn

ADD xvfb-chromium /usr/bin/xvfb-chromium

RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser
