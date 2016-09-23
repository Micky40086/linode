#!/bin/sh
# root 身份
yum install -y pygpgme curl

curl --fail -sSLo /etc/yum.repos.d/passenger.repo https://oss-binaries.phusionpassenger.com/yum/definitions/el-passenger.repo

yum install -y nginx passenger

echo "\n\n"

echo 'set passenger at /etc/nginx/conf.d/passenger.conf'
