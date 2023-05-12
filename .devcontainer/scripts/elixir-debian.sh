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

VERSION="1.14.4"
wget https://github.com/elixir-lang/elixir/releases/download/v${VERSION}/elixir-otp-25.zip -O elixir.zip
sudo unzip elixir.zip -d /usr/lib/elixir
rm elixir.zip
#export PATH="$PATH:/usr/lib/elixir/bin"

echo "---install elixir done---"
