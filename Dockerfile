FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

MAINTAINER "Antoine Mathurin <antoine.mathu@gmail.com>"

RUN  apt-get update \
&& apt-get install -y curl gpg \
&& apt-get install -y --no-install-recommends vim tmux git man gh software-properties-common \
&& apt-add-repository ppa:deadsnakes/ppa \
&& apt-get install -y --no-install-recommends python3 nodejs \
&& apt-get clean \
&& rm -rf /tmp/* /var/tmp/*

COPY ../files/. ./Dockerfile /

WORKDIR /usr/share/amathurin/workspace
