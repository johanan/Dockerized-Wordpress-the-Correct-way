#!/bin/bash
echo "use $MYSQL_DATABASE;" | cat - /tmp/wp_backup.sql > temp && mv temp /tmp/wp_backup.sql
mysql -uroot -p$MYSQL_ROOT_PASSWORD < /tmp/wp_backup.sql && rm /tmp/wp_backup.sql
