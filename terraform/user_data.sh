#!/bin/bash
# Update all system packages
sudo apt-get update -y

# Install prerequisites for Docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again and install Docker CE
sudo apt-get update -y
sudo apt-get install -y docker-ce

# Add the 'ubuntu' user to the 'docker' group to run Docker commands without sudo
# This change will apply on the next login session.
newgrp docker
sudo usermod -aG docker ubuntu

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# --- Install Kubectl ---
# Download the latest stable version of kubectl
sudo curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
# Make the kubectl binary executable
sudo chmod +x ./kubectl
# Move the binary into your PATH
sudo mv ./kubectl /usr/local/bin/kubectl

# --- Install Minikube ---
# Download the latest version of Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
# Install Minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube