#!/bin/bash

echo "Bootstrap is running..."
echo "Link in preinstalled packages...";
# rm -rf /root/app/node_modules
# ln -s /root/node_modules /root/app/node_modules
echo "elixir starting the app...";

echo "Current directory: $PWD"
ls

cd /root/app/
# npm ls --depth=0
echo "Current directory: $PWD"
ls

echo
which elixir
which bash
elixir --version
echo

# npm ls --depth=0

chmod -R 0777 /tmp
echo "Tailing the service..."
# tail -f /root/app/app.log
# echo "Current directory: $PWD"
# ls

# echo "Current directory: $PWD"
# ls
echo "Current Python environment: $ELIXIR_ENV"
# echo "Run status in bootstrap: $RUN_STATUS"


if [ "$ELIXIR_ENV" == "compile" ]; then
  echo "Compiling Elixir Phoenix Application for production..."
  # npm run build 
fi

# if [ "$ELIXIR_ENV" == "production" ]; then
# 	echo "Runing production Elixir Phoenix Application"
# 	npm run production
# fi

if [ "$ELIXIR_ENV" == "development" ]; then
  echo "Starting Elixir Phoenix Application..."
  mix phx.server
fi