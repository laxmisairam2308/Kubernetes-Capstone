#!/bin/bash
# Install required tools
sudo apt update && sudo apt install -y docker.io kubectl awscli eksctl
# Enable Docker
sudo systemctl start docker
sudo systemctl enable docker
