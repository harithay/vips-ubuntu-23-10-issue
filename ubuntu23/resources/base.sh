#!/bin/bash

set -e -x

export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime


apt -y update
apt -y install software-properties-common
add-apt-repository -y universe
apt -y install build-essential pkg-config libexpat1-dev meson libnss3-dev curl nano gosu libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev wget
apt -y install dos2unix ntpstat libpng-tools libpng16-16 pngquant openssl libssl-dev pngcheck atop ntp libgif7 libgif-dev \
	libwebp7 libheif-dev libheif1 imagemagick libpcre3 libpcre3-dev libssl-dev git \
	libmagickwand-dev libopenexr-dev liborc-0.4-0 \
	net-tools gobject-introspection libgsf-1-dev \
	libglib2.0-dev liborc-0.4-dev python-gi-dev libgirepository1.0-dev libxml2-dev libfftw3-dev  \
	gettext libgtk2.0-dev liblcms2-dev libcfitsio-dev \
	automake libtool swig gtk-doc-tools linux-tools-common linux-tools-generic \
	firewalld iptables-persistent netfilter-persistent graphicsmagick dcraw lsof
apt-get -y install libltdl-dev apng2gif
apt-get -y install less zip uuid-dev rar unrar unrar-free p7zip-full unzip tar

# add-apt-repository -y ppa:strukturag/libde265
# Don't need to add the repo as Ubuntu 23.10 has these on universe, which we added earlier
apt -y install libde265-0 libde265-dev libjpeg-turbo8-dev
apt -y install libimagequant-dev librsvg2-dev libwebp-dev libexif-dev libopenjp2-7-dev liborc-0.4-dev

apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata

