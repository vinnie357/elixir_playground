#!/bin/bash
echo "---install inotify-tools---"
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install inotify-tools -y

echo "---install inotify-tools done---"
