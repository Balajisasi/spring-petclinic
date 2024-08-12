#!/bin/bash

# Validate Apache service status
echo "Validating Apache service..."
if systemctl is-active --quiet apache2; then
    echo "Apache is running"
else
    echo "Apache is not running"
fi

# Install Java after validation
echo "Installing Java..."
sudo apt-get update -y
sudo apt-get install -y openjdk-11-jdk

# Verify Java installation
echo "Verifying Java installation..."
java -version

echo "Java installation completed successfully."


