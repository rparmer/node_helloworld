FROM node:8.12.0-alpine

COPY server.js package*.json ./

RUN npm install

EXPOSE 5000

CMD ["node", "server.js"]
