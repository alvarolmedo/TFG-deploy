#!/bin/bash

export IMAGE="jenkinsuoc"
export TAG="latest"

docker build -t ${IMAGE}:${TAG} ./
echo "Image Built: $IMAGE Tag: $TAG"
docker rmi jenkins/jenkins:lts
