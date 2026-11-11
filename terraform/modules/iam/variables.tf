variable "project_name" {
  description = "Project name."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "existing_s3_bucket_name" {
  description = "Name of the S3 bucket already created outside this repository."
  type        = string
}
