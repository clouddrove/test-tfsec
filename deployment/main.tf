provider "azurerm" {
  features {}
}

# module "resource_group" {
#   source = "terraform/resource-group/azure"
#   version = "1.0.2"

#   environment = "tested"
#   label_order = ["name", "environment", ]

#   name     = "example"
#   location = "North Europe"

#   #resource lock
#   resource_lock_enabled = false
#   lock_level            = "CanNotDelete"
# }

terraform {
  backend "azurerm" {
    container_name = "terraform"
  }
}

module "resource-group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.2"

  environment = var.environment
  label_order = ["name", "environment", ]

  name     = "example"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = false
  lock_level            = "CanNotDelete"
}

