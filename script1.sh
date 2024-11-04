#!/bin/bash

# Function to check the status of the firewall
check_firewall() {
    echo "Checking firewall status..."
    sudo ufw status
}

# Function to check for system updates
check_updates() {
    echo "Checking for system updates..."
    sudo apt update
}

# Function to check for system upgrades
check_upgrades() {
    echo "Checking for system upgrades..."
    sudo apt list --upgradable
}

# Function to check if a directory exist and if not, make one
DIRECTORY="schoolwork"
if [ -d "$DIRECTORY" ]; then
    echo "Directory '$DIRECTORY' already exists."
else
    echo "Directory '$DIRECTORY' does not exist. would you like to create it now? (y/n)"
if [ "create it now" == "y" ]
mkdir "$DIRECTORY"
echo "Directory '$DIRECTORY' created."
fi

