##### Mushroom cards
FROM node:latest as lovelace-mushroom
WORKDIR /app
RUN git clone https://github.com/piitaya/lovelace-mushroom.git .
RUN npm install
RUN npm run build

##### Mini Graph
FROM node:latest as mini-graph-card
WORKDIR /app
RUN git clone https://github.com/kalkih/mini-graph-card .
RUN npm install
RUN npm run build

##### Build stage
FROM node:latest as clock-weather-card
WORKDIR /app
RUN git clone https://github.com/pkissling/clock-weather-card .
RUN npm install --legacy-peer-deps
RUN npm run build

##### Afvalbeheer
FROM alpine/git as afvalbeheer
WORKDIR /repo
RUN git clone https://github.com/pippyn/Home-Assistant-Sensor-Afvalbeheer.git .

##### SamsungTV Tizen
FROM alpine/git as samsungtv
WORKDIR /repo
RUN git clone https://github.com/jaruba/ha-samsungtv-tizen.git .

##### Card Mod
FROM alpine/git as lovelace-card-mod
WORKDIR /repo
RUN git clone https://github.com/thomasloven/lovelace-card-mod .

##### Card Mod
FROM alpine/git as lovelace-auto-entities
WORKDIR /repo
RUN git clone https://github.com/thomasloven/lovelace-auto-entities .

##### Layout card
FROM alpine/git as lovelace-layout-card
WORKDIR /repo
RUN git clone https://github.com/thomasloven/lovelace-layout-card .

##### Build image
FROM ghcr.io/home-assistant/home-assistant:stable

ADD config /config

COPY --from=afvalbeheer /repo/custom_components/afvalbeheer /config/custom_components/afvalbeheer
COPY --from=samsungtv /repo/custom_components/samsungtv_tizen /config/custom_components/samsungtv_tizen

COPY --from=lovelace-card-mod /repo /config/www/plugins/lovelace-card-mod
COPY --from=lovelace-auto-entities /repo /config/www/plugins/lovelace-auto-entities
COPY --from=lovelace-layout-card /repo /config/www/plugins/lovelace-layout-card

COPY --from=lovelace-mushroom /app/dist /config/www/plugins/lovelace-mushroom
COPY --from=mini-graph-card /app/dist /config/www/plugins/mini-graph-card
COPY --from=clock-weather-card /app/dist /config/www/plugins/clock-weather-card