resource "azurerm_resource_group" "prg" {
    location = var.location
    name = var.resourcegroupname
    tags = var.tags
  
}