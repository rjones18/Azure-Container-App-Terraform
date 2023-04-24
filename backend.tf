
# Terraform State Storage to Azure Storage Container
terraform {
backend "azurerm" {
    resource_group_name  = "test-grp"
    storage_account_name = "regterraformstate201"
    container_name       = "tfstatefiles"
    key                  = "azure-container-app-terraform.tfstate"
  }
}