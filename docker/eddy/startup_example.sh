#! /usr/bin/env bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

date

while ! nc -zvw3 mysql 3306; do
    echo "Waiting for database to accept connections"
    sleep 1;
done

while ! mysql -h mysql -uroot -proot -e 'show databases;'; do
    echo "Waiting for database to accept commands"
    sleep 1;
done

mysql -h mysql -uroot -proot -e 'create database mike_was_here;'

exit 0
