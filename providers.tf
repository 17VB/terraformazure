terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/terraform"
        version = "=2.56.0"
         
    }
  }
}

provider "azurerm" {
  features{}
}
