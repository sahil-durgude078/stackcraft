#!/usr/bin/env bash
# Run on the Jenkins Slave/Agent (Ubuntu Server 24.04 LTS).
set -e

sudo apt-get update -y
sudo apt-get install -y fontconfig openjdk-21-jre git docker.io
sudo systemctl enable --now docker
java -version
git --version
docker --version

# Replace ubuntu with the actual OS account used by your Jenkins agent.
sudo usermod -aG docker ubuntu
# Reconnect/restart the agent session after changing group membership.
