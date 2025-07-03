Role Name: Docker Setup
========================

This role installs and configures Docker along with necessary plugins and tools.

Requirements
------------

Ensure the target system supports Docker installation through the package manager.

Role Variables
--------------

Refer to `defaults/main.yml` for variables to customize Docker installation paths and options.

Dependencies
------------

This role does not depend on external roles.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: docker
        docker_users: ['admin']
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

