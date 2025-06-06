output "vm_ipv4_address" {
    description = "IPv4 of the vm"
    value = proxmox_virtual_environment_vm.debian_clone.ipv4_addresses[1][0]
}
