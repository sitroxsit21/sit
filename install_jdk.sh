#!/bin/bash

# Download JDK 11 tar.gz file
wget https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz

# Extract JDK 11 tar.gz file
tar -xvf openjdk-11+28_linux-x64_bin.tar.gz

# Move JDK 11 directory to /usr/lib/jvm
sudo mv jdk-11 /usr/lib/jvm/

# Set JAVA_HOME environment variable
echo 'export JAVA_HOME=/usr/lib/jvm/jdk-11' >> ~/.bashrc

# Update PATH variable to include JDK 11 binaries
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc

# Source .bashrc to apply changes
source ~/.bashrc

# Verify Java installation
java -version
