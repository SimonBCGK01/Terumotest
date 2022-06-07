# Configure the Azure Provider
terraform {
  backend "azurerm" {
    storage_account_name = "backendterraformsim"
    container_name       = "terraform"
    key                  = "dev.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 2.90.0"
    }
  }
}

provider "azurerm" {
  features {}
}