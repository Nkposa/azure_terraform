data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.example.name
  os_type             = "Linux"
  sku_name            = var.app_service_plan_sku
}

resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.example.name
  service_plan_id     = azurerm_service_plan.example.id

  site_config {
    always_on = false
    
    application_stack {
      node_version = var.node_version
    }
  }

  app_settings = {
    "WEBSITE_NODE_DEFAULT_VERSION" = var.node_version
  }
}