resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = "index.html"
    error_404_document = "index.html"
  }
}

resource "azurerm_cdn_profile" "cdn" {
  name                = "${var.prefix}-cdn"
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard_Microsoft"
}

resource "azurerm_cdn_endpoint" "endpoint" {
  name                = "${var.prefix}-endpoint"
  profile_name        = azurerm_cdn_profile.cdn.name
  resource_group_name = var.rg_name
  location            = var.location

  origin {
    name      = "staticweb"
    host_name = azurerm_storage_account.sa.primary_web_host
  }
}

output "static_website_url" {
  value = azurerm_storage_account.sa.primary_web_endpoint
}

output "cdn_url" {
  value = azurerm_cdn_endpoint.endpoint.fqdn
}