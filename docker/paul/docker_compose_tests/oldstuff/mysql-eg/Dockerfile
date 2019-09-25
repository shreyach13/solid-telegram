FROM mysql:5.7

WORKDIR /home/app

COPY simpleweb/package.json .
COPY simpleweb/index.js .

RUN npm install

CMD ["npm", "start"]
