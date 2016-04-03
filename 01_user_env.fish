#!/usr/bin/fish

# 安裝 oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# 使用 fox theme
omf install fox

# 抓取 dot files
cp -rpf ./dotfiles/.* ~/
echo '. ~/.config/fish/aliases.fish' >>  ~/.config/fish/config.fish 

# 安裝 vimrc-core
wget --no-check-certificate https://github.com/pct/vimrc-core/raw/master/install.sh -O - | sh
