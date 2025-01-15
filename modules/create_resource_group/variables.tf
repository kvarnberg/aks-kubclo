/* variable "rg_name" { 
  type        = string
  # default     = "rg-ref-trainee-sandbox"
} */

variable "unique_name" {
  type        = string
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}