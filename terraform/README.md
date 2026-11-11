# Aviva TDM Terraform

This directory contains the Terraform configuration for the Aviva TDM AWS ECS deployment.

## Folder structure

```text
terraform/
├── backend.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── environments/
│   └── dev/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars.example
├── modules/
│   ├── alb/
│   ├── ecs/
│   ├── iam/
│   └── networking/
└── README.md
```
