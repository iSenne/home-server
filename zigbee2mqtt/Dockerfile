##### Config selector
FROM alpine as config_selector
ARG BUILD_ENV=production
COPY config/ /config/
RUN if [ "$BUILD_ENV" = "local" ] ; then mv /config/configuration-local.yaml /config/configuration.yaml && rm /config/configuration-production.yaml ; else mv /config/configuration-production.yaml /config/configuration.yaml && rm /config/configuration-local.yaml ; fi

##### Build image
FROM koenkk/zigbee2mqtt:latest

COPY --from=config_selector /config/ /app/data/