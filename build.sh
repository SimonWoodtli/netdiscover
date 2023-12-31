#!/bin/sh
set -uex pipefail

apt-get update -y && apt-get install -y libpcap-dev libnet1-dev build-essential bison
git clone https://github.com/netdiscover-scanner/netdiscover.git /tmp/netdiscover
cd /tmp/netdiscover

sh autogen.sh && ./configure && make && make install
