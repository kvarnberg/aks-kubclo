resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.unique_name # random_pet.unique_name.id from root main
}

