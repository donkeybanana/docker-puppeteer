FROM buildkite/puppeteer

MAINTAINER Alan Burgoyne <alan@srcur.com>

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*
