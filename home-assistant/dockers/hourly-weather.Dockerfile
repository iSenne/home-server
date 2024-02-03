FROM node:latest
WORKDIR /app
RUN git clone https://github.com/decompil3d/lovelace-hourly-weather.git .
RUN npm install
RUN npm run build