FROM ubuntu

MAINTAINER "Antoine Mathurin <antoine.mathu@gmail.com>"

RUN apt-get install -y \
	curl \
	&& \
    apt-get install -y --no-install-recommends \
	vim tmux git \
	&& \
    apt-get clean

WORKDIR /usr/share/amathurin/workspace
