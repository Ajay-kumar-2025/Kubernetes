# module "resource_group" {
#   source          = "../../module/azurerm_resource_group"
#   resource_groups = var.r_resource_groups
# }
# module "storage_account" {
#   depends_on       = [module.resource_group]
#   source           = "../../module/azurerm_storage_account"
#   storage_accounts = var.r_storage_accounts
# }
module "kubernetes_cluster" {
  depends_on          = [module.resource_group]
  source              = "../../module/azurerm_kubernetes_cluster"
  kubernetes_clusters = var.r_kubernetes_clusters
}
