#!/bin/bash

# Build Docker images for WordPress, MySQL, and Nginx OpenResty

# Define image names
WORDPRESS_IMAGE="my-wordpress-image"
MYSQL_IMAGE="my-mysql-image"
NGINX_IMAGE="my-nginx-openresty-image"

# Build WordPress image
echo "Building WordPress image..."
docker build -t $WORDPRESS_IMAGE ./docker/wordpress

# Build MySQL image
echo "Building MySQL image..."
docker build -t $MYSQL_IMAGE ./docker/mysql

# Build Nginx OpenResty image
echo "Building Nginx OpenResty image..."
docker build -t $NGINX_IMAGE ./docker/nginx-openresty

echo "All images built successfully!"