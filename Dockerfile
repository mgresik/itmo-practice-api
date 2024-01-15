FROM node:18-alpine

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . /app

EXPOSE 80

CMD [ "npm", "run", "start" ]