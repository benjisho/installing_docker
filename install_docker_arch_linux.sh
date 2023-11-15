#!/bin/bash

# Prerequisites
echo "Installing gnome-terminal..."
sudo pacman -S gnome-terminal

# Download the Docker Desktop package
echo "Downloading Docker Desktop package..."
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.1-x86_64.pkg.tar.zst

# Install Docker Desktop
echo "Installing Docker Desktop..."
sudo pacman -U ./docker-desktop-4.25.1-x86_64.pkg.tar.zst

# Start Docker Desktop
echo "Starting Docker Desktop..."
systemctl --user start docker-desktop

# Check the versions of Docker Compose and Docker
echo "Checking the versions of Docker Compose and Docker..."
docker compose version
docker --version
docker version

# Enable Docker Desktop to start on login
echo "Enabling Docker Desktop to start on login..."
systemctl --user enable docker-desktop

echo "Docker Desktop installation completed successfully!"
