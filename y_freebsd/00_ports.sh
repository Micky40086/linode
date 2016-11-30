#!/bin/sh

# READ https://github.com/pct/freebsd_utils
pkg install portmaster subversion
svn checkout https://svn.FreeBSD.org/ports/head /usr/ports
