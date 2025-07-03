Role Name: Firewall Management
===========================

This role implements and manages firewall rules for ensuring network security.

Requirements
------------

The target system must have iptables or similar software to manage firewall rules.

Role Variables
--------------

Refer to `defaults/main.yml` for configurable rules and inbound/outbound policies.

Dependencies
------------

This role does not have any external dependencies.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: firewall
        allow_ssh: true
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

