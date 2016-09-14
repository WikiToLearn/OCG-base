#!/bin/bash

#for pkg in $@
#do
#  if dpkg -s $pkg &> /dev/null
#  then
#    echo "Pakage "$pkg" is installed"
#    exit 1
#  fi
#done

apt-get update
apt-get dist-upgrade -y
apt-get install -y $@
find /var/cache/apt/archives/ -type f -name '*deb' -delete
find /var/lib/apt/lists/ -type f -delete
find /var/log/ -type f -delete
