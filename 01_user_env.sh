# TODO 使用 user 身份

# 安裝 oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# 安裝 vimrc-core
wget --no-check-certificate https://github.com/pct/vimrc-core/raw/master/install.sh -O - | sh
vim
cd ~/.vim/bundle/YouCompleteMe/
./install.sh
cd -

# 抓取 dot files
cp -rp dotfiles/.* ~/ 

# 變更為 zsh，path: /usr/bin/zsh
chsh
source ~/.zshrc


