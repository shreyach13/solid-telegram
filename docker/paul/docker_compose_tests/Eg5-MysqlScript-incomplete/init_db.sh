#!/bin/bash
mysqld &
sleep 5
echo "CREATE DATABASE paulEg5;" | mysql -uroot -pabc123
