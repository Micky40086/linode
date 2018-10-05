#!/bin/sh

VERSION=2.5

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install ruby$VERSION ruby$VERSION-dev

