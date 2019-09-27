#! /usr/bin/env bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail

date

while ! nc -zvw3 mysql 3306; do
    echo "Waiting for database to accept connections"
    sleep 1;
done

while ! mysql -h mysql -uroot -ptest123 -e 'show databases;'; do
    echo "Waiting for database to accept commands"
    sleep 1;
done

mysql -h mysql -uroot -ptest123 -e 'create database prasanth_test;'

exit 0