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

module "resource-group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.2"

  environment = "tested"
  label_order = ["name", "environment", ]

  name     = "example"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = 
  lock_level            = "CanNotDelete"
}