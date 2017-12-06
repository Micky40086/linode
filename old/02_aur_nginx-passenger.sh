#!/bin/sh

# TODO 使用 user 身分

pacaur -S aur/nginx-passenger
#pacaur -S aur/nginx-mainline-passenger

sudo mkdir -p /etc/nginx/sites
sudo cp conf/nginx/nginx.conf /etc/nginx/
sudo cp conf/nginx/vhost.conf /etc/nginx/sites/main.conf

sudo systemctl enable nginx

echo 'Please check if `systemctl enable nginx`'
