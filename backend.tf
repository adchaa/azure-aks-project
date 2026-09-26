terraform {
  backend "azurerm" {
    resource_group_name  = "backend-tf-rg"
    storage_account_name = "backendterraformproject1"
    container_name       = "terraformstate"
    key                  = "aks-infra/student24/terraform.tfstate"
  }
}