FROM mysql:5.7
MAINTAINER Mike Christof <mhristof@gmail.com>

RUN apt-get update &&\
        apt-get install -y netcat
ADD ./migrations.sh /migrations.sh
# build time
RUN chmod +x /migrations.sh

# run time
CMD ["/migrations.sh"]
