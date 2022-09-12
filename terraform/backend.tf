terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.22.0"
    }
  }
    backend "azurerm" {
    }
  required_version = ">= 1.2"
}

provider "azurerm" {
  features {}
}
