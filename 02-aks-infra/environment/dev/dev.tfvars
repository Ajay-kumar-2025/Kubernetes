# r_resource_groups = {
#   "rg1" = {
#     name     = "rg_dev_axion"
#     location = "westus2"
#   }
# }

# r_storage_accounts = {
#   "stg1" = {
#     name                     = "stgdevaxion01"
#     resource_group_name      = "rg_dev_axion"
#     location                 = "westus2"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#     container_name           = "tfstate"
#   }
# }

r_kubernetes_clusters = {
  "aks1" = {
    name                = "aks-dev-axion"
    location            = "westus2"
    resource_group_name = "rg_dev_axion"
    dns_prefix          = "aks-dev-axion"
    node_pool_name      = "default"
    node_count          = 1
    vm_size             = "standard_b2s_v2"
    os_disk_size_gb     = 30
    tags = {
      Environment = "Development"
    }
  }
}
