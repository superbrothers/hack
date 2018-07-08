FROM debian:stable

ENV HUB_VERSION=2.4.0

RUN set -x && \
    apt-get -qq update && \
    apt-get -yqq install \
        bash \
        make \
        jq \
        git \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN echo "Install github/hub" && \
    set -x && \
    curl -sL https://github.com/github/hub/releases/download/v${HUB_VERSION}/hub-linux-amd64-${HUB_VERSION}.tgz | tar xz && \
    hub-linux-amd64-${HUB_VERSION}/install && \
    rm -rf hub-linux-amd64-${HUB_VERSION} && \
    hub --version
