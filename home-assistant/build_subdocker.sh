#!/bin/bash

set -e

echo "Build dockerfile's"
docker buildx build -f dockers/mushroom.Dockerfile --platform linux/amd64,linux/arm64 -t isenne/multistage:mushroom . --push
docker buildx build -f dockers/mini-graph-card.Dockerfile --platform linux/amd64,linux/arm64 -t isenne/multistage:mini-graph-card . --push
docker buildx build -f dockers/clock-weather-card.Dockerfile --platform linux/amd64,linux/arm64 -t isenne/multistage:clock-weather-card . --push
docker buildx build -f dockers/meteoalarm-card.Dockerfile --platform linux/amd64,linux/arm64 -t isenne/multistage:meteoalarm-card . --push
docker buildx build -f dockers/hourly-weather.Dockerfile --platform linux/amd64,linux/arm64 -t isenne/multistage:hourly-weather . --push