#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=cdvv7788/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=project4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
x=""
target="project4"
while [ "$x" != "$target" ]
do
  x=$(eval "kubectl get pods | grep project4 | grep Running | head -1 | cut -f1 -d' '")
  sleep 2
done
kubectl port-forward project4 8000:80
