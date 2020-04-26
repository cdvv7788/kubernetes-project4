#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=project4
docker_id=cdvv7788

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $docker_id/$dockerpath"
docker login --username=$docker_id
docker tag $dockerpath $docker_id/$dockerpath

# Step 3:
# Push image to a docker repository
docker push $docker_id/$dockerpath
