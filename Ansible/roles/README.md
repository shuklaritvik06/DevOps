# Ansible Roles

Ansible Roles provide a well-defined framework and structure for setting your tasks, variables, handlers, metadata, templates, and other files. They enable us to reuse and share our Ansible code efficiently. This way, we can reference and call them in our playbooks with just a few lines of code while we can reuse the same roles over many projects without the need to duplicate our code.

```bash
ansible-galaxy init <your_role_name>
```

- defaults – Includes default values for variables of the role. Here we define some sane default variables, but they have the lowest priority and are usually overridden by other methods to customize the role.
- files – Contains static and custom files that the role uses to perform various tasks.
- handlers – A set of handlers that are triggered by tasks of the role.
- meta – Includes metadata information for the role, its dependencies, the author, license, available platform, etc.
- tasks – A list of tasks to be executed by the role. This part could be considered similar to the task section of a playbook.
- templates – Contains Jinja2 template files used by tasks of the role.
- tests – Includes configuration files related to role testing.
- vars – Contains variables defined for the role. These have quite a high precedence in Ansible.
