# OpenCode.md

## Build, Lint, and Test Commands
- **Build:**
  - Build command for Docker involves tasks in Ansible, e.g., installing `docker-buildx-plugin`.
- **Lint:** 
  - No specific lint configurations found in the current scope.
- **Testing:**
  - Ansible playbooks and roles suggest tests, but no explicit test command found. Refer to `ansible-playbook` commands to test specific playbooks like `initialize_dcsrv.yml`.
  - Run a single Ansible playbook test using: `ansible-playbook [playbook-file.yml] --check`.

## Code Style Guidelines

### Imports and Formatting
- **Imports:**
  - Maintain organized imports at the top of task files if applicable.
- **Formatting:**
  - YAML files should follow consistent two-space indentation.
  
### Types and Naming Conventions
- **Types:**
  - Structure your role variables and task variables clearly in YAML.
- **Naming Conventions:**
  - Use clear, descriptive names for roles and tasks that reflect their purpose.

### Error Handling
- Use conditional checks in Ansible, such as:
  - `when` condition is used to check statuses like `rclone_latest.status`.

### Additional Notes
- Stick to latest version for packages when possible for security and functionality, indicated in various roles, e.g., state: latest.
