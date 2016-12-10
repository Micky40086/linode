#!/bin/sh

# root 身份
yum install -y yum-utils 
yum install -y curl git tmux vim sudo
yum install -y epel-release
yum-config-manager --enable epel
yum upgrade
yum install -y nodejs
