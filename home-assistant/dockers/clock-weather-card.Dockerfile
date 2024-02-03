FROM node:latest
WORKDIR /app
RUN git clone https://github.com/pkissling/clock-weather-card .
RUN npm install --legacy-peer-deps
RUN npm run build