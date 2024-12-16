FROM node:23.4
WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

ENV PORT=5175
EXPOSE 5175

CMD ["npm", "start"]