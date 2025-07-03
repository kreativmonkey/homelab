terraform {
  backend "s3" {
    endpoint = "http://truenas-vm:9000"
    bucket   = "terraform-state"
    key      = "proxmox/terraform.tfstate"
    region   = "main"
  }
}
