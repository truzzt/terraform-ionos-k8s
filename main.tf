terraform {
  required_providers {
    ionoscloud = {
      source  = "ionos-cloud/ionoscloud"
      version = "6.4.10"
    }
  }
}

data "ionoscloud_k8s_cluster" "k8s" {
  id      = var.id
}
