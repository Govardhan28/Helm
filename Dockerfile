FROM node:14-slim

ARG NODE_ENV=production

EXPOSE 8000

WORKDIR /usr/src/app

ARG NPM_TOKEN

COPY .npmrc .npmrc

COPY package*.json ./

RUN npm install

RUN rm -f .npmrc

COPY src src

CMD ["npm", "start"]
