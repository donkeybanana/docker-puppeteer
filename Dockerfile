FROM buildkite/puppeteer

MAINTAINER Alan Burgoyne <alan@srcur.com>

RUN rm -rf /var/lib/apt/lists/* && \
    rm -f /etc/apt/sources.list.d/google-chrome-unstable.list && \
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list' && \
    apt-get update && \
    apt-get install -y \
        git \
        imagemagick && \
    rm -rf /var/lib/apt/lists/*
