# Dockerfile.centos8

FROM registry.hub.docker.com/library/centos:8

RUN dnf install -y \
sudo \
git \
tzdata \
vim \
gdb \
clang

COPY ./contrib/install-cachelib-deps.sh ./contrib/install-cachelib-deps.sh
RUN ./contrib/install-cachelib-deps.sh
