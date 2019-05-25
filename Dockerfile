FROM ubuntu:18.04

#install basic utilities and dependecies to build Monero's source code
RUN apt update
RUN apt upgrade --yes
RUN set -ex && \
	apt --no-install-recommends --yes install ca-certificates cmake g++ \
	make pkg-config graphviz doxygen git curl libtool-bin autoconf automake bzip2 xsltproc \
	gperf unzip clang clang-tools build-essential libboost-all-dev libssl-dev libzmq3-dev \
	libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev \
	libexpat1-dev doxygen graphviz libpgm-dev
#Set environment to build Monero's source code
ENV CFLAGS='-fPIC'
ENV CXXFLAGS='-fPIC'
RUN export CCC_CC=clang
RUN export CCC_CXX=clang++
RUN mkdir test_environment
WORKDIR /test_environment
#Get scripts to run checkers and get Monero's source code
COPY . .
#Add execution permissions to scripts
RUN chmod +x get_monero.sh run_checkers.sh
#Get Monero's source code
RUN ./get_monero.sh

ENTRYPOINT /bin/bash






