variable "proxmox_endpoint" {
    type = string
    default = "https://promox.local:8006/api2/json"
}

variable "proxmox_api_token" {
    type = string
}

variable "proxmox_node" {
    type = string
    default = "local"
}

variable "ssh_public_key" {
    type = string
}