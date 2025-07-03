resource "proxmox_lxc" "media_mounter" {
  hostname        = "media-container"
  target_node     = "proxmox-host"
  ostemplate      = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  storage         = "local-lvm"
  cores           = 1
  memory          = 1024

  mountpoint {
    key     = "0"
    slot    = 0
    storage = "/mnt/nfs/media"
    mp      = "/media"
    size    = "100G"
  }
}
