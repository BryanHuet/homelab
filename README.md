# 🏡 Homelab Proxmox - Self-Hosted Personal Infrastructure

This repository contains the complete configuration of my personal homelab based on [Proxmox VE](https://www.proxmox.com/en/proxmox-ve), designed for self-hosting services, experimentation, and learning DevOps and cloud-native technologies.

## 📦 Contents

### Infrastructure

- Deployment of VMs and LXC containers using Proxmox templates

### Infrastructure as Code

- Provisioning with **Terraform**
- Version-controlled configuration files
- Secret management via `.env` or `terraform.tfvars`

## 🛠️ Goals

- Build a self-hosted, resilient, and maintainable service stack
- Improve my skills in:
  - Virtualization (Proxmox VE)
  - Local networking (VLAN, DNS, DHCP)
  - Containerization and orchestration (Docker, Traefik)
  - Security and access management
- Facilitate environment reproducibility through the **Infrastructure as Code** approach

## ⚙️ Requirements

Before deploying, make sure the following dependencies are installed on your local machine:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) (v1.3 or later)
- [Proxmox VE](https://www.proxmox.com/en/proxmox-ve) running and accessible via API
- A Proxmox API user with sufficient permissions
- `terraform-provider-proxmox` plugin (automatically downloaded by Terraform if defined properly)
- SSH access set up for provisioning VMs (optional, depending on your use case)


## 🚀 Deployment

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/homelab-proxmox.git
cd homelab-proxmox
```

### 2. Set Terraform variables

Create a `terraform.tfvars` file:
```h
proxmox_endpoint = "https://your_proxmox_url/api2/json"
proxmox_api_token = "terraform@pam"
proxmox_node = "your node"
```

### 3. Initialize Terraform
```bash
terraform init
```

### 4. Preview changes
From this part, you can make every changes you want in `main.tf`.
```bash
terraform plan
```

### 5. Deploy the infrastructure
```bash
terraform apply
```

### 6. Destroy the infrastructure (optional)
```bash
terraform destroy
```

## ⚠️ Disclaimer

> This repository is **strictly personal** and may contain configurations specific to my local/network environment.  
> Sensitive files or secrets (`.env`, certificates, SSH keys, etc.) are **not included** for security reasons.  
> Do not use as-is in a production environment without proper adaptation.

---
