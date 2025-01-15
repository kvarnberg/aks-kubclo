resource "random_pet" "unique_name" {
  prefix = "rg-trainee"
}

module "create_resource_group" {
  source = "./modules/create_resource_group"
  resource_group_location = var.resource_group_location
  # create_resource_group_bool = true //write false if no new resource group is needed
  unique_name = random_pet.unique_name.id
  # rg_name = var.rg_name
}

module "create_cluster" {
  source = "./modules/create_cluster" 
  # unique_name = random_pet.unique_name.id should be same unique_name as in rg creation
  username = var.username
  resource_group_location = var.resource_group_location
  rg_name = random_pet.unique_name.id # module.create_resource_group.resource_group_name 
  price_tier = var.price_tier
  node_count	= var.node_count
  vm_size = var.vm_size
  key_data = azapi_resource_action.ssh_public_key_gen.output.publicKey
  # disk_space = 32
  worker_node_count = 1
  worker_size = var.vm_size
  # autoscale_workers = false
  # min_number_of_workers = 1
  # max_number_of_workers = 2
}
     