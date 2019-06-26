#!/bin/sh
# https://ginqi7.github.io/posts/archlinux-autostarting.html

# 放到  /root 且要有執行權限
PROJECT_NAME=xxx

cd /srv/http/$PROJECT_NAME
export RAILS_ENV=production
unset SSH_ASKPASS
puma -C ./config/puma_production.rb

# reload nginx
sudo systemctl reload nginx
