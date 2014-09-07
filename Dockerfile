FROM debian:wheezy
MAINTAINER cocoon 


ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update
RUN apt-get -y install curl wget

RUN mkdir /opt/python
WORKDIR /opt/python

# get install-pyrun script
#RUN wget --no-check-certificate  https://downloads.egenix.com/python/install-pyrun
#RUN chmod +x install-pyrun
ADD pyrun/install-pyrun ./
ADD pyrun/egenix-pyrun-2.0.1-py2.7_ucs2-linux-x86_64.tar


ENV PLATFORM linux-x86_64
#RUN ./install-pyrun --platform=linux-x86_64 --disable-certificate-checks ./
RUN ./install-pyrun --platform=linux-x86_64 --pyrun-distribution=egenix-pyrun-2.0.1-py2.7_ucs2-linux-x86_64.tar ./

# --pyrun-distribution=pyrun.tgz 