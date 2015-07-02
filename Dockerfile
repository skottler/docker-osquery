FROM ubuntu:14.04

RUN apt-get update && \
  apt-get install -y \
    build-essential \
    cmake \
    git

RUN git clone https://github.com/facebook/osquery.git
RUN cd osquery; make deps; make; make install
