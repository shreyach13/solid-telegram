#FROM node:current-alpin
FROM mysql:5.7

#WORKDIR /home/app

#COPY SimpleWeb/package.json ./

#RUN npm install

#COPY SimpleWeb/ ./

#CMD ["npm", "start"]

COPY mysqlbash.sh /

# Build time (can be multiple).
RUN chmod +x /mysqlbash.sh

# Run time: only one CMD can be used.
CMD ["/mysqlbash.sh"]
