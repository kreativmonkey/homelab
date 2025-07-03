# Ansible Project: Homelab

This project automates the setup and configuration of various services and systems within a homelab environment using Ansible.

## Purpose

The Ansible roles defined in this project are designed to manage the installation, configuration, and maintenance of essential services such as SSH, Docker, Rclone, Firewall settings, user management, system updates, and more.

## Project Structure

The project is organized into the following key components:

- **Roles**: Each role represents a specific set of related tasks and configurations. Examples include `rclone`, `docker`, `sshd`, `firewall`, etc.
- **Playbooks**: YAML files that outline the roles to be executed on target hosts. Example playbooks include `initialize_dcsrv.yml`, `setup_dns_records.yml`, and so on.
- **Inventory**: Specifies the groups of hosts and associated roles that Ansible will manage.
- **Configuration Files**: Include Ansible's main configuration file `ansible.cfg` and any additional settings or global variables needed for execution.

## Usage with Nix Flakes

A `flake.nix` is included to simplify setting up the development environment using Nix. Follow these steps:

1. **Build the Development Shell**
   - Enter the nix shell environment which provides all necessary tools and dependencies.
   ```shell
   nix develop
   ```
   - This will drop you into a shell with `python3`, `ansible`, and other required tools ready to go.

2. **Running Playbooks**
   - Once in the Nix develop shell, you can execute Playbooks as usual.

## Example

To initialize a server, run:
```shell
ansible-playbook initialize_dcsrv.yml
```

Execute specific roles using:
```shell
ansible-playbook setup_rclone.yml -i inventory/hosts
```

## Author Information

Created by kreativmonkey, this project is developed to streamline the management of a homelab setup using automated tools. For more information, please get in touch via GitHub Issues.

