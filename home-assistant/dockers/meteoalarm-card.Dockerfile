FROM node:latest
WORKDIR /app
RUN git clone https://github.com/MrBartusek/MeteoalarmCard.git .
RUN npm install
RUN npm run build