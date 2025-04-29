#!/bin/sh

set -e

echo
echo "##### sudo apt update -y"
sudo apt update -y

echo
echo "##### sudo apt upgrade -y"
sudo apt upgrade -y

echo
echo "##### sudo apt autoremove -y"
sudo apt autoremove -y

echo
echo "##### uv self update"
uv self update
