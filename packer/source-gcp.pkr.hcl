source googlecompute vm {
  project_id = "hug-2023-02"
  source_image = "ubuntu-minimal-1804-bionic-v20230217"
  ssh_username = "packer"
  zone = var.gcp_primary_region
  image_name = "${var.image_name}-${replace(var.image_version, ".", "-")}"
}