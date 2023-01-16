#!/bin/bash
echo "---install elixir---"
#this is for root
export DEBIAN_FRONTEND=noninteractive
# vars
version=2.0

wget https://packages.erlang-solutions.com/erlang-solutions_${version}_all.deb && sudo dpkg -i erlang-solutions_${version}_all.deb
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install esl-erlang elixir -y
rm erlang-solutions_${version}_all.deb

echo "---install elixir done---"
