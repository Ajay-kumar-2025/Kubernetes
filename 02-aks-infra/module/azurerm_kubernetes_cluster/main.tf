resource "azurerm_kubernetes_cluster" "aks" {
  for_each            = var.kubernetes_clusters
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  node_provisioning_profile {
    mode = "Manual"
  }
  default_node_pool {
    name            = try(each.value.node_pool_name, "default")
    node_count      = try(each.value.node_count, 1)
    vm_size         = try(each.value.vm_size, "Standard_DS2_v2")
    os_disk_size_gb = try(each.value.os_disk_size_gb, 30)
  }

  identity {
    type = "SystemAssigned"
  }

  tags = try(each.value.tags, {
    Environment = "dev"
    ManagedBy   = "Terraform"
  })
}

# User / Workload Node Pool
# resource "azurerm_kubernetes_cluster_node_pool" "workload" {
# for_each = var.kubernetes_clusters
#   name                  = "workload"
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.aks[each.key].id
#   mode       = "User"
#   node_count = 1
#   vm_size    = "Standard_DS2_v2"
#   os_disk_size_gb = 30
#   tags = {
#     Environment = "dev"
#     ManagedBy   = "Terraform"
#     NodePool    = "workload"
#   }
# }


