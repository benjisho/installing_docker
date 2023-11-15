#!/bin/bash

# https://docs.docker.com/desktop/install/archlinux/

# Prerequisites
echo "Installing gnome-terminal..."
sudo pacman -S gnome-terminal

# Download and install the Docker Desktop package
echo "Downloading Docker Desktop package..."
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.25.1-x86_64.pkg.tar.zst

echo "Installing Docker Desktop..."
sudo pacman -U ./docker-desktop-4.25.1-x86_64.pkg.tar.zst

echo "Starting Docker Desktop..."
systemctl --user start docker-desktop

echo "Checking the versions of Docker Compose and Docker..."
docker compose version
docker --version
docker version

echo "Enabling Docker Desktop to start on login..."
systemctl --user enable docker-desktop

echo "Docker Desktop installation completed successfully!"
