#!/bin/bash

# Script to Install Docker Desktop on Arch Linux

# Step 1: Install gnome-terminal (for non-Gnome Desktop environments)
echo "Installing gnome-terminal..."
sudo pacman -S gnome-terminal

# Step 2: Install Docker client binary
# Note: This step assumes you have already downloaded the Docker client binary and it is in the current directory.
# Replace '<version>' with the actual version number you have downloaded.
echo "Installing Docker client binary..."
sudo pacman -U docker-desktop-<version>-<arch>.pkg.tar.zst

# Step 3: Launch Docker Desktop
echo "Starting Docker Desktop..."
systemctl --user start docker-desktop

# Verify Docker Desktop Installation
echo "Verifying Docker Desktop installation..."
docker compose version
docker --version

echo "Docker Desktop installation completed successfully!"
