#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath=blackmile/project4-ml:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project4-ml --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/project4-ml-65ccd8d5dc-t9fg8 --address 0.0.0.0 8000:80

