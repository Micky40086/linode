#!/bin/sh
AP_NAME=DB
USER_HOME=/home/BACKUP_PATH
BACKUP_DIR=$USER_HOME/SERVER_BACKUP
TIME_BACKUP_SCRIPT=$USER_HOME/bin/rsync_tmbackup.sh
NAS_URL='xxx@xxx.xxx:/volume1/backup'

mysqldump xxx > $BACKUP_DIR/db.sql
rsync -av -delete /srv/www $BACKUP_DIR/
rsync -av -delete /opt/nginx/conf $BACKUP_DIR/nginx/
rsync -av -delete /opt/nginx/logs $BACKUP_DIR/nginx/
rsync -av -delete /etc/my.cnf $BACKUP_DIR/etc/
rsync -av -delete /etc/crontab $BACKUP_DIR/etc/
rsync -av -delete /etc/logrotate.d/nginx $BACKUP_DIR/etc/logrotate.d/
rsync -av -delete $USER_HOME/bin $BACKUP_DIR/

# to NAS
$TIME_BACKUP_SCRIPT $BACKUP_DIR $NAS_URL/$AP_NAME
