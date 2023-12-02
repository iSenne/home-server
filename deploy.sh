#!/bin/bash

# Stop het script bij een fout
set -e

echo "Applying PV for WordPress..."
kubectl apply -f wordpress/pv.yaml

echo "Applying PVC for WordPress..."
kubectl apply -f wordpress/pvc.yaml

echo "Deploying WordPress..."
kubectl apply -f wordpress/deployment.yaml
kubectl apply -f wordpress/service.yaml

echo "Creating ConfigMap for Caddy..."
kubectl apply -f proxy/configmap.yaml

echo "Deploying Caddy..."
kubectl apply -f proxy/deployment.yaml

echo "Applying nodeport..."
kubectl apply -f proxy/service.yaml

echo "Deployment completed successfully!"
