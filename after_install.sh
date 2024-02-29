#!/bin/bash

echo "Logging in to Amazon ECR..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 381492253724.dkr.ecr.eu-north-1.amazonaws.com
echo "Logged in to Amazon ECR successfully."

echo "Pulling image from Amazon ECR"
docker pull 381492253724.dkr.ecr.eu-north-1.amazonaws.com/project1:latest
echo "Pulled image from Amazon ECR successfully."
