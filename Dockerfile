FROM node:alpine

mkdir /app/
COPY * /app/

WORKDIR /app/
npm install
npm run build:web
which python
