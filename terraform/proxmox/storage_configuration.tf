resource "proxmox_storage" "local" {
  type   = "dir"
  path   = "/var/lib/vz"
  content= ["iso", "backup", "vztmpl"]
}

resource "proxmox_storage" "local_lvm" {
  type    = "lvmthin"
  thinpool= "data"
  vgname  = "pve"
  content = ["rootdir", "images"]
}

resource "proxmox_storage" "dir_storage" {
  type         = "dir"
  path         = "/mnt/pve/storage"
  content      = ["iso", "rootdir", "vztmpl", "images", "snippets", "backup"]
  is_mountpoint= true
  nodes        = ["pve"]
  shared       = false
}

resource "proxmox_storage" "local_storage" {
  type      = "zfspool"
  pool      = "local_storage"
  content   = ["images", "rootdir"]
  mountpoint= "/local_storage"
  nodes     = ["ugos"]
}

resource "proxmox_storage" "nfs_storage" {
  type         = "nfs"
  export       = "/mnt/Storagepool/pve-storage"
  path         = "/mnt/pve/NFS-Storage"
  server       = "192.168.10.94"
  content      = ["images", "iso", "vztmpl", "rootdir"]
  nodes        = ["pve", "ugos"]
  prune-backups  = "keep-all=1"
}