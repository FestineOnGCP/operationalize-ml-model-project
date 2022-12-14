#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t ml-img .

# Step 2: 
# List docker images
docker images

#List the running containers
docker ps

# Step 3: 
# Run flask app
docker run -d -p 8000:80 --name ml-con ml-img