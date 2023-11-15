#!/bin/bash

# Script to Install Docker on CentOS

# Step 1: Uninstall old versions of Docker
echo "Uninstalling old Docker versions..."
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# Step 2: Set up the Docker repository
echo "Setting up the Docker repository..."
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Step 3: Install Docker Engine, containerd, and plugins
echo "Installing Docker Engine, containerd, and Docker plugins..."
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Step 4: Start Docker
echo "Starting Docker..."
sudo systemctl start docker

# Step 5: Verify Installation
echo "Verifying Docker installation..."
sudo docker run hello-world

echo "Docker installation completed successfully!"
