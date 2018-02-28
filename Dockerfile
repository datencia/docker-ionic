FROM datencia/nodejs

LABEL maintainer="david.atencia@gmail.com"

ENV IONIC_VERSION=3.19.1 \
    CORDOVA_VERSION=8.0.0

# Install Chrome (for unit tests)
RUN apt-get update && \
    apt-get install -y wget --no-install-recommends && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean

# Install Ionic@3.19.1 & Cordova@8.0.0
RUN npm i -g ionic@${IONIC_VERSION} cordova@${CORDOVA_VERSION} && \
    npm cache clear --force && \
    ionic --no-interactive config set -g daemon.updates false && \
    cordova telemetry off
