#!/bin/sh

sudo pacman -S nginx

sudo mkdir -p /etc/nginx/sites
sudo cp conf/nginx/nginx.conf /etc/nginx/
sudo cp conf/nginx/vhost.conf /etc/nginx/sites/main.conf

sudo systemctl enable nginx

sudo cp ./conf/systemd/system/puma-site.service /etc/systemd/system
sudo systemctl enable puma-site.service

echo 'Please check if linode reverse dns had set!'
echo 'Please check /systemd/system/puma-site.service settings'
