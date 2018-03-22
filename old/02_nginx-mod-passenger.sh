#!/bin/sh

sudo pacman -S nginx-mod-passenger

sudo mkdir -p /etc/nginx/sites
sudo cp conf/nginx/nginx.conf /etc/nginx/
sudo cp conf/nginx/vhost.conf /etc/nginx/sites/main.conf

sudo systemctl enable nginx

echo 'Please check if `systemctl enable nginx`'
echo 'Please check if linode reverse dns had set!'
