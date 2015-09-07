#!/bin/sh

# TODO 使用 user 身分

pacaur -S aur/nginx-passenger

cd /etc/nginx
sudo mkdir -p logs
sudo wget https://raw.github.com/pct/linode/master/conf/nginx/nginx.conf
sudo wget https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf
sudo mv nginx.conf.1 nginx.conf

sudo systemctl enable nginx

echo 'Please see https://github.com/t-richards/aur-nginx-passenger#configuration and try nginx now!'

echo 'Please check if `systemctl enable nginx`'
