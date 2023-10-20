#!/bin/bash

# Name of the Docker image
IMAGE_NAME="torrust-tracker"

# Build the Docker image
echo "Building Docker image..."
if docker build -t $IMAGE_NAME .; then
    echo "Successfully built $IMAGE_NAME."
else
    echo "Error building Docker image."
    exit 1
fi

docker run -it \
    --env TORRUST_TRACKER_API_ADMIN_TOKEN="MySecretToken" \
    --env USER_ID="$(id -u)" \
    --publish 0.0.0.0:7070:7070/tcp \
    --publish 0.0.0.0:6969:6969/udp \
    --publish 0.0.0.0:1212:1212/tcp \
    --volume ./storage/tracker/lib:/var/lib/torrust/tracker:Z \
    --volume ./storage/tracker/log:/var/log/torrust/tracker:Z \
    --volume ./storage/tracker/etc:/etc/torrust/tracker:Z \
    torrust-tracker:latest
