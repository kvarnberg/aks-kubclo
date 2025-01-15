resource "azurerm_kubernetes_cluster" "k8s" {
  location            = var.resource_group_location
  name                = "cluster"
  resource_group_name = var.rg_name # from rg output, passed to module from root
  dns_prefix          = "dns"
  sku_tier            = var.price_tier

  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name       = "agentpool"
    vm_size    = var.vm_size
    node_count = var.node_count
  }

  linux_profile {
    admin_username = var.username

    ssh_key {
      key_data = var.key_data # azapi_resource_action.ssh_public_key_gen.output.publicKey
    }
  }
  
  # if basic only default node pool can be made. needs to be set standard for more node pools
  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard" 
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "worker_pool" {
  name                = "worker"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.k8s.id
  vm_size             = var.worker_size
  node_count          = var.worker_node_count
}