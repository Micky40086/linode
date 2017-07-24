#!/bin/sh

# root 身份
yum install -y yum-utils 
yum install -y curl git tmux vim sudo net-tools wget fish tig lbzip2 axel sqlite sqlite-devel
yum install -y epel-release
yum-config-manager --enable epel
yum upgrade
yum install -y nodejs

yum remove git
yum install https://centos7.iuscommunity.org/ius-release.rpm
yum install git2u

# gemrc
