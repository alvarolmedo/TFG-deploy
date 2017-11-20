#!/bin/bash

export TAG="jenkinsuoc:latest"

docker build -t $TAG ./
echo "Built: $TAG"