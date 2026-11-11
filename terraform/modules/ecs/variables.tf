variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "app_name" {
  description = "Application name."
  type        = string
}

variable "container_image" {
  description = "Docker image for the container."
  type        = string
}

variable "container_port" {
  description = "Port exposed by the application."
  type        = number
}

variable "cpu" {
  description = "CPU units for the task."
  type        = number
}

variable "memory" {
  description = "Memory in MiB for the task."
  type        = number
}

variable "desired_count" {
  description = "Number of tasks to run."
  type        = number
}

variable "log_retention_days" {
  description = "Retention period for log group."
  type        = number
}

variable "execution_role_arn" {
  description = "ARN of IAM execution role."
  type        = string
}

variable "task_role_arn" {
  description = "ARN of IAM task role."
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnet IDs where tasks run."
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group attached to ECS tasks."
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN for ALB integration."
  type        = string
}

variable "aws_region" {
  description = "AWS region used by CloudWatch Logs."
  type        = string
  default     = "eu-west-1"
}

variable "app_environment" {
  description = "Environment variables passed to the container."
  type        = map(string)
  default     = {}
}
