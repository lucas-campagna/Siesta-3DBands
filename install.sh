#!/bin/bash

echo "It will install this following dependencies:"
echo "- nodejs"
echo "- npm"
echo "- yarn"
echo "- vue-cli"
echo "- virtualenv"

read -p "Are you sure? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Installing nodejs..."
    sudo apt-get update
    sudo apt-get install nodejs
    sudo ln -s `which nodejs` /usr/bin/node

    echo "Installing npm..."
    sudo apt-get install npm

    echo "Installing yarn..."
    npm install yarn --global

    echo "Installing vue-cli..."
    npm install -g @vue/cli
    npm install -g @vue/cli-init

    echo "Installing virtualenv"
    virtualenv -p python3 venv
    echo "Job is done!"
fi

