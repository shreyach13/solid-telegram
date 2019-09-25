FROM mysql:5.7

WORKDIR /home/app

RUN apt-get update &&\
    apt-get install -y python &&\
    apt-get install -y python-pip
#apt-get install python-mysqldb
RUN pip install sqlalchemy

ADD create_db.py /home/app/
#ENV MYSQL_DATABASE nishant-db

#ADD test.sh /docker-entrypoint-initdb.d/

#ADD test.sql /docker-entrypoint-initdb.d/
