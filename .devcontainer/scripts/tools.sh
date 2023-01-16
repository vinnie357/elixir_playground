#!/bin/bash
# install tools for container standup
echo "cwd: $(pwd)"
echo "---getting tools---"
sudo apt-get update
sudo apt-get install -y jq less
. .devcontainer/scripts/preCommit.sh
. .devcontainer/scripts/elixir-debian.sh
echo "---tools done---"
