FROM node:latest

WORKDIR /usr/src/app

COPY package.json ./

ENV CI=true
RUN npm install
COPY . .

EXPOSE 3000
CMD [ "node", "index.js", "npm", "run", "start" ]

CMD ["echo", "Hello test1!"]
