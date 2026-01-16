FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY index.js .
COPY users.json .

EXPOSE 3000

CMD ["node", "index.js"]
