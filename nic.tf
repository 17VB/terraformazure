resource "azurerm_network_interface" "pnic" {
    name = var.nicname
    location = var.location
    resource_group_name = azurerm_resource_group.prg.name

    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet_psubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id  = azurerm_public_ip.ppublicip.id
    }
     tags = var.tags
}
