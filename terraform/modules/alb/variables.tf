variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "vpc_id" {
  description = "VPC identifier."
  type        = string
}

variable "subnets" {
  description = "Subnets for ALB."
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group used by the ALB."
  type        = string
}

variable "app_name" {
  description = "Application name."
  type        = string
}

variable "container_port" {
  description = "Container exposed port."
  type        = number
}
