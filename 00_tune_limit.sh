#!/bin/sh
echo 'DefaultLimitNOFILE=65535' >> /etc/systemd/system.conf

echo "soft nofile 4096\nhard nofile 4096" >> /etc/security/limits.conf
