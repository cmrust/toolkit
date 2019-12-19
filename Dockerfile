FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y curl \
                       git \
                       vim \
                       dnsutils \
                       nmap \
                       awscli \
                       gnupg2 \
                       apt-transport-https \
    && \
    # add psql repo
    echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    # add kubectl repo
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y postgresql-client-10 \
                       kubectl \
    && \
    apt-get remove -y --purge gnupg2 \
                           apt-transport-https \
    && \
    apt-get auto-remove -y && \
    rm -rf /var/lib/apt/lists/*
