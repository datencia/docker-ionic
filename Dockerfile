FROM datencia/nodejs

LABEL maintainer="david.atencia@gmail.com"

ENV IONIC_VERSION=3.19.1 \
    CORDOVA_VERSION=8.0.0

RUN echo "Installing basics" && \
    apt-get -qq update && \
    apt-get -qq install -y wget --no-install-recommends && \
    echo "Installing Chrome" && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get -qq update && \
    apt-get -qq install -y google-chrome-stable --no-install-recommends && \
    echo "Installing Ionic & Cordova" && \
    npm i -g ionic@${IONIC_VERSION} cordova@${CORDOVA_VERSION} && \
    ionic --no-interactive config set -g daemon.updates false && \
    cordova telemetry off && \
    echo "Cleaning up" && \
    npm cache clear --force && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
