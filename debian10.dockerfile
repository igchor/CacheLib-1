# Dockerfile.centos8

FROM registry.hub.docker.com/library/debian:10

RUN dnf install -y \
sudo \
git \
tzdata \
vim \
gdb \
clang

COPY contrib/prerequisites-debian10.sh prerequisites-debian10.sh
RUN ./prerequisites-debian10.sh

COPY contrib/install-deps.sh install-deps.sh
RUN ./install-deps.sh
