#!/bin/sh

#root 執行

EMAIL='xxx@example.com'
WEBROOT='/srv/http/xxx/public'
DOMAIN='xxx.xxx.xxx'

pacman -Sy certbot certbot-nginx

certbot certonly --email $EMAIL --webroot -w $WEBROOT -d $DOMAIN # -d DOMAIN2 -d DOMAIN3

echo "1 1 1 * * root certbot certonly --email $EMAIL --webroot -w $WEBROOT -d $DOMAIN" >> /etc/crontab
