#!/bin/bash

export IMAGE="jenkinsuoc"
export TAG="latest"
export REGISTRY="registryuoc:5050"

docker build -t ${IMAGE}:${TAG} ./
echo "Image Built: $IMAGE Tag: $TAG"
docker tag ${IMAGE}:${TAG} ${REGISTRY}/${IMAGE}:${TAG}
docker push ${REGISTRY}/${IMAGE}:${TAG}
docker rmi jenkinsuoc:latest
docker rmi jenkins/jenkins:lts
