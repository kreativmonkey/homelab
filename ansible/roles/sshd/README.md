Role Name: SSH Daemon Configuration
=================================

This role sets up and configures the SSH daemon for secure remote access.

Requirements
------------

Ensure the target system supports SSH and has it installed.

Role Variables
--------------

Refer to `defaults/main.yml` for configurable SSH settings.

Dependencies
------------

This role operates independently of other roles.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: sshd
        permit_root_login: false
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

