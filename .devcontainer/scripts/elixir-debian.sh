#!/bin/bash
echo "---install elixir---"

set -e
export DEBIAN_FRONTEND=noninteractive
version=2.0

wget https://packages.erlang-solutions.com/erlang-solutions_${version}_all.deb && sudo dpkg -i erlang-solutions_${version}_all.deb
sudo apt-get update
sudo apt-get install esl-erlang -y
sudo apt-get install elixir -y
rm erlang-solutions_${version}_all.deb

echo "---install elixir done---"