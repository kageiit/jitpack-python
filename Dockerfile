FROM ubuntu:16.04

MAINTAINER https://github.com/kageiit

RUN dpkg --add-architecture i386 && \
    apt-get update && \
	apt-get install -y --no-install-recommends curl python3 python-pip build-essential groff groff-base && \
	apt-get clean

RUN curl -Lk https://github.com/Infinidat/relocatable-python3/tarball/a54da30a5066ed46735214ded207d8edc785f1f0 | tar xzvf - --strip-components 1
RUN pip install --upgrade pip
RUN make
RUN cd dist && tar -czvf ../python3.tar.gz *
