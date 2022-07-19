#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=voti/mlmicroserviceapi:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlmicroserviceapi --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Wait for pod to be ready
# sleep 1m
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mlmicroserviceapi 8000:80
