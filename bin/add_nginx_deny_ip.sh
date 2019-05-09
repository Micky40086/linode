#!/bin/sh
DENY_KEYWORD='xxx'

grep $DENY_KEYWORD /var/log/nginx/access.log | cut -d ' ' -f 1 | \
  grep -v '122.116.52.27' | \
  grep -v '66.249.82' | \
  sort -u \
  > /tmp/deny_tmp

cat /tmp/deny_tmp | awk '{print "deny " $1 ";"}' >> /etc/nginx/deny_ip_list

cat /etc/nginx/deny_ip_list | sort -u > /tmp/deny_tmp2
mv /tmp/deny_tmp2 /etc/nginx/deny_ip_list

systemctl reload nginx
