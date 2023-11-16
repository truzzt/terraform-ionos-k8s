output "host" {
  description = "The k8s host"
  value       = data.ionoscloud_k8s_cluster.k8s.config[0].clusters[0].cluster.server
}

output "token" {
  description = "The k8s token"
  value       = data.ionoscloud_k8s_cluster.k8s.config[0].users[0].user.token
}

output "ca" {
  description = "The k8s CA"
  value       = data.ionoscloud_k8s_cluster.k8s.ca_crt
}
