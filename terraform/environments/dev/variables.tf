variable "aws_region" {
  description = "AWS region for the dev environment."
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Project name."
  type        = string
  default     = "aviva-tdm"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "container_image" {
  description = "Container image repository and tag."
  type        = string
}

variable "existing_s3_bucket_name" {
  description = "Existing S3 bucket name created in another repository."
  type        = string
  default     = "aviva-tdm-data"
}

variable "app_environment" {
  description = "Environment variables for the app container."
  type        = map(string)
  default = {
    APP_ENV = "dev"
    LOG_LEVEL = "INFO"
  }
}
