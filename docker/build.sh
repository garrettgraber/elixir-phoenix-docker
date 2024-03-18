#!/bin/bash
echo "Building elixir-phoenix-docker..."

docker build -t elixir-phoenix-docker . 
# docker build --no-cache -t elixir-phoenix-docker .

echo "Build Done!"