variable "aws_region" {
  description = "AWS region for deployment."
  type        = string
  default     = "eu-west-1"
}

variable "environment" {
  description = "Deployment environment name."
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used in tagging and naming resources."
  type        = string
  default     = "aviva-tdm"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "azs" {
  description = "Availability zones to deploy into."
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
  default     = ["10.10.11.0/24", "10.10.12.0/24"]
}

variable "app_name" {
  description = "Name of the application deployed in ECS."
  type        = string
  default     = "tdm-app"
}

variable "container_image" {
  description = "Docker image for the TDM application, e.g., 123456789012.dkr.ecr.eu-west-1.amazonaws.com/tdm-app:latest"
  type        = string
}

variable "container_port" {
  description = "Port exposed by the application container."
  type        = number
  default     = 8080
}

variable "cpu" {
  description = "CPU units for ECS task definition."
  type        = number
  default     = 512
}

variable "memory" {
  description = "Memory for ECS task definition in MiB."
  type        = number
  default     = 1024
}

variable "desired_count" {
  description = "Desired number of ECS tasks."
  type        = number
  default     = 2
}

variable "log_retention_days" {
  description = "Retention period for CloudWatch logs."
  type        = number
  default     = 30
}

variable "existing_s3_bucket_name" {
  description = "Name of the S3 bucket already created in another repository and used by the TDM application."
  type        = string
  default     = "aviva-tdm-data"
}

variable "app_environment" {
  description = "Application environment variables passed to the container."
  type        = map(string)
  default = {
    APP_ENV = "dev"
    LOG_LEVEL = "INFO"
  }
}
