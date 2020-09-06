#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fkneist/project5

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=fkneist
docker tag project5 fkneist/project5:0.1.0

# Step 3:
# Push image to a docker repository
docker push fkneist/project5