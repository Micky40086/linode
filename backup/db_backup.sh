#!/bin/sh
BACKUP_PATH='/home/pct/DB_BACKUP'
DB=''
USER=''
PW=''

mkdir -p $BACKUP_PATH
/usr/bin/mysqldump -u $USER -p$PW $DB | /usr/bin/gzip > $BACKUP_PATH/$DB\_`/usr/bin/date +'%Y-%m-%d_%H%M%S'`.sql.gz
