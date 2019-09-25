#FROM node:current-alpin
FROM mysql:5.7

#WORKDIR /home/app

#COPY SimpleWeb/package.json ./

#RUN npm install

#COPY SimpleWeb/ ./

#CMD ["npm", "start"]

ADD mysqlbash.sh /
RUN chmod +x /mysqlbash.sh
CMD ["/mysqlbash.sh"]
