FROM ubuntu:16.04
MAINTAINER Lesur Frederic <contact@memiks.fr>

ENV DEBIAN_FRONTEND noninteractive
ENV USER root
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y \
	build-essential \
        imagemagick \
	xorriso \
	locales \
	openjdk-8-jdk \
	python \
	git \
	m4 \
	unzip \
	bison \
	zip \
	gperf \
	libxml2-utils \
	zlib1g:i386 \
	libstdc++6:i386 \
	bc \
	curl \
	lzop \
	lzip \
	lunzip \
	jq \
	wget \
	squashfs-tools \
	sudo ; \
	apt-get clean autoclean

RUN ln -s /usr/bin/xorrisofs /usr/bin/mkisofs

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# Download and install repo
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo
RUN chmod a+x /usr/local/bin/repo

RUN git config --global user.name "buildbot"
RUN git config --global user.email "buildbot@memiks.fr"

USER root

###################
# GitHub Action description
###################
LABEL "com.github.actions.name"="Treble Build"
LABEL "com.github.actions.description"="Build Android Treble GSI image"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/memiks/treble-build-github-actions"
LABEL "homepage"="https://github.com/memiks/treble-build-github-actions"
LABEL "maintainer"="Lesur Frederic <contact@memiks.fr>"

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
