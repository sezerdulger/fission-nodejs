FROM node:8-alpine

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install && npm cache clean --force
COPY server.js /usr/src/app/server.js

CMD [ "npm", "start" ]

EXPOSE 8888