FROM node:14

WORKDIR /

COPY . .

RUN npm install
RUN npm install sharp
RUN npm install better-sqlite3 --save
RUN npm run build

EXPOSE 1337

CMD [ "npm", "run", "start" ]
