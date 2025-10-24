# Deployment Instructions for WordPress on Kubernetes

This document provides step-by-step instructions for deploying a WordPress application on a Kubernetes cluster using Helm charts. The deployment includes WordPress, MySQL, and Nginx OpenResty, with persistent storage and monitoring capabilities.

## Prerequisites

- A Kubernetes cluster (Minikube, GKE, EKS, AKS, etc.)
- Helm installed on your local machine
- kubectl configured to interact with your Kubernetes cluster
- Docker installed for building images

## Step 1: Clone the Repository

Clone the repository containing the Helm charts and Dockerfiles:

```bash
git clone <repository-url>
cd wordpress-k8s-helm
```

## Step 2: Build Docker Images

Navigate to the `scripts` directory and run the build script to create Docker images for WordPress, MySQL, and Nginx OpenResty:

```bash
cd scripts
./build-images.sh
```

## Step 3: Deploy Persistent Volumes and Claims

Before deploying the applications, ensure that the Persistent Volumes (PV) and Persistent Volume Claims (PVC) are set up. Apply the configurations in the `k8s/pv-pvc` directory:

```bash
kubectl apply -f ../k8s/pv-pvc/nfs-pv.yaml
kubectl apply -f ../k8s/pv-pvc/nfs-pvc.yaml
```

## Step 4: Install WordPress, MySQL, and Nginx OpenResty

Use Helm to install the WordPress chart, which will also deploy MySQL and Nginx OpenResty as dependencies:

```bash
helm install my-release ./charts/wordpress
```

## Step 5: Verify the Deployment

Check the status of the deployed pods to ensure everything is running correctly:

```bash
kubectl get pods
```

You should see pods for WordPress, MySQL, and Nginx OpenResty in a running state.

## Step 6: Access the WordPress Application

If you have configured an ingress resource, you can access the WordPress application via the ingress URL. Otherwise, you can port-forward to access it locally:

```bash
kubectl port-forward svc/my-release-wordpress 8080:80
```

Now, you can access WordPress at `http://localhost:8080`.

## Step 7: Set Up Monitoring

To monitor the WordPress application, deploy the Prometheus and Grafana stack using the provided Helm chart:

```bash
helm install monitoring ./charts/monitoring
```

## Step 8: Clean Up

To delete the deployed resources, run the following command:

```bash
helm delete my-release
```

This will remove the WordPress application and its associated resources from the Kubernetes cluster.

## Conclusion

You have successfully deployed a WordPress application on Kubernetes using Helm charts. The deployment includes persistent storage and monitoring capabilities. For further customization, refer to the `values.yaml` files in each chart directory.