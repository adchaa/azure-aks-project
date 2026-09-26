# virtual network 
resource "azurerm_virtual_network" "virtual_network" {
  name                = "${var.studentid}-${var.env}-virtual-network"
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

# ask
resource "azurerm_subnet" "aks_subnet" {
  name                 = "${var.studentid}-aks-subnet-${var.env}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.aks_subnet_address_prefix
  depends_on = [ azurerm_virtual_network.virtual_network ]
}
