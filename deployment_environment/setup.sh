#!/bin/bash
# Update system packages
sudo apt update && sudo apt upgrade -y

# Install required tools
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin/
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io
sudo snap install kubectl --classic
sudo snap install aws-cli --classic

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
