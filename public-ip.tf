resource "azurerm_public_ip" "ppublicip" {
    name = var.publicipname
    resource_group_name = azurerm_resource_group.prg.name
    location = var.location
    allocation_method = "Dynamic"

    tags = var.tags
  
}