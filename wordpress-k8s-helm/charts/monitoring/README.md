# Monitoring Helm Chart

This directory contains the Helm chart for monitoring the WordPress application deployed on Kubernetes. It includes configurations for Prometheus and Grafana to monitor the application's performance and health.

## Overview

The monitoring chart provides the following features:

- **Prometheus**: A powerful monitoring and alerting toolkit that collects metrics from configured targets at specified intervals.
- **Grafana**: A visualization tool that integrates with Prometheus to display metrics in a user-friendly dashboard.

## Installation

To install the monitoring chart, use the following command:

```bash
helm install my-monitoring ./monitoring
```

## Configuration

You can customize the monitoring setup by modifying the `values.yaml` file in this directory. Key configuration options include:

- Prometheus scrape intervals
- Grafana dashboard settings
- Alerting rules for monitoring application health

## Metrics

The monitoring chart collects various metrics, including but not limited to:

- **Pod CPU Utilization**: Monitors the CPU usage of the WordPress, MySQL, and Nginx pods.
- **Total Request Count**: Tracks the total number of requests handled by the Nginx server.
- **Total 5xx Requests**: Counts the number of server errors encountered by the Nginx server.

Refer to the `docs/METRICS.md` file for a comprehensive list of metrics and their descriptions.

## Alerts

Alerting rules can be defined in the `prometheus-rules.yaml` file. You can customize these rules to receive notifications based on specific conditions, such as high CPU usage or increased error rates.

## Usage

After deploying the monitoring chart, you can access Grafana by port-forwarding the service:

```bash
kubectl port-forward svc/grafana 3000:80
```

Visit `http://localhost:3000` in your browser to access the Grafana dashboard. The default login credentials are usually `admin/admin`.

## Cleanup

To uninstall the monitoring chart, run:

```bash
helm delete my-monitoring
```

## Conclusion

This monitoring setup provides essential insights into the performance and reliability of your WordPress application. Customize the configurations as needed to suit your monitoring requirements.