# The build image
FROM python:3.10.7-slim as builder
LABEL stage=builder
RUN apt-get update && apt-get install bluez gcc libglib2.0-dev build-essential -y && apt-get clean
COPY requirements.txt /app/requirements.txt
WORKDIR /app/
RUN pip install --user -r requirements.txt
COPY . /app


##### Config selector
FROM alpine as config_selector
ARG BUILD_ENV=production
COPY config/ /config/
RUN rm /config/secrets_example.yaml
RUN if [ "$BUILD_ENV" = "local" ] ; then mv /config/secrets_local.yaml /config/secrets.yaml && rm /config/secrets_production.yaml ; else mv /config/secrets_production.yaml /config/secrets.yaml && rm /config/secrets_local.yaml ; fi


# The production image
FROM python:3.10.7-slim as app
RUN apt-get update && apt-get install bluetooth bluez -y && apt-get clean
COPY --from=builder /root/.local /root/.local
COPY --from=builder /app/miflora-mqtt-daemon.py /app/miflora-mqtt-daemon.py
COPY config.ini /config/config.ini
WORKDIR /app/
ENV PATH=/root/.local/bin:$PATH

CMD [ "python3", "./miflora-mqtt-daemon.py", "--config_dir", "/config" ]