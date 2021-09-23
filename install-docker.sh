#!/bin/bash

# Source URL: https://docs.docker.com/engine/install/debian/


#1 
sudo apt-get install -y\
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

#2
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Verify key
sudo apt-key fingerprint 0EBFCD88

#3
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

#4
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io



echo "Now test install using:"
echo "'sudo docker run hello-world' command"
