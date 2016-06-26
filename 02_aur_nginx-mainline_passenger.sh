#!/bin/sh

# TODO 使用 user 身分

pacaur -S aur/nginx-mainline-passenger

cd /etc/nginx
sudo mkdir -p logs
sudo mkdir -p sites
sudo wget https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf
sudo mv vhost.conf sites/main.conf

sudo systemctl enable nginx

echo 'Please comment nginx _ sites and try now!'
echo 'Please check if `systemctl enable nginx`'
