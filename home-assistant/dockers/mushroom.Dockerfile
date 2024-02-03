FROM node:latest
WORKDIR /app
RUN git clone https://github.com/piitaya/lovelace-mushroom.git .
RUN npm install
RUN npm run build