# TODO 使用 user 身份

cd ~

# 安裝 oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# 安裝 vimrc-core
wget --no-check-certificate https://github.com/pct/vimrc-core/raw/master/install.sh -O - | sh

# 抓取 dot files
cp -rp ./dotfiles/.* ~/

# 變更為 fish，path: /usr/bin/fish
chsh
