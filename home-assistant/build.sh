#!/bin/bash

# Stop het script bij een fout
set -e

echo "Stop running home assistant"
docker stop homeassistant

echo "remove existing container"
docker container rm homeassistant

echo "Build dockerfile"
docker buildx build --build-arg BUILD_ENV=local --platform linux/amd64,linux/arm64 -t isenne/home-assistant:local . --push
# docker buildx build --build-arg BUILD_ENV=production --platform linux/amd64,linux/arm64 -t isenne/home-assistant:latest . --push

echo "Run docker"
docker run -it -d -p 8123:8123 -v home_assistant_storage:/config/.storage --name homeassistant --pull always isenne/home-assistant:local

docker logs homeassistant -f