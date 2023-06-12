#!/bin/bash

# $1 = git repo link, $2 = dockerhub repo name

git clone $1 ./repo
cd ./repo
# Login to Dockerhub

echo "Logging in"
read -p "Docker Hub username: " docker_username
read -sp "Docker Hub password: " docker_password
echo

docker login --username $docker_username --password $docker_password
docker build . -t $2
docker push $2
