terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_dev_axion"
    storage_account_name = "stgdevaxion01"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "f8b9a7cc-c86b-4b7e-b6a4-f255b104c115"
}
