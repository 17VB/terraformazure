resource "azurerm_virtual_network" "pvnet" {
    name = var.vnetname
    resource_group_name = azurerm_resource_group.prg.name
    location = var.location
    address_space = ["10.0.0.0/16"]
    tags = var.tags

    
}

resource "azurerm_subnet" "psubnet" {
    name = var.subnetname
    virtual_network_name = azurerm_virtual_network.pvnet.name
    resource_group_name = azurerm_resource_group.prg.name
    address_prefixes = ["10.0.2.0/24"]
    

  
}