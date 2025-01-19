FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

WORKDIR /app/frontend
RUN npm install

WORKDIR /app

EXPOSE 3000

CMD ["npm", "start"]
