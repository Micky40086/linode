#!/bin/sh
# root 執行

echo 'user:ROOT'

# backup
BIN_PATH='/home/pct/bin'
mkdir -p $BIN_PATH
cp ./backup/db_backup.sh $BIN_PATH
chmod +x $BIN_PATH/db_backup.sh
chown -R pct $BIN_PATH
echo '12 2 * * * pct /home/pct/bin/db_backup.sh' >> /etc/crontab
