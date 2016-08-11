#!/bin/bash

apt-get update
apt-get install -y build-essential imagemagick
mkdir work
cd work
wget http://www-e.uni-magdeburg.de/jschulen/ocr/gocr-0.50.tar.gz
tar -xf gocr-0.50.tar.gz
cd gocr-0.50
./configure
make install

apt-get purge -y build-essential
apt-get autoremove -y --purge build-essential
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
