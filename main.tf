resource "azurerm_resource_group" "rg" {
  name     = "${var.student24}-rg-${local.env}"
  location = var.location
}