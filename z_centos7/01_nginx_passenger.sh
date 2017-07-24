#!/bin/sh
# root 身份
yum install -y pygpgme curl

curl --fail -sSLo /etc/yum.repos.d/passenger.repo https://oss-binaries.phusionpassenger.com/yum/definitions/el-passenger.repo

yum install -y nginx passenger

echo ""

echo 'set passenger at /etc/nginx/conf.d/passenger.conf'
cp /etc/nginx/conf.d/passenger.conf /etc/nginx/conf.d/passenger.conf.orig
sed -e 's|^#passenger|passenger|' /etc/nginx/conf.d/passenger.conf.orig > /etc/nginx/conf.d/passenger.conf

systemctl enable nginx
systemctl start nginx

mkdir -p /srv/http

# 如果沒有 ipv6, 使用: 
# gem install passenger
# passenger-install-nginx-module --extra-configure-flags="--with-ipv6"
