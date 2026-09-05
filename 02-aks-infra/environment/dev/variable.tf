variable "r_resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "r_storage_accounts" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    container_name           = string
  }))
}

variable "r_kubernetes_clusters" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    node_pool_name      = optional(string)
    node_count          = optional(number)
    vm_size             = optional(string)
    os_disk_size_gb     = optional(number)
    tags                = optional(map(string))
  }))
}
