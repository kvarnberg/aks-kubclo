output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "rg_id" {
  value = azurerm_resource_group.rg.id
}

/* output "unique_name" {
    value = random_pet.unique_name.id
} */