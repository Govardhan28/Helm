FROM node:14-slim

ARG NODE_ENV=production

EXPOSE 8000

WORKDIR /usr/src/app

ARG NPM_TOKEN

COPY package*.json ./

RUN npm install


COPY src src

CMD ["npm", "start"]
