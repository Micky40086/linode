#!/bin/sh

# READ https://github.com/pct/freebsd_utils
pkg install portmaster subversion genplist porttools py27-lxml autoconf m4
svn checkout https://svn.FreeBSD.org/ports/head /usr/ports
