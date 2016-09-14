FROM node:argon
ADD ./docker-apt-get-install.sh /docker-apt-get-install.sh
ADD ./sources.list /etc/apt/sources.list

MAINTAINER wikitolearn sysadmin@wikitolearn.org
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN /docker-apt-get-install.sh zip
RUN /docker-apt-get-install.sh nano
RUN /docker-apt-get-install.sh apt-utils
RUN /docker-apt-get-install.sh rsync

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

RUN /docker-apt-get-install.sh fonts-hosny-amiri
RUN /docker-apt-get-install.sh fonts-farsiweb
RUN /docker-apt-get-install.sh fonts-nafees
RUN /docker-apt-get-install.sh fonts-arphic-uming
RUN /docker-apt-get-install.sh fonts-arphic-ukai
RUN /docker-apt-get-install.sh fonts-droid
RUN /docker-apt-get-install.sh fonts-baekmuk
RUN /docker-apt-get-install.sh fonts-texgyre
RUN /docker-apt-get-install.sh fonts-gfs-baskerville
RUN /docker-apt-get-install.sh fonts-gfs-porson
RUN /docker-apt-get-install.sh fonts-ipaexfont-gothic
RUN /docker-apt-get-install.sh fonts-ipaexfont-mincho
RUN /docker-apt-get-install.sh fonts-ipafont-gothic
RUN /docker-apt-get-install.sh fonts-ipafont-mincho

RUN /docker-apt-get-install.sh x11-xserver-utils
RUN /docker-apt-get-install.sh x11-utils
RUN /docker-apt-get-install.sh tk
RUN /docker-apt-get-install.sh xbitmaps
RUN /docker-apt-get-install.sh xdg-utils
RUN /docker-apt-get-install.sh xterm
RUN /docker-apt-get-install.sh tex-common
RUN /docker-apt-get-install.sh ruby
RUN /docker-apt-get-install.sh ps2eps

RUN /docker-apt-get-install.sh tex-gyre
RUN /docker-apt-get-install.sh texlive-font-utils
RUN /docker-apt-get-install.sh texlive-fonts-recommended
RUN /docker-apt-get-install.sh texlive-fonts-recommended-doc
RUN /docker-apt-get-install.sh texlive-extra-utils
RUN /docker-apt-get-install.sh texlive-generic-recommended
RUN /docker-apt-get-install.sh texlive-latex-extra
RUN /docker-apt-get-install.sh texlive-latex-extra-doc
RUN /docker-apt-get-install.sh texlive-latex-recommended
RUN /docker-apt-get-install.sh texlive-latex-recommended-doc
RUN /docker-apt-get-install.sh texlive-pictures
RUN /docker-apt-get-install.sh texlive-pictures-doc
RUN /docker-apt-get-install.sh texlive-pstricks
RUN /docker-apt-get-install.sh texlive-pstricks-doc

RUN /docker-apt-get-install.sh texlive-base
RUN /docker-apt-get-install.sh texlive-latex-base
RUN /docker-apt-get-install.sh texlive-xetex
RUN /docker-apt-get-install.sh texlive-latex-recommended
RUN /docker-apt-get-install.sh texlive-latex-extra
RUN /docker-apt-get-install.sh texlive-generic-extra
RUN /docker-apt-get-install.sh texlive-fonts-recommended
RUN /docker-apt-get-install.sh texlive-fonts-extra
RUN /docker-apt-get-install.sh latex-cjk-common
RUN /docker-apt-get-install.sh latex-cjk-chinese
RUN /docker-apt-get-install.sh latex-cjk-chinese-arphic-bkai00mp
RUN /docker-apt-get-install.sh latex-cjk-chinese-arphic-bsmi00lp
RUN /docker-apt-get-install.sh latex-cjk-chinese-arphic-gbsn00lp
RUN /docker-apt-get-install.sh latex-cjk-chinese-arphic-gkai00mp
RUN /docker-apt-get-install.sh latex-cjk-japanese
RUN /docker-apt-get-install.sh latex-cjk-japanese-wadalab
RUN /docker-apt-get-install.sh latex-cjk-korean
RUN /docker-apt-get-install.sh latex-cjk-thai
RUN /docker-apt-get-install.sh latex-cjk-all
RUN /docker-apt-get-install.sh texlive-lang-african
RUN /docker-apt-get-install.sh texlive-lang-arabic
RUN /docker-apt-get-install.sh texlive-lang-chinese
RUN /docker-apt-get-install.sh texlive-lang-cjk
RUN /docker-apt-get-install.sh texlive-lang-cyrillic
RUN /docker-apt-get-install.sh texlive-lang-czechslovak
RUN /docker-apt-get-install.sh texlive-lang-english
RUN /docker-apt-get-install.sh texlive-lang-european
RUN /docker-apt-get-install.sh texlive-lang-french
RUN /docker-apt-get-install.sh texlive-lang-german
RUN /docker-apt-get-install.sh texlive-lang-greek
RUN /docker-apt-get-install.sh texlive-lang-indic
RUN /docker-apt-get-install.sh texlive-lang-italian
RUN /docker-apt-get-install.sh texlive-lang-japanese
RUN /docker-apt-get-install.sh texlive-lang-korean
RUN /docker-apt-get-install.sh texlive-lang-other
RUN /docker-apt-get-install.sh texlive-lang-polish
RUN /docker-apt-get-install.sh texlive-lang-portuguese
RUN /docker-apt-get-install.sh texlive-lang-spanish

RUN /docker-apt-get-install.sh texlive-lang-all

RUN /docker-apt-get-install.sh prosper
RUN /docker-apt-get-install.sh prerex

RUN /docker-apt-get-install.sh latex-xcolor

RUN useradd -r -d /var/lib/ocg ocg
RUN mkdir /var/lib/ocg
