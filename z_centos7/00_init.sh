#!/bin/sh

# root 身份
yum install -y yum-plugin-fastestmirror.noarch
yum install -y yum-utils 
yum install -y curl tmux vim sudo net-tools wget fish tig lbzip2 axel sqlite sqlite-devel libcurl-devel
yum install -y epel-release
yum install -y ImageMagick-devel GraphicsMagick-devel
yum-config-manager --enable epel
yum upgrade
yum install -y nodejs

yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum install -y git2u
yum install -y the_silver_searcher

# gemrc
