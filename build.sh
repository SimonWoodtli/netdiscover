#!/bin/sh
set -uex pipefail

apt-get update -y && apt-get install -y dos2unix libpcap-dev libnet1-dev build-essential bison
git clone https://github.com/netdiscover-scanner/netdiscover.git /tmp/netdiscover
cd /tmp/netdiscover

sh update-oui-database.sh && ./autogen.sh && ./configure && make && make install
