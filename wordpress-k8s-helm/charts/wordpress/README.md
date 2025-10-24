# WordPress Helm Chart

This README provides instructions for deploying the WordPress application using the Helm chart located in this directory.

## Prerequisites

- Kubernetes cluster (v1.12+)
- Helm (v3+)
- Persistent storage provisioner (e.g., NFS, AWS EBS)

## Installation

To install the WordPress Helm chart, use the following command:

```bash
helm install my-release ./wordpress
```

Replace `my-release` with your desired release name.

### Configuration

You can customize the deployment by providing a `values.yaml` file. Create a custom `values.yaml` file based on the default values provided in `values.yaml` and specify your configurations.

To install with a custom values file, use:

```bash
helm install my-release ./wordpress -f values-production.yaml
```

## Uninstallation

To uninstall the WordPress release, run:

```bash
helm delete my-release
```

## Persistent Storage

This chart uses PersistentVolumeClaims to manage storage for WordPress. Ensure that your Kubernetes cluster has a suitable storage class configured.

## Monitoring

For monitoring the WordPress application, consider deploying the Prometheus and Grafana stack. Refer to the monitoring chart in the `charts/monitoring` directory for setup instructions.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.