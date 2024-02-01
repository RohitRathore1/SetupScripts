#!/bin/bash

# Update and upgrade the system packages
sudo apt update
sudo apt upgrade -y

# Install Java Runtime Environment (JRE)
sudo apt install default-jre -y
echo "JRE version:"
java -version

# Install Java Development Kit (JDK)
sudo apt install default-jdk -y
echo "JDK version:"
javac -version

# Adding the Cassandra repository
echo "deb https://debian.cassandra.apache.org 41x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list

# Adding the Cassandra repository keys
curl https://downloads.apache.org/cassandra/KEYS | sudo apt-key add -

# Update and install Cassandra
sudo apt-get update
sudo apt-get install cassandra -y

# Check the status of Cassandra (Uncomment the following lines if you want these checks to be part of the script)
# sudo systemctl status cassandra
# sudo nodetool status
# sudo cqlsh

echo "Installation complete."
