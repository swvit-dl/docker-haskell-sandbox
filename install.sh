#!/bin/bash

wget http://de.archive.ubuntu.com/ubuntu/pool/main/e/eglibc/libc-dev-bin_2.15-0ubuntu10.5_amd64.deb
dpkg -i --force-depends libc-dev-bin_2.15-0ubuntu10.5_amd64.deb

apt-get install -f linux-libc-dev

wget http://de.archive.ubuntu.com/ubuntu/pool/main/e/eglibc/libc6-dev_2.15-0ubuntu10.5_amd64.deb
dpkg -i --force-depends libc6-dev_2.15-0ubuntu10.5_amd64.deb

apt-get -f install
apt-get install -y libgmp3-dev

mkdir -p /opt/ghc
cd /opt/ghc-7.6.3 && ./configure --prefix=/opt/ghc
make install


