resource "azurerm_resource_group" "acr01" {
  name     = "RG_acr01"
  location = var.location
}

resource "azurerm_container_registry" "acr01" {
  name                = "containerRegistry798178197"
  resource_group_name = azurerm_resource_group.acr01.name
  location            = var.location
  sku                 = "Standard"
}
