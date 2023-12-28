terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
}

provider "azurerm" {
  features {}
}



# Create a Resource Group
resource "azurerm_resource_group" "appservice-rg" {
  name     = "CloudQuickPoCs-RG001"
  location = "West US"
}


resource "azurerm_app_service_plan" "service-plan" {
  name                = "CloudQuickPoCs-Linux-service-plan-001"
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

# Create the App Service
resource "azurerm_app_service" "app-service" {
  name                = "randomflaskapp"
  location            = azurerm_resource_group.appservice-rg.location
  resource_group_name = azurerm_resource_group.appservice-rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id

  site_config {
    linux_fx_version = "PYTHON|3.8"
  }
}

