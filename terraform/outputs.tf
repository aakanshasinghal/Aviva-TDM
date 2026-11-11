output "cluster_name" {
  description = "ECS cluster name."
  value       = module.ecs.cluster_name
}

output "service_name" {
  description = "ECS service name."
  value       = module.ecs.service_name
}

output "alb_dns_name" {
  description = "DNS name of the application load balancer."
  value       = module.alb.dns_name
}

output "vpc_id" {
  description = "VPC ID."
  value       = module.networking.vpc_id
}

output "s3_bucket_name" {
  description = "S3 bucket name used by the application."
  value       = var.existing_s3_bucket_name
}
