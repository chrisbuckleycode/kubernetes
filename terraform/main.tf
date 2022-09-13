/*
resource "azurerm_resource_group" "main" {
  name     = "RG_kubernetes_cluster_01"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks01"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
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
*/

resource "azurerm_resource_group" "main" {
  name     = "RG_aks01"
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry798178197"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Standard"
  admin_enabled       = false
}
