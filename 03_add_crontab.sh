#!/bin/sh
# root 執行

# backup
cp ./backup/db_backup.sh /home/pct/bin
echo '12 2 * * * pct /home/pct/bin/db_backup.sh' >> /etc/crontab
