FROM mysql:5.7

WORKDIR /home/app

COPY SimpleWeb/package.json ./

COPY SimpleWeb/ ./

ADD create_db.sh /
RUN chmod +x /create_db.sh
CMD ["/create_db.sh"]
