#!/bin/sh

# ======================
# 系統
# ======================

# 初始 pacman
haveged -w 1024
pacman-key --init
pkill haveged

pacman-key --populate archlinux

# @TODO 變更 pacman 安裝來源，如美國或日本

# 更新
pacman -Syu

# 安裝套件
pacman -S nginx passenger ruby mariadb vim zsh git sudo base-devel wget abs

# 執行 abs
abs

# 安裝 rails 
gem install rails
gem install mysql2

# 設定 passenger
cd /usr/lib/passenger
rake nginx



# ===========================
# 使用者
# ===========================

# 新增使用者，切換至使用者
useradd -mG wheel pct
passwd pct


