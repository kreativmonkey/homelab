Role Name: System Locale Configuration
===================================

This role configures the system's locale settings for language and regional formats.

Requirements
------------

No specific requirements beyond standard Ansible configurations.

Role Variables
--------------

Refer to `defaults/main.yml` for variables to define preferred locales.

Dependencies
------------

This role is standalone and does not rely on other roles.

Example Playbook
----------------

```yaml
  - hosts: all
    roles:
      - role: locale
        locale_conf: 'en_US.UTF-8'
```

License
-------

BSD

Author Information
------------------

kreativmonkey
Contact via GitHub Issues.

