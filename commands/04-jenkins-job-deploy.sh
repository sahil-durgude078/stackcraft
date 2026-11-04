#!/usr/bin/env bash
# Configure this as the Execute shell build step in Freestyle job1.
# Run on the Jenkins node/agent that has Docker and the checked-out workspace.
set -e

sudo docker rm -f container1 || true
sudo docker build -t webserver-image .
sudo docker run -d --name container1 -p 5000:80 webserver-image
sudo docker ps --filter name=container1
