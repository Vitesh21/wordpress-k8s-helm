# helm-chart

This Helm chart provides a way to deploy your application on Kubernetes.

## Prerequisites

- Kubernetes cluster
- Helm 3.x installed

## Installation

To install the chart, use the following command:

```bash
helm install [release-name] ./helm-chart
```

Replace `[release-name]` with your desired release name.

## Configuration

The default configuration values can be found in the `values.yaml` file. You can override these values during installation by using the `--set` flag or by providing your own `values.yaml` file.

## Templates

This chart includes the following templates:

- **Deployment**: Defined in `templates/deployment.yaml`
- **Service**: Defined in `templates/service.yaml`
- **Ingress**: Defined in `templates/ingress.yaml`

## License

This project is licensed under the MIT License. See the LICENSE file for details.