#!/bin/bash

# Update package list
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Create a simple home page
echo "This is webserver installed by shell scripting" | sudo tee /var/www/html/index.html > /dev/null

# Restart Nginx to apply changes
sudo systemctl restart nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Print message
echo "Nginx installed successfully! Open your browser and visit http://localhost"
