#!/bin/sh

# TODO 使用 root 身分

# ======================
# 系統
# ======================

# set locale
cat conf/locale.conf >> /etc/locale.conf
echo -e "en_US.UTF-8 UTF-8\nzh_TW.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

# 初始 pacman
echo '===== pacman init ====='
haveged -w 1024
pacman-key --init
pkill haveged
pacman -R haveged

pacman-key --populate archlinux

# @TODO 變更 pacman 安裝來源，如美國或日本
vi /etc/pacman.d/mirrorlist

# 更新
pacman -Syu

# 安裝套件
pacman -S ruby mariadb vim git sudo base-devel wget abs cmake python python2 tmux nodejs netctl iproute2 net-tools libev imagemagick fish libxslt hub tig

# ntpd
systemctl enable ntpd
systemctl start ntpd

# 啟動 dhcpcd
systemctl enable dhcpcd

# 啟動 mysql
systemctl enable mysqld

mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mysqld

# 設定 mysql 密碼
mysql_secure_installation

# 執行 abs
echo '===== abs ====='
abs
abs # 第一次有可能失敗

# visudo
echo '===== visudo ====='
visudo

# set gemrc
echo '===== install rails ====='
curl https://raw.githubusercontent.com/pct/linode/master/dotfiles/.gemrc > .gemrc

echo 'gem: --no-user-install --no-rdoc --no-ri' > /etc/gemrc

# ===========================
# 使用者
# ===========================

# 新增使用者，切換至使用者
echo '===== add user, set password ====='
useradd -mG wheel pct
passwd pct

echo '===== set user shell to /usr/bin/fish ====='
chsh pct

echo '===== @TODO create a new account ===='
