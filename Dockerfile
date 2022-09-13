FROM ubuntu

MAINTAINER "Antoine Mathurin <antoine.mathu@gmail.com>"

RUN apt-get install -y \
	curl \
	&& \
    apt-get install -y --no-install-recommends \
	vim tmux git man gh && \
	software-properties-common \
	apt-add-repository ppa:deadsnakes/ppa && \
	apt-get install -y --no-install-recommends \
	python3




	&& \
    apt-get clean && \
		rm -rf /tmp/* /var/tmp/*

COPY ../files/. ./Dockerfile /

WORKDIR /usr/share/amathurin/workspace
