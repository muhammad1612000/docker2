FROM node:alpine

WORKDIR ./app

COPY package.json .
RUN npm install
RUN node server.js
COPY . .
CMD ["npm","node","start"]