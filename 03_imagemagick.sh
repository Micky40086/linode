#!/bin/sh
su -

# 重編 imagemagick
abs
mkdir ~/src
cp -rpf /var/abs/extra/imagemagick src
# @TODO 進入 imagemagick, 去除 --enable-hdri (因為 rails carrierwave)

echo 'Please make imagemagick'
