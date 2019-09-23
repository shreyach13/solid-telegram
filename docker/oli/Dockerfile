FROM node:current-alpine

WORKDIR /home/app

COPY SimpleWeb/package.json ./

RUN npm install

COPY SimpleWeb/ ./

CMD ["npm", "start"]
