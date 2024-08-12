#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt-get update -y

# Install Java (OpenJDK)
echo "Installing Java..."
sudo apt-get install -y openjdk-11-jdk

# Verify Java installation
echo "Verifying Java installation..."
java -version

echo "Java installation completed successfully."

