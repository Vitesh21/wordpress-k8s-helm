# MySQL Helm Chart

This directory contains the Helm chart for deploying a MySQL database on Kubernetes. The chart is designed to be used in conjunction with the WordPress application, providing a reliable and scalable database backend.

## Chart Structure

- **Chart.yaml**: Contains metadata about the MySQL Helm chart, including its name, version, and dependencies.
- **values.yaml**: Defines the default configuration values for the MySQL chart, which can be overridden during installation.
- **templates/**: Contains the Kubernetes resource templates for deploying MySQL:
  - **statefulset.yaml**: Defines the StatefulSet for MySQL, ensuring stable network identities and persistent storage.
  - **service.yaml**: Exposes the MySQL database as a service within the Kubernetes cluster.
  - **pvc.yaml**: Defines the PersistentVolumeClaim for MySQL, allowing for persistent storage.
  - **_helpers.tpl**: Contains helper templates used in the MySQL chart.

## Installation

To install the MySQL chart, use the following command:

```bash
helm install my-mysql ./mysql
```

You can customize the installation by providing your own `values.yaml` file:

```bash
helm install my-mysql ./mysql -f my-values.yaml
```

## Configuration

The following configuration options are available in `values.yaml`:

- **mysqlRootPassword**: The password for the MySQL root user.
- **mysqlUser**: The name of a user to create.
- **mysqlPassword**: The password for the user.
- **mysqlDatabase**: The name of a database to create.

## Persistence

This chart uses a PersistentVolumeClaim to ensure that your MySQL data is stored persistently. You can customize the storage class and size in the `pvc.yaml` template.

## Upgrading

To upgrade your MySQL deployment, use the following command:

```bash
helm upgrade my-mysql ./mysql
```

## Uninstallation

To uninstall the MySQL chart, run:

```bash
helm uninstall my-mysql
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.