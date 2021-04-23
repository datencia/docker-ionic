FROM node:10.24.0-slim

LABEL maintainer="David Atencia <david.atencia@gmail.com>"

ENV IONIC_VERSION=6.12.3 \
    CORDOVA_VERSION=10.0.0

RUN echo "Installing basics" && \
    apt-get -qq update && \
    apt-get -qq install -y \
        git \
        wget \
        unzip \
        libnss3 \
        gnupg \
        ca-certificates \
        --no-install-recommends && \
    echo "Installing Chrome" && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -qq update && \
    apt-get -qq install -y google-chrome-stable --no-install-recommends && \
    echo "Installing Ionic & Cordova" && \
    npm i -g @ionic/cli@${IONIC_VERSION} cordova@${CORDOVA_VERSION} --unsafe-perm && \
    ionic --no-interactive config set -g daemon.updates false && \
    cordova telemetry off && \
    echo "Cleaning up" && \
    npm cache clear --force && \
    rm -f /etc/apt/sources.list.d/google-chrome.list && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
