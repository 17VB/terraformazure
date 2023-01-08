resource "random_id" "randomid" {
    keepers = {
      resource_group = azurerm_resource_group.prg.name
    }
  byte_length = 8
}

resource "azurerm_storage_account" "pstorage" {
    name = "pstorage${random_id.randomid.hex}"
    resource_group_name = azurerm_resource_group.prg.name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"

    tags = var.tags
  
}