#FROM node:current-alpine
FROM mysql:5.7

#WORKDIR /home/app

#COPY SimpleWeb/package.json ./

#RUN npm install

#COPY SimpleWeb/ ./

#CMD ["npm", "start"]
COPY mybash.sh .
RUN chmod +x ./mybash.sh
