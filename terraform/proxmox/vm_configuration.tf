resource "proxmox_vm_qemu" "truenas_vm" {
  name        = "TrueNAS-Scale"
  target_node = "proxmox-host"
  balloon     = 7929
  boot        = "order=scsi0;net0"
  cores       = 4
  cpu         = "x86-64-v2-AES"
  memory      = 15858
  net0        = "virtio=BC:24:11:5D:F9:B5,bridge=vmbr0,firewall=1"
  ostype      = "l26"
  scsi0       = "local_storage:vm-105-disk-0,iothread=1,size=32G"
  scsi1       = "/dev/disk/by-id/ata-WDC_WD40EFRX-68N32N0_WD-WCC7K2NCK70U,size=3907018584K"
  scsi2       = "/dev/disk/by-id/ata-WDC_WD40EFRX-68WT0N0_WD-WCC4E2TCRUKZ,size=3907018584K"
  scsi3       = "/dev/disk/by-id/ata-WDC_WD40EFRX-68N32N0_WD-WCC7K1DDX8U6,size=3907018584K"
  scsi4       = "/dev/disk/by-id/ata-WDC_WD40EFAX-68JH4N0_WD-WX22D107JYYJ,size=3907018584K"
  scsi5       = "/dev/disk/by-id/ata-WDC_WD30EZRX-00DC0B0_WD-WMC1T1426322,size=2930266584K"
  scsihw      = "virtio-scsi-single"
  sockets     = 2
}

resource "proxmox_vm_qemu" "windows_vm" {
  name        = "Windoof"
  target_node = "proxmox-host"
  agent       = 1
  bios        = "ovmf"
  boot        = "order=ide0"
  cores       = 4
  cpu         = "x86-64-v2-AES"
  efidisk0    = "NFS-Storage:200/vm-200-disk-0.qcow2,efitype=4m,format=qcow2,pre-enrolled-keys=1,size=528K"
  ide0        = "NFS-Storage:200/vm-200-disk-0.raw,format=raw,size=100G"
  ide1        = "NFS-Storage:200/vm-200-disk-1.qcow2,format=qcow2,size=50G"
  machine     = "pc-q35-8.1"
  memory      = 8192
  meta        = {
    "creation-qemu" = "8.1.5"
    "ctime"         = "1712726122"
  }
  net0        = "e1000=BC:24:11:36:7C:D7,bridge=vmbr0,firewall=1"
  numa        = false
  onboot      = true
  ostype      = "win11"
  scsihw      = "virtio-scsi-single"
  smbios1     = "uuid=6d235a6c-8389-4fda-929f-5b0d542877d7"
  sockets     = 1
  tags        = ["work"]
  tpmstate0   = "NFS-Storage:200/vm-200-disk-2.raw,size=4M,version=v2.0"
  vga         = "qxl"
  vmgenid     = "f2072172-233e-44a7-bf29-fa4e202d4846"
}