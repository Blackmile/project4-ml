#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
export dockerpath=blackmile/project4-ml:v1.0.0
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker tag project4-ml $dockerpath

# Step 3:
# Push image to a docker repository
sudo docker login
sudo docker push $dockerpath