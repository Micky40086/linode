#!/bin/sh

# 使用 root 身分

# 重編 imagemagick
abs
mkdir -p ~/src
cp -rpf /var/abs/extra/imagemagick ~/src
# @TODO 進入 imagemagick, 去除 --enable-hdri (因為 rails carrierwave)

echo 'Please make imagemagick'
