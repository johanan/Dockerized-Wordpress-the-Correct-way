#!/bin/bash
MYSQL_PWD=$MYSQL_ROOT_PASSWORD mysqldump -hlocalhost -uroot $MYSQL_DATABASE
