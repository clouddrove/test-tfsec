# provider "azurerm" {
#   features {}
# }

# # module "resource_group" {
# #   source = "terraform/resource-group/azure"
# #   version = "1.0.2"

# #   environment = "tested"
# #   label_order = ["name", "environment", ]

# #   name     = "example"
# #   location = "North Europe"

# #   #resource lock
# #   resource_lock_enabled = false
# #   lock_level            = "CanNotDelete"
# # }

# terraform {
#   backend "azurerm" {
#     container_name = "terraform"
#   }
# }

# module "resource-group" {
#   source  = "clouddrove/resource-group/azure"
#   version = "1.0.2"

#   environment = var.environment
#   label_order = ["name", "environment", ]

#   name     = "example"
#   location = "North Europe"

#   #resource lock
#   resource_lock_enabled = false
#   lock_level            = "CanNotDelete"
# }

####----------------------------------------------------------------------------------
## Provider block added, Use the Amazon Web Services (AWS) provider to interact with the many resources supported by AWS.
####----------------------------------------------------------------------------------
provider "aws" {
  region = "us-east-1"
}

####----------------------------------------------------------------------------------
##  Module      : KEY PAIR
## Terraform module for generating or importing an SSH public key file into AWS.
####----------------------------------------------------------------------------------
module "keypair" {
  source = "./../"

  name        = "key"
  environment = var.environment
  label_order = ["environment", "name"]

  public_key                 = ""
  create_private_key_enabled = true
  enable_key_pair            = true
}