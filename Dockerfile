FROM node:argon
ADD ./docker-apt-get-install.sh /docker-apt-get-install.sh
ADD ./sources.list /etc/apt/sources.list

MAINTAINER wikitolearn sysadmin@wikitolearn.org
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN /docker-apt-get-install.sh zip
RUN /docker-apt-get-install.sh unzip
RUN /docker-apt-get-install.sh nano
RUN /docker-apt-get-install.sh apt-utils
RUN /docker-apt-get-install.sh curl
RUN /docker-apt-get-install.sh rsync
RUN /docker-apt-get-install.sh git

ADD ./sources.list /etc/apt/

RUN /docker-apt-get-install.sh ocaml
RUN /docker-apt-get-install.sh screen
RUN /docker-apt-get-install.sh sudo
RUN /docker-apt-get-install.sh redis-server
RUN /docker-apt-get-install.sh build-essential
RUN /docker-apt-get-install.sh nodejs
RUN /docker-apt-get-install.sh poppler-utils
RUN /docker-apt-get-install.sh imagemagick
RUN /docker-apt-get-install.sh librsvg2-bin
RUN /docker-apt-get-install.sh libjpeg-progs
RUN /docker-apt-get-install.sh djvulibre-bin
RUN /docker-apt-get-install.sh texlive-xetex
RUN /docker-apt-get-install.sh texlive-latex-recommended
RUN /docker-apt-get-install.sh texlive-latex-extra
RUN /docker-apt-get-install.sh texlive-generic-extra
RUN /docker-apt-get-install.sh texlive-fonts-recommended
RUN /docker-apt-get-install.sh texlive-fonts-extra
RUN /docker-apt-get-install.sh fonts-hosny-amiri
RUN /docker-apt-get-install.sh fonts-farsiweb
RUN /docker-apt-get-install.sh fonts-nafees
RUN /docker-apt-get-install.sh fonts-arphic-uming
RUN /docker-apt-get-install.sh fonts-arphic-ukai
RUN /docker-apt-get-install.sh fonts-droid
RUN /docker-apt-get-install.sh fonts-baekmuk
RUN /docker-apt-get-install.sh texlive-lang-all
RUN /docker-apt-get-install.sh latex-xcolor

RUN useradd -r -d /var/lib/ocg ocg
RUN mkdir /var/lib/ocg
