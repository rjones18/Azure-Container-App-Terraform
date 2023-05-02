resource "azurerm_resource_group" "example" {
  name     = "python-container-resources"
  location = "Central US"
}

resource "azurerm_container_group" "example" {
  name                = "example-container-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  ip_address_type     = "Public"
  dns_name_label      = "example-azure-container-app"
  os_type             = "Linux"

  container {
    name   = "example-container"
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  tags = {
    Terraform = "true"
  }
}



