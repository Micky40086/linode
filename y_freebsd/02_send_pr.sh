#!/bin/sh

echo '
# FreeBSD Port Tools configuration file – see porttools(5)
# vim: ft=sh
EMAIL="your@email.address"
FULLNAME="Your Name"
ORGANIZATION="FreeBSD @ Taiwan"
BUILDROOT="/tmp"
ARCHIVE_DIR=""
DIFF_MODE=".orig"
DIFF_VIEWER="more"
PORTLINT_FLAGS="abct"
' > ~/.porttools

