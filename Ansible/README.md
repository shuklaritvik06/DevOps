# Ansible

- read (4)
- write (2)
- execute (1)

Ansible is a configuration management tool. It is used to manage multiple systems, multiple cloud systems etc in the different environments like dev, staging or prod.

Terraform is the infrastructure as a code tool which is used for provisioning the infra but the ansible is used to configure multiple systems.

Chef is pull based mechanism and the ansible is the push based mechanism configuration tool

One system push the updates to all other systems in the case of ansible like a push based mechanism whereas in the case of chef it pull the updates from other systems

An AMI ID refers to an Amazon Machine Image Identifier. An Amazon Machine Image (AMI) is a pre-configured virtual machine image, which contains the necessary information to launch an instance (a virtual server) in the AWS environment.

Certainly! Below is an example of a Markdown (md) file that explains Ansible inventory and lists some important CLI commands related to Ansible inventory management.

# Ansible Inventory and CLI Commands

## Ansible Inventory

Ansible uses an inventory file to define and organize t he hosts it manages. The inventory file is a simple text file that contains a list of hostnames or IP addresses along with their grouping. It can also include variables and other configuration details. The default location for the inventory file is `/etc/ansible/hosts`.

In Ansible, playbooks are the key components used to define automation tasks. A playbook is a YAML file that contains a series of plays, where each play defines a set of tasks to be executed on one or more hosts.

Ansible uses the concepts of control and managed nodes. It connects from the control node, any machine with Ansible installed, to the managed nodes sending commands and instructions to them.

Example of a basic inventory file:

```ini
[web_servers]
web1 ansible_host=192.168.1.10
web2 ansible_host=192.168.1.11

[db_servers]
db1 ansible_host=192.168.1.20
db2 ansible_host=192.168.1.21

[all:vars]
ansible_user=ubuntu
```

In this example:

- `web_servers` and `db_servers` are groups of hosts.
- Each host is defined with the `ansible_host` variable specifying its IP address.
- Common variables can be set under `[all:vars]`.

## Ansible Inventory CLI Commands

### 1. View Inventory Content

#### List all hosts in the inventory:

```bash
ansible-inventory --list
```

#### Display information about a specific host:

```bash
ansible-inventory --host <hostname>
```

### 2. Test Inventory Syntax

Check the syntax of the inventory file:

```bash
ansible-inventory --check
```

### 3. Execute Ad-hoc Commands

Run a command on all hosts in a group:

```bash
ansible <group_name> -a "<command>"
```

Example:

```bash
ansible web_servers -a "uptime"
```

### 4. Dynamic Inventory

Use an external script or program as a dynamic inventory source:

```bash
ansible-playbook -i /path/to/dynamic_inventory_script playbook.yml
```

### 5. Specifying Inventory File

Run Ansible commands or playbooks with a specific inventory file:

```bash
ansible-playbook -i /path/to/custom_inventory playbook.yml
```

### 6. Filtering Hosts

Limit execution to specific hosts or groups:

```bash
ansible-playbook -i inventory_file.yml --limit <hostname or group>
```

Example:

```bash
ansible-playbook -i inventory.ini --limit web_servers playbook.yml
```

These are some essential CLI commands related to Ansible inventory management. For more details and options, refer to the [official Ansible documentation](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html).

```

Feel free to customize the content or add more details based on your specific needs.
```

```

```
