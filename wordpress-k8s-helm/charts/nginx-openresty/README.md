# Nginx OpenResty Helm Chart

This README provides instructions for deploying the Nginx OpenResty application using Helm in a Kubernetes environment.

## Overview

The Nginx OpenResty chart is designed to deploy an Nginx server with OpenResty capabilities, allowing for Lua scripting and enhanced performance. This chart is intended to work alongside WordPress and MySQL deployments.

## Prerequisites

- Kubernetes cluster (v1.12+)
- Helm (v3+)
- Access to a container registry (for pushing images)

## Installation

To install the Nginx OpenResty chart, use the following command:

```bash
helm install my-nginx-release ./nginx-openresty
```

You can customize the deployment by providing a `values.yaml` file:

```bash
helm install my-nginx-release ./nginx-openresty -f values.yaml
```

## Configuration

The following configuration options are available in `values.yaml`:

- `replicaCount`: Number of replicas for the Nginx deployment.
- `image.repository`: Nginx OpenResty image repository.
- `image.tag`: Nginx OpenResty image tag.
- `service.type`: Type of service (e.g., ClusterIP, NodePort).
- `service.port`: Port for the service.
- `config`: Custom Nginx configuration options.

## Building the Docker Image

To build the Docker image for Nginx OpenResty with Lua support, navigate to the `docker/nginx-openresty` directory and run:

```bash
docker build -t your-repo/nginx-openresty:latest .
```

## Uninstallation

To uninstall the Nginx OpenResty release, use the following command:

```bash
helm uninstall my-nginx-release
```

## Metrics

The following metrics are monitored for the Nginx OpenResty deployment:

- Total Request Count
- Total 5xx Requests

Refer to the `docs/METRICS.md` file for detailed metrics documentation.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.