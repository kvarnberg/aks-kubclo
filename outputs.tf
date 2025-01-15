output "resource_group_name" {
  value = module.create_resource_group.resource_group_name # azurerm_resource_group.rg.name
}

output "kubernetes_cluster_name" {
  value = module.create_cluster.kubernetes_cluster_name # azurerm_kubernetes_cluster.k8s.name
}

output "client_certificate" {
  value     = module.create_cluster.client_certificate # azurerm_kubernetes_cluster.k8s.kube_config[0].client_certificate
  sensitive = true
}

output "client_key" {
  value     = module.create_cluster.client_key # azurerm_kubernetes_cluster.k8s.kube_config[0].client_key
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = module.create_cluster.cluster_ca_certificate # azurerm_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  sensitive = true
}

output "cluster_password" {
  value     = module.create_cluster.cluster_password # azurerm_kubernetes_cluster.k8s.kube_config[0].password
  sensitive = true
}

output "cluster_username" {
  value     = module.create_cluster.cluster_username # azurerm_kubernetes_cluster.k8s.kube_config[0].username
  sensitive = true
}

output "host" {
  value     = module.create_cluster.host # azurerm_kubernetes_cluster.k8s.kube_config[0].host
  sensitive = true
}

output "kube_config" {
  value     = module.create_cluster.kube_config # azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}