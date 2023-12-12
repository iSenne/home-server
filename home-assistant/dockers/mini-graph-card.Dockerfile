##### Mini Graph
FROM node:latest as mini-graph-card
WORKDIR /app
RUN git clone https://github.com/kalkih/mini-graph-card .
RUN npm install
RUN npm run build