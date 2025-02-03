#!/bin/bash

# Update system packages
sudo dnf update -y

# Install Docker
sudo dnf install -y docker

# Enable and start Docker service
sudo systemctl enable --now docker

# Check Docker service status
sudo systemctl status docker

# Add the current user to the Docker group to run Docker without sudo
sudo usermod -aG docker $USER

# Display a message to inform the user to log out and log back in
echo "Docker installation complete. Please log out and log back in for the group changes to take effect."
