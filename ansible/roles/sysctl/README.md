Role Name: Sysctl Configuration
=============================

This role manages sysctl kernel parameters for optimal system performance.

Requirements
------------

No specific requirements beyond basic Ansible setup.

Role Variables
--------------

Refer to `defaults/main.yml` to configure various sysctl parameters.

Dependencies
------------

Independent role, no additional dependencies.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: sysctl
        sysctl_params:
          net.ipv4.ip_forward: 1
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

