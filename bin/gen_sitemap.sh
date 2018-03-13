#!/bin/sh
PROJECT_ROOT='/srv/http/xxx'

cd $PROJECT_ROOT
export RAILS_ENV=production
bundle exec rake sitemap:refresh
cd ./public; gunzip -fk sitemap.xml.gz
sudo systemctl reload nginx
