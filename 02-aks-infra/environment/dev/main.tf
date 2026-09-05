<<<<<<< HEAD
import {
  to = module.storage.azurerm_storage_account.example
  id = "/subscriptions/xxx/resourceGroups/my-rg/providers/Microsoft.Storage/storageAccounts/mystorageaccount123"
}

import {
  to = module.storage.azurerm_resource_group.example
  id = "/subscriptions/<subscription-id>/resourceGroups/my-rg"
}

module "resource_group" {
  source          = "../../module/azurerm_resource_group"
  resource_groups = var.r_resource_groups
}
module "storage_account" {
  depends_on       = [module.resource_group]
  source           = "../../module/azurerm_storage_account"
  storage_accounts = var.r_storage_accounts
}
=======
# module "resource_group" {
#   source          = "../../module/azurerm_resource_group"
#   resource_groups = var.r_resource_groups
# }
# module "storage_account" {
#   depends_on       = [module.resource_group]
#   source           = "../../module/azurerm_storage_account"
#   storage_accounts = var.r_storage_accounts
# }
>>>>>>> 2416da845eafe46a1ea3da63298aa49830e96c82
module "kubernetes_cluster" {
  depends_on          = [module.resource_group]
  source              = "../../module/azurerm_kubernetes_cluster"
  kubernetes_clusters = var.r_kubernetes_clusters
}
<<<<<<< HEAD

=======
>>>>>>> 2416da845eafe46a1ea3da63298aa49830e96c82
