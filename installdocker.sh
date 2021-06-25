#!/bin/sh

# Set Color
RCol='\e[0m';
BackslashPur='\n\n\e[0;35m';

# Update Packagelist
echo "${BackslashPur}Update Packagelist...${RCol}"
apt update

# Install Prerequisite Packages
echo "${BackslashPur}Install Prerequisite Packages...${RCol}"
apt install apt-transport-https ca-certificates curl software-properties-common

# Add GPG key to the system
echo "${BackslashPur}Add GPG key to the system...${RCol}"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker repository to apt sources
echo "${BackslashPur}Add Docker repository to apt sources...${RCol}"
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update Packagelist with new Repository
echo "${BackslashPur}Update Packagelist with new Repository...${RCol}"
apt update

# Check Docker Source (must be from the Docker Repo)
echo "${BackslashPur}Check Docker Source (must be from https://download.docker.com/linux/ubuntu)...${RCol}"
apt-cache policy docker-ce

# Install Docker
echo "${BackslashPur}Install Docker...${RCol}"
apt install docker-ce

# Check Docker Status
echo "${BackslashPur}Check Docker Status...${RCol}"
echo "${BackslashPur}Press Q to exit${RCol}"
systemctl status docker

# Download current version 1.29.2 of Docker Compose (25.06.21)
echo "${BackslashPur}Download Docker Compose with Curl${RCol}"
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
echo "${BackslashPur}Apply executable permissions to the binary${RCol}"
chmod +x /usr/local/bin/docker-compose

# Check Version
echo "${BackslashPur}Check Version${RCol}\n"
docker-compose --version

echo "${BackslashPur}You can delete this folder now.${RCol}"