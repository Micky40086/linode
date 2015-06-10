#!/bin/sh

# @TODO 使用 user 身分

gpg --recv-keys 89AB63D48277377A #imagemagick

# 重編 imagemagick

abs
mkdir -p ~/src
cp -rpf /var/abs/extra/imagemagick ~/src/

# @TODO 進入 imagemagick, 去除 --enable-hdri (因為 rails carrierwave)

echo 'Please make imagemagick'
