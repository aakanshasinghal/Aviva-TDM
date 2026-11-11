# Aviva TDM Terraform Infrastructure

This repository contains a Terraform-based AWS ECS deployment scaffold for the Aviva TDM application.

## Structure

- `terraform/` - shared Terraform configuration
- `terraform/environments/dev/` - environment-specific configuration
- `terraform/modules/` - reusable infrastructure modules

## Included components

- VPC, private/public subnets, route tables, security groups
- ECS Fargate cluster and service
- Application Load Balancer and target group
- IAM roles for ECS execution and task permissions
- CloudWatch Log Group
- S3 access for the existing bucket created outside this repository

## Prerequisites

- AWS account with permissions to create VPC, ECS, ALB, IAM, and CloudWatch resources
- Terraform 1.5+
- Existing S3 bucket for TDM artifacts/data
- Docker image for the TDM application pushed to ECR or another registry

## Quick start

1. Update values in `terraform/environments/dev/terraform.tfvars.example`
2. Copy the file to `terraform/environments/dev/terraform.tfvars`
3. Set the S3 bucket name and application image
4. Initialize Terraform:

   ```bash
   cd terraform
   terraform init
   ```

5. Review the plan:

   ```bash
   terraform plan -var-file="environments/dev/terraform.tfvars"
   ```

6. Apply the infrastructure:

   ```bash
   terraform apply -var-file="environments/dev/terraform.tfvars"
   ```

## Notes

- Update `backend.tf` with your remote state bucket before using it in CI/CD.
- The S3 bucket is treated as an existing resource created in another repository.
- Replace placeholder values before deployment.
