##### Mushroom cards
FROM node:latest as lovelace-mushroom
WORKDIR /app
RUN git clone https://github.com/piitaya/lovelace-mushroom.git .
RUN npm install
RUN npm run build