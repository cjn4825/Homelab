locals {
  # IP inventory for the homelab tier 1 services
  device = {
    "proxmox" = {
      ip          = "10.10.20.10"
      socket      = "10.10.20.10:8006"
      description = "Proxmox Server"
    }
    "dev" = {
      name        = "dev"
      address     = "10.10.20.30/24"
      gateway     = "10.10.20.1"
      description = "Dev host"
    }
    "ipa" = {
      ip          = "10.10.20.5"
    }
  }
}
