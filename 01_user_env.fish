#!/usr/bin/fish

# 安裝 oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# 使用 fox theme
omf install fox

# 抓取 dot files
cp -rpf ./dotfiles/.* ~/
echo 'set -gx PATH $HOME/bin $PATH' >> ~/.config/fish/config.fish
echo 'set -x LANG en_US.UTF-8' >> ~/.config/fish/config.fish
echo 'set -x LC_ALL en_US.UTF-8' >> ~/.config/fish/config.fish
echo '. ~/.config/fish/aliases.fish' >>  ~/.config/fish/config.fish 

