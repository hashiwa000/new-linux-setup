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

command -v uv > /dev/null
uv_installed=$?
if [ ${uv_installed} -eq 0 ] ; then
  echo
  echo "##### uv self update"
  uv self update

  echo
  echo "##### uv tool upgrade --all"
  uv tool upgrade --all
fi

command -v npm > /dev/null
npm_installed=$?
if [ ${npm_installed} -eq 0 ] ; then
  echo
  echo "##### npm update"
  npm update
fi
