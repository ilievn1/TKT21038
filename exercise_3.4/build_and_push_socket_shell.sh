#!/bin/bash

# $1 = git repo link, $2 = dockerhub repo name

git clone $1 ./repo
cd ./repo
# Login to Dockerhub

echo "Logging in...."
docker login --username $DOCKER_USER --password $DOCKER_PWD
echo

echo "Building..."
docker build . -t $2
echo

echo "Building..."
docker push $2
echo 
