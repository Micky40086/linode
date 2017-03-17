#!/usr/bin/fish

# 安裝 oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

omf install fox

# 抓取 dot files
cp -rpf ../dotfiles/.* ~/

# 增加小軟體
mkdir -p ~/bin

# imgcat
curl https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat > ~/bin/imgcat
chmod +x ~/bin/imgcat

# backup
curl https://raw.githubusercontent.com/laurent22/rsync-time-backup/master/rsync_tmbackup.sh > ~/bin/rsync_tmbackup.sh
chmod +x ~/bin/rsync_tmbackup.sh
