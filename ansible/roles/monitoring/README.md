Role Name: System Monitoring
============================

This role sets up monitoring tools to track system performance and emergencies.

Requirements
------------

No specific requirements beyond common Linux monitoring tool configurations.

Role Variables
--------------

View `defaults/main.yml` for details on which monitoring tools to setup.

Dependencies
------------

Standalone role with no additional dependencies.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: monitoring
        enable_alerts: true
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

