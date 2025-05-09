#!/bin/bash
# Update system packages
sudo apt update && sudo apt upgrade -y

# Install required tools
sudo apt install -y docker.io kubectl awscli eksctl

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add user to Docker group (avoid using sudo every time)
sudo usermod -aG docker $USER

# Install Python dependencies if necessary
pip install --user awscli boto3

# Verify installations
docker --version
kubectl version --client
aws --version
eksctl version

echo "✅ Deployment environment setup complete!"
