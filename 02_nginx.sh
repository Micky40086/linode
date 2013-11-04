#!/bin/sh

cd /lib/passenger
sudo rake nginx
cd ~/

# 重編 nginx
sudo abs
mkdir src
cp -rpf /var/abs/community/nginx src
# @TODO 進入 nginx, 指定 --add-module=/lib/passenger/ext/nginx

# 複製 config
cd /etc/nginx
sudo mkdir logs
sudo curl https://raw.github.com/pct/linode/master/conf/nginx/nginx.conf > nginx.conf
sudo curl https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf > vhost.conf
