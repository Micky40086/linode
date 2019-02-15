#!/bin/sh
# USE ROOT

rm -rf /var/lib/mysql

mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
mysql_secure_installation
