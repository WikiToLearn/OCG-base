FROM node:argon
MAINTAINER wikitolearn sysadmin@wikitolearn.org
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update && apt-get -y install zip unzip nano apt-utils curl rsync git && rm -f /var/cache/apt/archives/*deb && find /var/lib/apt/lists/ -type f -delete

ADD ./sources.list /etc/apt/

RUN apt-get update && apt-get -y install ocaml && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install screen && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install sudo && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install redis-server && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install build-essential && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install nodejs && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install poppler-utils && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install imagemagick && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install librsvg2-bin && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install libjpeg-progs && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install djvulibre-bin && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-xetex && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-latex-recommended && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-latex-extra && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-generic-extra && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-fonts-recommended && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-fonts-extra && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-hosny-amiri && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-farsiweb && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-nafees && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-arphic-uming && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-arphic-ukai && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-droid && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install fonts-baekmuk && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install texlive-lang-all && rm -f /var/cache/apt/archives/*deb
RUN apt-get update && apt-get -y install latex-xcolor && rm -f /var/cache/apt/archives/*deb

RUN useradd -r -d /var/lib/ocg ocg
RUN mkdir /var/lib/ocg
