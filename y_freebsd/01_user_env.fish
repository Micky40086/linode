#!/usr/bin/fish

# 抓取 dot files
cp -rpf ./dotfiles/.* ~/
echo 'set -gx PATH $HOME/bin $PATH' >> ~/.config/fish/config.fish
echo 'set -x LANG en_US.UTF-8' >> ~/.config/fish/config.fish
echo 'set -x LC_ALL en_US.UTF-8' >> ~/.config/fish/config.fish
echo '. ~/.config/fish/aliases.fish' >>  ~/.config/fish/config.fish 

# 增加小軟體
mkdir -p ~/bin

# imgcat
curl https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat > ~/bin/imgcat
chmod +x ~/bin/imgcat

# backup
curl https://raw.githubusercontent.com/laurent22/rsync-time-backup/master/rsync_tmbackup.sh > ~/bin/rsync_tmbackup.sh
chmod +x ~/bin/rsync_tmbackup.sh
