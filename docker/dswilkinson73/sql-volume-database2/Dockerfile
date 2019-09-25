FROM mysql:5.7
WORKDIR /
RUN apt-get update && apt-get install -y inetutils-ping
ADD ./dbcreate.sh /dbcreate.sh
RUN chmod +x /dbcreate.sh
CMD ["/dbcreate.sh"]
