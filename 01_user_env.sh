#!/bin/sh
# TODO 使用 user 身份

cd ~

# 安裝 oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
# 使用 fox theme
omf install fox

# 抓取 dot files
cp -rp ./dotfiles/.* ~/

# 變更為 fish，path: /usr/bin/fish
chsh
