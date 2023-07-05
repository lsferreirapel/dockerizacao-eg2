FROM node:16-alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
COPY yarn.lock ./

RUN yarn

COPY . .

CMD "yarn" "start:dev"
