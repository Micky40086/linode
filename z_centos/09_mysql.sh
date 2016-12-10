#!/bin/sh

# install MySQL
yum install -y mysql mysql-server mysql-devel
/sbin/chkconfig mysqld on
# service mysqld start

mysql_secure_installation

