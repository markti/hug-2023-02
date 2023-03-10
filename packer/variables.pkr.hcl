variable subscription_id {
  type    = string
}
variable tenant_id {
  type    = string
}
variable client_id {
  type    = string
}
variable client_secret {
  sensitive = true
  type      = string
}
variable azure_primary_location {
  type = string
}
variable aws_primary_region {
  type = string
}
variable gcp_primary_region {
  type = string
}
variable gcp_project_id {
  type = string
}
variable image_name {
  type = string
}
variable image_version {
  type = string
}
variable gallery_resource_group {
  type = string
}
variable gallery_name {
  type = string
}
variable "my_ip_address" {
  type    = string
}