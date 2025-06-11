terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.78.1"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_endpoint
  api_token = var.proxmox_api_token
  insecure = true
  tmp_dir  = "/var/tmp"
  random_vm_ids = true

  ssh {
    agent = true
  }
}

data "local_file" "ssh_public_key" {
  filename = "../.ssh/id_ed25519.pub"
}

resource "proxmox_virtual_environment_vm" "debian_clone" {
  name      = "debian-clone"
  node_name = var.proxmox_node

  clone {
    vm_id = 9000
  }

  agent {
    enabled = true
  }

  memory {
    dedicated = 768
  }

  initialization {
    dns {
      servers = ["1.1.1.1"]
    }
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
    user_account {
      username = "root"
      keys     = [trimspace(data.local_file.ssh_public_key.content)]
    }
  }
}



