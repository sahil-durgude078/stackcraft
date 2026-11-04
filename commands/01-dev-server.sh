#!/usr/bin/env bash
# Run on the Dev Server (Ubuntu Server 24.04 LTS).
set -e

cd /root
wget -nc https://www.tooplate.com/zip-templates/stackcraft.zip
sudo apt-get update -y
sudo apt-get install -y unzip git
mkdir -p /root/stackcraft-site
unzip -o stackcraft.zip -d /root/stackcraft-site

# Move into the extracted directory that contains index.html before running Git commands.
# Example:
# cd /root/stackcraft-site/<extracted-folder>
# git init
# git add .
# git commit -m "Initial commit StackCraft website"
# git branch -M master
# git remote add origin https://github.com/<your-username>/<your-repository>.git
# git push -u origin master
