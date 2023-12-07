#!/bin/bash

# Stop het script bij een fout
set -e

# Laad omgevingsvariabelen
export $(egrep -v '^#' .env | xargs)

echo "Applying PV's'..."
kubectl apply -f database/pv.yaml

echo "Applying PVC's'..."
kubectl apply -f database/pvc.yaml
kubectl apply -f wordpress/pvc.yaml

echo "Creating ConfigMap's'..."
kubectl apply -f database/configmap.yaml
kubectl apply -f wordpress/configmap.yaml

echo "Creating secrets from .env..."
kubectl create secret generic mariadb-secret \
  --save-config \
  --from-literal=mysql_root_password=$MYSQL_ROOT_PASSWORD \
  --from-literal=mysql_password=$MYSQL_PASSWORD \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -
kubectl create secret generic wordpress-secret \
  --save-config \
  --from-literal=WORDPRESS_DB_PASSWORD=$WORDPRESS_DB_PASSWORD \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -

echo "Deploying proxy..."
kubectl apply -f proxy/home-assistant.yaml
kubectl apply -f proxy/node-red.yaml

echo "Deploying Database..."
kubectl apply -f database/deployment.yaml
kubectl apply -f database/service.yaml

echo "Deploying WordPress..."
kubectl apply -f wordpress/deployment.yaml
kubectl apply -f wordpress/service.yaml
kubectl apply -f wordpress/ingress.yaml

echo "Deploying Code..."
kubectl apply -f code/deployment.yaml
kubectl apply -f code/service.yaml
kubectl apply -f code/ingress.yaml

echo "Deployment completed successfully!"
