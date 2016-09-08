#!/bin/sh

# root 身份

# 如果連主機等太久，add name server 8.8.8.8 to first
apt update; apt dist-upgrade

# 安相關套件
apt install -y mariadb-client mariadb-server libmariadb-client-lgpl-dev-compat libmariadb-client-lgpl-dev imagemagick nodejs ruby


# mysql 安全設定
mysql_secure_installation

# add user
useradd -mG sudo pct
passwd pct


