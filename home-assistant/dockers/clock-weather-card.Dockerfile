##### Build stage
FROM node:latest as clock-weather-card
WORKDIR /app
RUN git clone https://github.com/pkissling/clock-weather-card .
RUN npm install --legacy-peer-deps
RUN npm run build