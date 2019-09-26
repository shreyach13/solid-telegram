#We are going to download an default image alpine which has nothing in it.
FROM node:current-alpine

#Change the container to a default working dir.
WORKDIR /home/app

#Copy the js files which we want to start later
COPY simpleweb/ ./

#Install npm package.
RUN npm install

CMD ["npm", "start"]
