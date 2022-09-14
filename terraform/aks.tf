resource "azurerm_resource_group" "aks01" {
  name     = "RG_aks01"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks01" {
  name                = "aks01"
  location            = var.location
  resource_group_name = azurerm_resource_group.aks01.name
  dns_prefix          = "aks01"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.vm_size
    
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "id" {
  value = azurerm_kubernetes_cluster.aks01.id
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks01.kube_config_raw
  sensitive = true
}

output "client_key" {
  value = azurerm_kubernetes_cluster.aks01.kube_config.0.client_key
  sensitive = true
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.aks01.kube_config.0.client_certificate
  sensitive = true
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.aks01.kube_config.0.cluster_ca_certificate
  sensitive = true
}

output "host" {
  value = azurerm_kubernetes_cluster.aks01.kube_config.0.host
  sensitive = true
}
