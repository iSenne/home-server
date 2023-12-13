##### Config selector
FROM alpine as config_selector
ARG BUILD_ENV=production
COPY config/ /config/
RUN rm /config/secrets-example.yaml
RUN if [ "$BUILD_ENV" = "local" ] ; then mv /config/secrets_local.yaml /config/secret.yaml && rm /config/secrets_production.yaml ; else mv /config/secrets_production.yaml /config/secret.yaml && rm /config/secrets_local.yaml ; fi

##### Build image
FROM koenkk/zigbee2mqtt:latest

COPY --from=config_selector /config/ /app
COPY --from=config_selector /config/ /app/data/
