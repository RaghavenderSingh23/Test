FROM node:16.15.1-alpine3.15
WORKDIR /app

COPY package.json ./

RUN npm cache clear --force
RUN npm install

COPY . ./
RUN npm run build

EXPOSE 3000
