#!/bin/bash

# Stop het script bij een fout
set -e

# Laad omgevingsvariabelen
export $(egrep -v '^#' .env | xargs)

if [ -z "${MYSQL_ROOT_PASSWORD}" ]; then
    echo "MYSQL_ROOT_PASSWORD is niet ingesteld."
    exit 1
fi

if [ -z "${MYSQL_PASSWORD}" ]; then
    echo "MYSQL_PASSWORD is niet ingesteld."
    exit 1
fi

echo "Applying PV's'..."
kubectl apply -f database/pv.yaml
kubectl apply -f wordpress/pv.yaml
kubectl apply -f proxy/pv.yaml

echo "Applying PVC's'..."
kubectl apply -f database/pvc.yaml
kubectl apply -f wordpress/pvc.yaml
kubectl apply -f proxy/pvc.yaml

echo "Creating ConfigMap's'..."
kubectl apply -f database/configmap.yaml
kubectl apply -f proxy/configmap.yaml

echo "Creating secrets from .env..."
kubectl create secret generic mariadb-secret \
  --save-config \
  --from-literal=mysql_root_password=$MYSQL_ROOT_PASSWORD \
  --from-literal=mysql_password=$MYSQL_PASSWORD \
  --dry-run=client \
  -o yaml | \
  kubectl apply -f -

echo "Deploying Proxy..."
kubectl apply -f proxy/deployment.yaml
kubectl apply -f proxy/service.yaml

echo "Deploying Database..."
kubectl apply -f database/deployment.yaml
kubectl apply -f database/service.yaml

echo "Deploying WordPress..."
kubectl apply -f wordpress/deployment.yaml
kubectl apply -f wordpress/service.yaml

echo "Restart Proxy..."
kubectl rollout restart deployment caddy

echo "Deployment completed successfully!"
