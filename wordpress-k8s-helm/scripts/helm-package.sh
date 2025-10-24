#!/bin/bash

# This script packages the Helm charts for WordPress, MySQL, Nginx OpenResty, and Monitoring.

set -e

# Define the charts directory
CHARTS_DIR="./charts"

# Package the WordPress chart
helm package "$CHARTS_DIR/wordpress"

# Package the MySQL chart
helm package "$CHARTS_DIR/mysql"

# Package the Nginx OpenResty chart
helm package "$CHARTS_DIR/nginx-openresty"

# Package the Monitoring chart
helm package "$CHARTS_DIR/monitoring"

echo "Helm charts packaged successfully."