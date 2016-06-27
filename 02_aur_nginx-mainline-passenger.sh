#!/bin/sh

# TODO 使用 user 身分

pacaur -S aur/nginx-mainline-passenger

cd /etc/nginx
sudo mkdir -p sites
sudo curl https://raw.github.com/pct/linode/master/conf/nginx/nginx.conf > nginx.conf
sudo curl https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf > sites/main.conf

sudo systemctl enable nginx

echo 'Please check if `systemctl enable nginx`'
