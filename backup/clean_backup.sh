#!/bin/sh
find /home/pct/DB_BACKUP/*.gz -mtime +30 -exec rm -rf {} \;
