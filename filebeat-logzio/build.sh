#!/bin/bash

export TAG="filebeat-logzio:latest"

docker build -t $TAG ./
echo "Built: $TAG"