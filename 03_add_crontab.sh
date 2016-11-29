#!/bin/sh
# root 執行

# backup
$BIN_PATH='/home/pct/bin'
cp ./backup/db_backup.sh $BIN_PATH
chmod +x $BIN_PATH/db_backup.sh
chown -R pct $BIN_PATH
echo '12 2 * * * pct /home/pct/bin/db_backup.sh' >> /etc/crontab
