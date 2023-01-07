resource "azurerm_network_interface" "pnic" {
    name = var.nicname
    location = var.location
    resource_group_name = azurerm_resource_group.prg.name

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.psubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id  = azurerm_public_ip.ppublicip.id
    }
     tags = var.tags
}

resource "azurerm_network_interface_security_group_association" "pnicnsg" {
    network_interface_id = azurerm_network_interface.pnic.id
    network_security_group_id = azurerm_network_security_group.pnsg.id
  
}

