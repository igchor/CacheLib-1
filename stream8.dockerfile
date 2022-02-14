# Dockerfile.centos8

FROM quay.io/centos/centos:stream8

RUN dnf install -y \
sudo \
git \
tzdata \
vim \
gdb \
procps \
clang

COPY ./contrib/install-cachelib-deps.sh ./contrib/install-cachelib-deps.sh
RUN ./contrib/install-cachelib-deps.sh
