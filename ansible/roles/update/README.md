Role Name: System Update
=====================

This role ensures that system packages are up-to-date for maintenance and security.

Requirements
------------

Accessible internet connection for package updates.

Role Variables
--------------

Refer to `defaults/main.yml` for optional update configurations and exclusions.

Dependencies
------------

Does not depend on other roles.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: update
        update_cache: true
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

