# Terraform Module: ionos-k8s

This Terraform module provides outputs for a Kubernetes (K8s) cluster created with the Ionos Cloud provider. It retrieves important information about the K8s cluster, such as the cluster's host, token, and CA certificate.

## Variables

This module accepts the following variables:

### `id`

- **Description**: The ID of the Kubernetes cluster.
- **Type**: `string`
- **Default**: None (Must be provided)

## Outputs

This module exposes the following outputs:

### `host`

- **Description**: The K8s cluster's host address.
- **Value**: `data.ionoscloud_k8s_cluster.k8s.config[0].clusters[0].cluster.server`

### `token`

- **Description**: The K8s cluster's authentication token.
- **Value**: `data.ionoscloud_k8s_cluster.k8s.config[0].users[0].user.token`

### `ca`

- **Description**: The K8s cluster's CA (Certificate Authority) certificate.
- **Value**: `data.ionoscloud_k8s_cluster.k8s.ca_crt`

## Usage

You can include this module in your Terraform configuration to retrieve the K8s cluster outputs. Here's an example of how to use it:

```hcl
module "k8s_cluster_outputs" {
  source = "your/module/source"
  id     = "your-k8s-cluster-id" # Provide the ID of your K8s cluster
}

output "k8s_host" {
  value = module.k8s_cluster_outputs.host
}

output "k8s_token" {
  value = module.k8s_cluster_outputs.token
}

output "k8s_ca_certificate" {
  value = module.k8s_cluster_outputs.ca
}
