#!/bin/bash
echo "---install hex---"
# requires elixir
if ! command -v mix &> /dev/null
then
    echo "mix could not be found"
    exit
fi
mix local.hex --force

echo "---install hex done---"
