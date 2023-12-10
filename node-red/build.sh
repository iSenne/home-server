#!/bin/bash

# Stop het script bij een fout
set -e

echo "Build dockerfile"
docker build -t isenne/nodered:latest .
docker tag isenne/nodered:latest isenne/nodered:latest
docker push isenne/nodered:latest

echo "Build, tag and push completed successfully!"

# docker run -it -p 1880:1880 -v node_red_data:/data --name nodered isenne/nodered