Role Name: User Management
=======================

This role manages system users and groups with custom configurations.

Requirements
------------

No specific requirements beyond Ansible itself.

Role Variables
--------------

Refer to `defaults/main.yml` and `vars/main.yml` for detailed configurations on user and group management.

Dependencies
------------

This role is designed to operate independently.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: user
        users:
          - username: johndoe
            groups: ['admin']
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

