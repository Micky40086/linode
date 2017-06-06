#!/bin/sh

#root 執行

EMAIL='xxx@example.com'
WEBROOT='/srv/http/xxx/public'
DOMAIN='xxx.xxx.xxx'

pacman -S certbot certbot-nginx

certbot certonly --email $EMAIL --webroot -w $WEBROOT -d $DOMAIN

#echo "1 1 1 * * root certbot certonly --email $EMAIL --webroot -w $WEBROOT -d $DOMAIN" >> /etc/crontab
echo "1 1 1 * * root certbot renew" >> /etc/crontab
