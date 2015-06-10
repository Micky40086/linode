#!/bin/sh

# @TODO 使用 user 身份

gpg --list-keys
gpg --recv-keys 1EB2638FF56C0C53 #cower

wget https://aur.archlinux.org/packages/co/cower/cower.tar.gz
wget https://aur.archlinux.org/packages/pa/pacaur/pacaur.tar.gz

tar xvf cower.tar.gz
tar xvf pacaur.tar.gz

cd cower
makepkg -s
sudo pacman -U cower*.pkg.tar.xz
cd -

cd pacaur
makepkg -s
sudo pacman -U pacaur*.pkg.tar.xz
cd -

echo 'Please check if pacaur installed!'