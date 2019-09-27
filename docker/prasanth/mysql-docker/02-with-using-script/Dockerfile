FROM mysql:5.7
MAINTAINER Prasanth Sasidharan <Prasanth.Sasidharan@shell.com>

RUN apt-get update &&\
        apt-get install -y netcat
ADD ./migrations.sh /migrations.sh
RUN chmod +x /migrations.sh
CMD ["/migrations.sh"]