#!/bin/sh

# install MySQL
yum install -y mariadb mariadb-server mariadb-devel
cp ./etc/my.cnf.d/utf8.cnf /etc/my.cnf.d/

systemctl enable mariadb
systemctl start mariadb

mysql_secure_installation

