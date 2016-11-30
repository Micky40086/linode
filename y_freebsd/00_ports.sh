#!/bin/sh

# READ https://github.com/pct/freebsd_utils
pkg install portmaster subversion genplist porttools py27-lxml autoconf m4 ruby22-gems
svn checkout https://svn.FreeBSD.org/ports/head /usr/ports

gem install mothra
