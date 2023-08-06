#!/bin/bash

set -e -x

export DEBIAN_FRONTEND=noninteractive
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

apt -y update
apt -y install build-essential libnss3-dev curl nano gosu libgdk-pixbuf2.0-dev libgtk-3-dev libxss-dev wget
apt -y install dos2unix ntpstat libpng-tools libpng16-16 pngquant openssl libssl-dev pngcheck atop ntp  pngquant libgif7 libgif-dev libwebp-dev libwebp7 libheif-dev libheif1 imagemagick build-essential libpcre3 libpcre3-dev libssl-dev git build-essential libxml2-dev libfftw3-dev \
	libmagickwand-dev libopenexr-dev liborc-0.4-0 \
	net-tools gobject-introspection libgsf-1-dev \
	libglib2.0-dev liborc-0.4-dev python-gi-dev libgirepository1.0-dev build-essential libxml2-dev libfftw3-dev  \
	gettext libgtk2.0-dev liblcms2-dev \
	libmagickwand-dev libopenexr-dev libcfitsio-dev \
	gobject-introspection  automake libtool swig gtk-doc-tools linux-tools-common linux-tools-generic \
	firewalld iptables-persistent netfilter-persistent graphicsmagick dcraw lsof libpcre3-dev libssl-dev
apt-get -y install software-properties-common libltdl-dev apng2gif apng2gif
apt-get -y install linux-tools-common linux-tools-generic less zip uuid-dev zip rar unrar unrar-free p7zip-full unzip tar python2.7

apt -y install software-properties-common ninja-build meson

add-apt-repository -y ppa:strukturag/libde265
apt -y install libde265-0 libde265-dev libheif-dev libheif1
apt -y install build-essential
apt -y install libltdl-dev libimagequant-dev librsvg2-dev libtiff5 libtiff5-dev libwebp-dev libexif-dev libopenjp2-7-dev fftw3-dev liborc-0.4-dev

apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata


