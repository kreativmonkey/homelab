provider "truenas" {
  api_key  = var.truenas_api_key
  base_url = "https://truenas-vm/api/v2.0"
}

resource "truenas_dataset" "media" {
  pool      = "Storagepool"
  name      = "Media"
  comments  = "Automated by Terraform"
}

resource "truenas_share_nfs" "media_share" {
  path      = "/mnt/Storagepool/Media"
  comment   = "Terraform-managed NFS share"
  hosts     = ["192.168.10.0/24", "10.7.0.0/24"]
  alldirs   = true
  ro        = false
}

resource "truenas_dataset" "backup" {
  pool      = "Storagepool"
  name      = "Backup"
  comments  = "Backup dataset automated by Terraform"
}

resource "truenas_share_nfs" "backup_share" {
  path      = "/mnt/Storagepool/Backup"
  comment   = "Terraform-managed NFS backup share"
  hosts     = ["192.168.10.0/24", "10.7.0.0/24"]
  alldirs   = true
  ro        = false
}
