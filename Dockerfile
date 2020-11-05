FROM node:latest

WORKDIR /usr/code/peerAcademy

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080:8080

CMD [ "node","server.js" ]

