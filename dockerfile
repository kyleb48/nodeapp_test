FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

ENV CI=true
RUN npm run test
RUN npm run build

COPY . .

EXPOSE 3000
CMD [ "node", "index.js", "npm", "run", "start" ]
