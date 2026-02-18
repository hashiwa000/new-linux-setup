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

command -v uv > /dev/null && {
  echo
  echo "##### uv self update"
  uv self update

  echo
  echo "##### uv tool upgrade --all"
  uv tool upgrade --all
}

command -v npm > /dev/null && {
  echo
  echo "##### npm update"
  npm update
}

command -v rustup > /dev/null && {
  echo
  echo "##### rustup update"
  rustup update
}
