#!/bin/sh
# root 執行

echo 'user:ROOT'

BIN_PATH='/home/pct/bin'
mkdir -p $BIN_PATH

# backup
cp ./backup/db_backup.sh $BIN_PATH
chmod +x $BIN_PATH/db_backup.sh

# sitemap
cp ./bin/gen_sitemap.sh $BIN_PATH
chmod +x $BIN_PATH/gen_sitemap.sh

chown -R pct $BIN_PATH

echo '12 1 * * * pct /home/pct/bin/gen_sitemap.sh' >> /etc/crontab
echo '12 2 * * * pct /home/pct/bin/db_backup.sh' >> /etc/crontab
