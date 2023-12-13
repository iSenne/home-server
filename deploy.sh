#!/bin/bash

# Stop het script bij een fout
set -e

# Laad omgevingsvariabelen
export $(egrep -v '^#' .env | xargs)

echo "Creating generic secrets..."
kubectl create secret generic punter-s3-backup \
  --save-config \
  --from-literal=AWS_ACCESS_KEY_ID=$PUNTER_S3_AWS_ACCESS_KEY_ID \
  --from-literal=AWS_SECRET_ACCESS_KEY=$PUNTER_S3_AWS_SECRET_ACCESS_KEY \
  -n longhorn-system \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -

kubectl create secret docker-registry docker-hub-secret \
  --save-config \
  --docker-username=$DOCKER_HUB_USERNAME \
  --docker-password=$DOCKER_HUB_PASSWORD \
  --docker-email=$DOCKER_HUB_EMAIL \
  -n longhorn-system \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -

kubectl create secret generic docker-hub-secret \
    --from-file=.dockerconfigjson=/home/isenne/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

echo "Deploying proxy..."
kubectl apply -f proxy/home-assistant.yaml
kubectl apply -f proxy/node-red.yaml

echo "Deploying Database..."
kubectl create secret generic mariadb-secret \
  --save-config \
  --from-literal=mysql_root_password=$MYSQL_ROOT_PASSWORD \
  --from-literal=mysql_password=$MYSQL_PASSWORD \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -
kubectl apply -f database/pv.yaml
kubectl apply -f database/pvc.yaml
kubectl apply -f database/configmap.yaml
kubectl apply -f database/deployment.yaml
kubectl apply -f database/service.yaml

echo "Deploying WordPress..."
kubectl create secret generic wordpress-secret \
  --save-config \
  --from-literal=WORDPRESS_DB_PASSWORD=$WORDPRESS_DB_PASSWORD \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -
kubectl apply -f wordpress/pvc.yaml
kubectl apply -f wordpress/configmap.yaml
kubectl apply -f wordpress/deployment.yaml
kubectl apply -f wordpress/service.yaml
kubectl apply -f wordpress/ingress.yaml

echo "Deploying Home Assistant..."
kubectl apply -f home-assistant/pvc.yaml
kubectl apply -f home-assistant/deployment.yaml
kubectl apply -f home-assistant/service.yaml
kubectl apply -f home-assistant/ingress.yaml

echo "Deploying Node Red..."
kubectl apply -f node-red/pvc.yaml
kubectl apply -f node-red/deployment.yaml
kubectl apply -f node-red/service.yaml
kubectl apply -f node-red/ingress.yaml

echo "Deploying MQTT..."
kubectl apply -f mqtt/configmap.yaml
kubectl apply -f mqtt/deployment.yaml
kubectl apply -f mqtt/service.yaml

echo "Deployment completed successfully!"
