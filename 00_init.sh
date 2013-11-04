#!/bin/sh

# ======================
# 系統
# ======================

# 初始 pacman
echo '===== pacman init ====='
haveged -w 1024
pacman-key --init
pkill haveged

pacman-key --populate archlinux

# @TODO 變更 pacman 安裝來源，如美國或日本
vi /etc/pacman.d/mirrorlist

# 更新
pacman -Syu

# 安裝套件
pacman -S nginx passenger ruby mariadb vim zsh git sudo base-devel wget abs cmake python python2 tmux

# 執行 abs
echo '===== abs ====='
abs
abs # 第一次有可能失敗

# 安裝 rails
echo '===== install rails ====='
curl https://raw.github.com/pct/dotfiles/master/.gemrc > .gemrc
gem install rails
gem install mysql2
gem install bundler

# visudo
echo '===== visudo ====='

# ===========================
# 使用者
# ===========================

# 新增使用者，切換至使用者
echo '===== add user ====='
useradd -mG wheel pct
passwd pct


