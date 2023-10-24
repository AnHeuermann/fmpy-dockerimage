FROM ubuntu:focal

LABEL org.opencontainers.image.authors="AnHeuermann"

ENV SHELL /bin/bash

ARG DEBIAN_FRONTEND=noninteractive

# Additional software
RUN apt-get update                             \
    && apt-get upgrade && apt-get dist-upgrade \
    && apt-get install -qy                     \
       build-essential                         \
       python3                                 \
       python3-pip

# FMPy
RUN python3 -m pip install --upgrade pip \
  && python3 -m pip install fmpy==0.3.18
