#!/bin/bash

# Stop het script bij een fout
set -e

echo "Build dockerfile"
# docker build -t noderedtest . --no-cache
# docker buildx create --name mybuilder --use # Only run once
docker buildx inspect --bootstrap
docker buildx build --platform linux/amd64,linux/arm64 -t isenne/nodered:latest . --push --no-cache
# docker tag isenne/nodered:latest isenne/nodered:latest
# docker push isenne/nodered:latest

echo "Build, tag and push completed successfully!"

# docker run -it -p 1880:1880 -e "NODE_RED_CREDENTIAL_SECRET=appel" --name nodered isenne/nodered