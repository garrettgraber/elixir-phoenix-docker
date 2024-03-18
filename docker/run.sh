#!/bin/bash

./build.sh
# echo "Deleting "
docker rm -f elixir-phoenix-docker 
echo "Running elixir-phoenix-docker..."

# docker run -it --name elixir-phoenix-docker --env ELIXIR_ENV=development -v /${PWD}/../://root/app -p 4000:4000 elixir-phoenix-docker /bin/bash

docker run --name elixir-phoenix-docker --env ELIXIR_ENV=development -v /${PWD}/../://root/app -p 4000:4000 elixir-phoenix-docker
