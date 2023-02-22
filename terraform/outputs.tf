output gallery_name {
  value = azurerm_shared_image_gallery.main.name
}
output gallery_resource_group {
  value = azurerm_shared_image_gallery.main.resource_group_name
}
output image_name {
  value = azurerm_shared_image.ubuntu1804_baseline.name
}
output my_ip_address {
  value = data.http.myip.body
}