Role Name: Rclone Management
============================

This role installs, updates, and configures [rclone](https://rclone.org/) for system-wide use, whether using the latest stable or beta versions.

Requirements
------------

No additional requirements beyond Ansible and a compatible operating system.

Role Variables
--------------

Refer to `defaults/main.yml` for configurable variables:

- `rclone_beta`: Set to `true` for beta version installation. Default is `false`.
- `rclone_mount_name`: Default mount name. Default is `truenas`.
- `rclone_mount_folder`: Base folder for mounts. Default is `/media`.
- `rclone_cache_folder`: Cache directory for rclone. Default is `/rclone/cache`.
- `rclone_config_path`: Path for rclone configuration. Default is `/rclone`.
- `rclone_log_path`: Location for rclone logs. Default is `/var/log/rclone`.
- `rclone_log_level`: Logging level. Default is `NOTICE`.
- `rclone_uid`: User ID for rclone operations. Default is `1000`.
- `rclone_gid`: Group ID for rclone operations. Default is `1000`.
- `rclone_web_force_new_password`: Whether to force a new password. Default is `false`.
- `rclone_web_username`, `rclone_web_password_length`, `rclone_web_port`, etc.

Dependencies
------------

The role operates independently without relying on other external roles.

Example Playbook
----------------

```yaml
- hosts: all
  roles:
    - role: rclone
      vars:
        rclone_beta: true
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.
