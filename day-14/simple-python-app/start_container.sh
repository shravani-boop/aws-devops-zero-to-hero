#!/bin/bash
set -e

# Stop old container if it exists
docker rm -f simple-python-flask-app || true

# Pull latest image
docker pull shravanid123/simple-python-flask-app:latest

# Run container
docker run -d --name simple-python-flask-app -p 5000:5000 shravanid123/simple-python-flask-app:latest
