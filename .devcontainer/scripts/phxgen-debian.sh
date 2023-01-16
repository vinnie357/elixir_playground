#!/bin/bash
echo "---install phx_new---"
# requires elixir
if ! command -v mix &> /dev/null
then
    echo "mix could not be found"
    exit
fi
# requires hex
mix local.hex --if-missing --force
# install Phoenix Application Generator
mix archive.install hex phx_new --force

echo "---install phx_new done---"
