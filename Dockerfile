FROM python:3.8-alpine

# Install new packages
RUN apk add --update gcc build-base python3 python3-dev jpeg-dev zlib-dev libffi-dev openssl-dev git openssh-client sshpass

# Upgrade pip
RUN pip3 install --upgrade pip

# Change LIBRARY_PATH environment variable because of error in building zlib
ENV LIBRARY_PATH=/lib:/usr/lib

# Set Workdir
WORKDIR /ansible

# Define volumes
VOLUME [ "/ansible" ]

# Install ansible
ARG ANSIBLE_VERSION=2.9.5

RUN pip3 install -U setuptools pip tox && \
    pip3 install ansible==$ANSIBLE_VERSION && \
    pip3 install molecule docker

# CMD
