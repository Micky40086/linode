#!/bin/sh

# TODO 使用 root 身分

# ======================
# 系統
# ======================

# boot loader
cat conf/boot_loader.conf >> /boot/loader.conf

# change localtime
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Taipei /etc/localtime

# 安裝套件
pkg install ruby vim-lite git sudo wget cmake python tmux node libev fish zsh hub tig mariadb101-server

# visudo
echo '===== visudo ====='
visudo

# set gemrc
echo '===== install rails ====='
curl https://raw.githubusercontent.com/pct/linode/master/dotfiles/.gemrc > ~/.gemrc

echo 'gem: --no-user-install --no-rdoc --no-ri' > /usr/local/etc/gemrc

# ===========================
# 使用者
# ===========================

# add fish,zsh
echo '/usr/local/bin/fish' >> /etc/shells
echo '/usr/local/bin/zsh' >> /etc/shells

# 新增使用者，切換至使用者
echo '===== add user, set password ====='
adduser -mG wheel pct
passwd pct

echo '===== set user shell to /usr/local/bin/fish ====='
chsh pct

echo '===== @TODO create a new account ===='
