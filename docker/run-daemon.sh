#!/bin/bash

./build.sh
# echo "Deleting "
docker rm -f elixir-phoenix-docker 
echo "Running elixir-phoenix-docker..."

docker run --name elixir-phoenix-docker -d --env ELIXIR_ENV=development -v /${PWD}/../://root/app -p 4000:4000 elixir-phoenix-docker
