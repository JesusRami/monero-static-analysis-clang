# Multistage docker build, requires docker 17.05

# builder stage
FROM ubuntu:18.04

RUN set -ex && \
    apt-get update && apt-get --no-install-recommends --yes install ca-certificates cmake g++ make pkg-config graphviz doxygen git curl libtool-bin autoconf automake bzip2 xsltproc gperf unzip clang clang-tools

WORKDIR /usr/local

ENV CFLAGS='-fPIC'
ENV CXXFLAGS='-fPIC'
RUN export CCC_CC=clang
RUN export CCC_CXX=clang++

RUN apt update && apt --no-install-recommends --yes install build-essential libboost-all-dev libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev doxygen graphviz libpgm-dev

RUN adduser --system --group --disabled-password monero_tester
WORKDIR /home/monero_tester
RUN mkdir test_environment
WORKDIR /home/monero_tester/test_environment
COPY . .

RUN apt update
RUN apt upgrade --yes
ENTRYPOINT /bin/bash






