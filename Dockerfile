FROM debian:wheezy
MAINTAINER cocoon 


#
# Python Dockerfile
#
# https://github.com/dockerfile/python
#

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
