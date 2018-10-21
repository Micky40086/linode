#!/bin/sh

# root 身份

# 如果連主機等太久，add name server 8.8.8.8 to first
apt update; apt dist-upgrade

# 安裝相關套件
apt install -y imagemagick nodejs ruby ruby-dev git tig vim fish curl tmux nginx net-tools locales

apt install -y mariadb-client mariadb-server libmariadb-client-lgpl-dev-compat libmariadb-client-lgpl-dev libnetcdf-dev libssl-dev libcrypto++-dev libsqlite3-dev sqlite3

# gem
curl https://raw.githubusercontent.com/pct/linode/master/dotfiles/.gemrc > .gemrc
echo 'gem: --no-user-install --no-rdoc --no-ri' > /etc/gemrc

gem install bundler mysql2

# mysql 安全設定
mysql_secure_installation

# add user
useradd -mG sudo pct
passwd pct

echo '===== set user shell to /usr/bin/fish ====='
chsh pct
# 其他
echo 'copy dotfiles yourself!'

