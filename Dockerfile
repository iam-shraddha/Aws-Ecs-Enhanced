FROM node:18-alpine

WORKDIR /usr/src/app

ENV DOMAIN="http://localhost:3000" \
    PORT=3000 \
    STATIC_DIR="./client"

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]


