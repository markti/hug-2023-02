resource random_string main {
  length           = 8
  upper            = false
  special          = false
}

locals {
  name = "hug2023"
}

resource azurerm_resource_group main {
  name     = "rg-${local.name}-${random_string.main.result}"
  location = var.location
}

resource azurerm_shared_image_gallery main {
  name                = "gal${local.name}${random_string.main.result}"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  description         = "Shared images and things."

}

resource azurerm_shared_image ubuntu1804_baseline {
  name                = "ubuntu1804-baseline"
  gallery_name        = azurerm_shared_image_gallery.main.name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"

  identifier {
    publisher = "HUG2023"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS-Baseline"
  }
}
data http myip {
  url = "http://ipv4.icanhazip.com"
}