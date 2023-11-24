#!/bin/bash

repository=eneasjr
IMAGE=nvidia_neural_networks
VERSION=v1.0
IMAGE_ID=93758735b44e

echo "build image docker"
echo "========================================================================================="
# run docker build
echo "docker registry tags"
docker tag ${IMAGE_ID} ${repository}/${IMAGE}:${VERSION}
docker compose build
echo "========================================================================================="
echo "push image docker in docker hub"
docker push ${repository}/${IMAGE}:${VERSION}
echo "========================================================================================="
echo "docker run locally"
#docker run --gpus all --privileged ${repository}/${IMAGE}:${VERSION} nvidia-smi
#docker run -it --name ${repository}/${IMAGE}:${VERSION} --gpus all -p 3000:3000 ${repository}/${IMAGE}:${VERSION}
#docker run -t -i --privileged ${repository}/${IMAGE}:${VERSION} bash
docker run --rm --runtime=nvidia --gpus all ${repository}/${IMAGE}:${VERSION} nvidia-smi
echo "========================================================================================="
echo "finishing process in docker hub"
