#!/bin/sh
# https://www.phusionpassenger.com/library/install/nginx/install/oss/xenial/
# for ubuntu 16.04
# root 執行

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
apt install -y apt-transport-https ca-certificates

sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger xenial main > /etc/apt/sources.list.d/passenger.list'

apt update

apt install -y nginx-extras passenger

echo 'uncomment `# include /etc/nginx/passenger.conf;` from /etc/nginx/nginx.conf'
