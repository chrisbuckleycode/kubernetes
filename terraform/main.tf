/*
resource "azurerm_resource_group" "main" {
  name     = "RG_kubernetes_cluster_01"
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
*/

resource "azurerm_resource_group" "main" {
  name     = "RG_aks01"
  location = var.location
}

resource "azurerm_resource_group" "main" {
  name     = "RG_acr01"
  location = var.location
}


resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry798178197"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  sku                 = "Standard"
}
