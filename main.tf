terraform {
  required_version = ">=1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.43.0"
    }
  }
}
resource "azurerm_virtual_network" "secure_vnet" {
  name                = var.resource_namne
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = [var.address_space]
  subnet {
    name           = "Subnet1"
    address_prefix = "10.0.1.0/24"
  }
}