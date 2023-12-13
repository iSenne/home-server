#!/bin/bash

# Stop het script bij een fout
set -e

echo "Stop running zigbee2mqtt"
# docker stop zigbee2mqtt

echo "remove existing container and volue"
docker container rm zigbee2mqtt
docker volume rm zigbee2mqtt

echo "Build dockerfile"
docker buildx build --build-arg BUILD_ENV=local --platform linux/amd64,linux/arm64 -t isenne/zigbee2mqtt:local . --push
# docker buildx build --build-arg BUILD_ENV=production --platform linux/amd64,linux/arm64 -t isenne/zigbee2mqtt:latest . --push

echo "Run docker"
docker run -it -d -p 8099:8099 -v zigbee2mqtt:/app/data --name zigbee2mqtt --pull always isenne/zigbee2mqtt:local

docker logs zigbee2mqtt -f