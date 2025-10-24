#!/bin/bash

# Cleanup script for WordPress Kubernetes deployment

# Set the release name
RELEASE_NAME=my-release

# Delete the Helm release
helm delete $RELEASE_NAME

# Remove persistent volume claims
kubectl delete pvc --all

# Optionally, remove persistent volumes if not needed
# kubectl delete pv --all

echo "Cleanup completed."