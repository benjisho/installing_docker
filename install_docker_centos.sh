#!/bin/bash

# Script to Install Docker on CentOS

echo "Uninstalling old Docker versions..."
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

echo "Setting up the Docker repository..."
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

echo "Installing Docker Engine, containerd, and Docker plugins..."
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Starting Docker..."
sudo systemctl start docker

echo "Verifying Docker installation..."
sudo docker run hello-world

echo "Docker installation completed successfully!"
