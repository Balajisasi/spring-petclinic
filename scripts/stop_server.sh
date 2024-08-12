#!/bin/bash

# Echo a message for logging
echo "Stopping Apache server..."

# Stop the Apache service
sudo systemctl stop apache2

# Check if the Apache service stopped successfully
if ! systemctl is-active --quiet apache2; then
    echo "Apache has stopped successfully."
else
    echo "Apache failed to stop."
    exit 1
fi

# Install Java (OpenJDK)
echo "Installing Java..."
sudo apt-get update -y
sudo apt-get install -y openjdk-11-jdk

# Verify Java installation
echo "Verifying Java installation..."
java -version

echo "Java installation completed successfully."
