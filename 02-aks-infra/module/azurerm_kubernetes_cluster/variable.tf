variable "kubernetes_clusters" {
  description = "A map of Kubernetes clusters to create"
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
