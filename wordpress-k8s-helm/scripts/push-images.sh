#!/bin/bash

# Define the image names
WORDPRESS_IMAGE="your-docker-repo/wordpress:latest"
MYSQL_IMAGE="your-docker-repo/mysql:latest"
NGINX_IMAGE="your-docker-repo/nginx-openresty:latest"

# Push the WordPress image
echo "Pushing WordPress image..."
docker push $WORDPRESS_IMAGE

# Push the MySQL image
echo "Pushing MySQL image..."
docker push $MYSQL_IMAGE

# Push the Nginx OpenResty image
echo "Pushing Nginx OpenResty image..."
docker push $NGINX_IMAGE

echo "All images pushed successfully!"