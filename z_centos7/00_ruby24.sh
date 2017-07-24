#!/bin/sh
# 使用 root 身份
# modify from https://gist.githubusercontent.com/mustafaturan/8290150/raw/32c85ebc93bf327e509c428716302e1e7e5200e5/ruby.2.4.1-setup.sh

# system update
yum -y update
yum -y groupinstall "Development Tools"
yum -y install libxslt-devel libyaml-devel libxml2-devel gdbm-devel libffi-devel zlib-devel openssl-devel libyaml-devel readline-devel curl-devel openssl-devel pcre-devel git memcached-devel valgrind-devel mysql-devel ImageMagick-devel ImageMagick

# ruby 2.4.1
version=2.4.1
cd /usr/local/src
wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-$version.tar.gz
tar zxvf ruby-$version.tar.gz
cd ruby-$version
./configure
make
make install

# ruby-gems
version=2.6.12
cd ..
wget https://rubygems.org/rubygems/rubygems-$version.tgz
tar zxvf rubygems-$version.tgz
cd rubygems-$version
/usr/local/bin/ruby setup.rb

# gemrc
cp ./etc/gemrc /etc/

# bundler
/usr/local/bin/gem install bundler

