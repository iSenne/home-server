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

##### Config selector
FROM alpine as config_selector
ARG BUILD_ENV=production
COPY config/ /config/
RUN rm /config/secrets_example.yaml
RUN if [ "$BUILD_ENV" = "local" ] ; then mv /config/secrets_local.yaml /config/secrets.yaml && rm /config/secrets_production.yaml ; else mv /config/secrets_production.yaml /config/secrets.yaml && rm /config/secrets_local.yaml ; fi

##### Build image
FROM ghcr.io/home-assistant/home-assistant:stable

COPY --from=config_selector /config/ /config/

COPY --from=afvalbeheer /repo/custom_components/afvalbeheer /config/custom_components/afvalbeheer
COPY --from=samsungtv /repo/custom_components/samsungtv_tizen /config/custom_components/samsungtv_tizen

COPY --from=lovelace-card-mod /repo /config/www/plugins/lovelace-card-mod
COPY --from=lovelace-auto-entities /repo /config/www/plugins/lovelace-auto-entities
COPY --from=lovelace-layout-card /repo /config/www/plugins/lovelace-layout-card

COPY --from=isenne/multistage:mushroom /app/dist /config/www/plugins/lovelace-mushroom
COPY --from=isenne/multistage:mini-graph-card /app/dist /config/www/plugins/mini-graph-card
COPY --from=isenne/multistage:clock-weather-card /app/dist /config/www/plugins/clock-weather-card