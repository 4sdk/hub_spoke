terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.72.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


