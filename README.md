# Homelab Configuration

This repository contains configurations for managing and automating your Proxmox and TrueNAS homelab using Infrastructure as Code (IaC) methodologies.

## Components and Tools
- **Terraform**: For infrastructure management including Proxmox and TrueNAS.
- **Ansible**: For provisioning tasks and configuration management.
- **NixOS**: System configurations managed using Nix Flakes.
- **Docker & Traefik**: Containerized service management, including Jellyfin, Immich, and others.
- **Wireguard & Networking**: Secure network configurations.

## Setup Instructions
1. **Initialize Terraform**: Run `terraform init` to prepare for deployment.
2. **Manage Configurations**:
   - Use Ansible playbooks for task automation.
   - Leverage Nix Flakes for system configurations.
3. **Network and Service Management**:
   - Ensure Wireguard and UFW are configured for security.
   - Automate service registrations with Traefik and Let's Encrypt.

## Security and Maintenance
- **TLS Certificates**: Ensure proper certificate validation for all API endpoints.
- **Secrets Management**: Consider using HashiCorp Vault for centralized secret management.
- **State Management**: Implement encryption and versioning for Terraform backend states.

## Testing and Rollback
- Allocate time for testing automation scripts and configuring rollback procedures.