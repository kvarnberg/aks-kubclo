/* variable "unique_name" {
  description = "The unique name for the AKS cluster and DNS prefix"
  type        = string
} */

variable "rg_name" { 
  type        = string
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "price_tier" {
  description = "The SKU tier for the AKS cluster"
  type        = string
}

variable "vm_size" {
  description = "The VM size for the default node pool"
  type        = string
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
}

variable "username" {
  type        = string
  description = "The admin username for the new cluster."
}

variable "key_data" {
  type        = string
}

/* variable "disk_space" {
  type = number
} */

variable worker_node_count {
  type = number
}

variable worker_size {
  type = string
}

/* variable "add_workers" {
  type = bool
} 

variable "autoscale_workers" {
  type = bool
}

variable "min_number_of_workers" {
  type = number 
}

variable "max_number_of_worker" {
  type = number
} */
