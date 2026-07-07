#!/bin/bash
set -e

# Stop and remove old container 
docker rm -f simple-python-flask-app:latest || true

# Pull latest image
docker pull shravanid123/simple-python-flask-app:latest 

# Run new container
docker run -d --name simple-python-flask-app -p 5000:5000 shravanid123/simple-python-flask-app:latest
