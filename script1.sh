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
