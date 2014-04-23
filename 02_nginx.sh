#!/bin/sh
su -

cd /lib/passenger
rake nginx
cd ~/

# 重編 nginx
abs
mkdir src
cp -rpf /var/abs/extra/nginx src
# @TODO 進入 nginx, 指定 --add-module=/lib/passenger/ext/nginx

# 複製 config
cd /etc/nginx
mkdir logs
curl https://raw.github.com/pct/linode/master/conf/nginx/nginx.conf > nginx.conf
curl https://raw.github.com/pct/linode/master/conf/nginx/vhost.conf > vhost.conf

echo 'Please make nginx'
