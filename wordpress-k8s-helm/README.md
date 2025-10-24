# WordPress Kubernetes Helm Charts

This repository contains Helm charts for deploying a production-grade WordPress application on Kubernetes with monitoring.

## Components
- WordPress application
- MySQL database
- Nginx with OpenResty
- Prometheus/Grafana monitoring stack

## Prerequisites
- Kubernetes 1.19+
- Helm 3.0+
- PV provisioner support in the cluster
- LoadBalancer support

## Installation
```bash
# Add the repo
helm repo add my-wordpress https://vitesh21.github.io/wordpress-k8s-helm

# Install WordPress
helm install my-release my-wordpress/wordpress
```

## Configuration
See `values.yaml` in each chart for configuration options.

## Monitoring
Includes Prometheus and Grafana dashboards for:
- Pod CPU utilization
- Nginx metrics (request count, 5xx errors)
- MySQL performance metrics

## Documentation
- [Deployment Guide](docs/DEPLOYMENT.md)
- [Metrics Documentation](docs/METRICS.md)
- [OpenResty Build Guide](docs/OPENRESTY_BUILD.md)