#!/bin/zsh

set -e

IMAGE_NAME=react-learning

# Remove all previous containers if exist
docker container ls -a | grep "${IMAGE_NAME}" | awk '{ print $1 }' | xargs docker rm || true
# Remove the image
docker image rm ${IMAGE_NAME} || true
# Build
docker build -t ${IMAGE_NAME} .
# Print what we built
docker images
