Role Name: DNS Record Management
=============================

This role manages DNS records for domain management and resolution.

Requirements
------------

No specific requirements beyond Ansible itself.

Role Variables
--------------

Refer to `defaults/main.yml` and `vars/main.yml` for configurable variables specific to DNS settings.

Dependencies
------------

This role has no external dependencies.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: dns_record
        dns_zone: "example.com"
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

