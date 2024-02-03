FROM node:latest
WORKDIR /app
RUN git clone https://github.com/kalkih/mini-graph-card .
RUN npm install
RUN npm run build