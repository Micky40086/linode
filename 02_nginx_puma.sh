#!/bin/sh

sudo pacman -S nginx

sudo mkdir -p /etc/nginx/sites
sudo cp conf/nginx/nginx.conf /etc/nginx/
sudo cp conf/nginx/vhost.conf /etc/nginx/sites/main.conf

sudo systemctl enable nginx

sudo cp ./bin/check_puma.rb /home/pct/bin
echo '*/5 * * * * root /home/pct/bin/check_puma.rb' | sudo tee --append /etc/crontab

echo 'Please check /etc/nginx/sites/main.conf'
echo 'Please check /home/pct/bin/check_puma.rb'

