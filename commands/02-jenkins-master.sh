#!/usr/bin/env bash
# Run on the Jenkins Master (Ubuntu Server 24.04 LTS).
set -e

sudo apt-get update -y
sudo apt-get install -y fontconfig openjdk-21-jre
java -version

sudo install -d -m 0755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list >/dev/null
sudo apt-get update -y
sudo apt-get install -y jenkins
sudo systemctl enable --now jenkins
sudo systemctl status jenkins --no-pager

# Initial setup password:
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
