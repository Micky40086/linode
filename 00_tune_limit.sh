#!/bin/sh
echo 'DefaultLimitNOFILE=65535' >> /etc/systemd/system.conf

echo "http soft nofile 4096\nhttp hard nofile 4096" >> /etc/security/limits.conf
