# Terraform

1. terraform init - Initializes Terraform working directory.
2. terraform plan - Generates an execution plan for changes.
3. terraform apply - Applies changes to reach desired state.
4. terraform destroy - Destroys all Terraform-managed infrastructure.
5. terraform validate - Validates Terraform configuration files.
6. terraform fmt - Rewrites configuration files to canonical format.
7. terraform state command - Manages Terraform state.
8. terraform output - Displays outputs from Terraform state.

```bash
random_string -> random is the provider and the string is the type
```

```bash
terraform apply --var-file=filepath
```

## Remote Backends

Terraform's remote backends serve as the backbone for collaboration and scalability in infrastructure management. By storing state files in remote locations such as Amazon S3, Azure Blob Storage, or Google Cloud Storage, Terraform ensures that teams can work seamlessly on shared infrastructure projects. This approach not only centralizes state management but also enhances security and reliability by offering features like versioning and access control.

## State Locking

State locking adds another layer of robustness to Terraform workflows by preventing concurrent modifications to the same state file. This is particularly crucial in team environments where multiple users or automation processes might attempt to apply changes simultaneously. By employing locking mechanisms, Terraform ensures that only one operation can modify the state file at any given time, minimizing the risk of conflicts and ensuring the integrity of infrastructure deployments.
