#!/bin/sh

# TODO 使用 user 身分

pacaur -S aur/nginx-passenger
cd /etc/nginx
mkdir logs
curl https://raw.github.com/pct/linode/master/conf/nginx/nginx.conf > nginx.conf
curl https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf > vhost.conf

echo 'Please see https://github.com/t-richards/aur-nginx-passenger#configuration and try nginx now!'
