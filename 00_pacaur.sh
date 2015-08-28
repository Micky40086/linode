#!/bin/sh

export PATH=$PATH:/usr/bin/core_perl

# @TODO 使用 user 身份

#gpg --list-keys
#gpg --recv-keys 1EB2638FF56C0C53 #cower

mkdir -p ~/src
cd ~/src

wget https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz
wget https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz

tar xvf cower.tar.gz
tar xvf pacaur.tar.gz

cd cower
makepkg -sc --skipinteg
sudo pacman -U cower*.pkg.tar.xz
cd -

cd pacaur
makepkg -sc --skipinteg
sudo pacman -U pacaur*.pkg.tar.xz
cd -

echo 'Please check if pacaur installed!'
