#!/usr/bin/bash
export DATA_SOURCE_NAME='root:密码@(IP:3306)/'
cd /var/gnway/mysql_exporter
./mysqld_exporter
