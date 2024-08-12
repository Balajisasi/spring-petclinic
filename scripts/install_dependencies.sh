#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install Java (OpenJDK)
sudo apt-get install -y openjdk-11-jdk

# Verify Java installation
java -version

echo "Java installation completed successfully."

