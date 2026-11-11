module "networking" {
  source = "./modules/networking"

  project_name        = var.project_name
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  azs                 = var.azs
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "iam" {
  source = "./modules/iam"

  project_name         = var.project_name
  environment          = var.environment
  existing_s3_bucket_name = var.existing_s3_bucket_name
}

module "alb" {
  source = "./modules/alb"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.networking.vpc_id
  subnets      = module.networking.public_subnet_ids
  security_group_id = module.networking.alb_security_group_id
  app_name     = var.app_name
  container_port = var.container_port
}

module "ecs" {
  source = "./modules/ecs"

  project_name = var.project_name
  environment  = var.environment
  app_name     = var.app_name
  container_image = var.container_image
  container_port = var.container_port
  cpu          = var.cpu
  memory       = var.memory
  desired_count = var.desired_count
  log_retention_days = var.log_retention_days
  execution_role_arn = module.iam.execution_role_arn
  task_role_arn      = module.iam.task_role_arn
  subnet_ids         = module.networking.private_subnet_ids
  security_group_id  = module.networking.ecs_security_group_id
  target_group_arn   = module.alb.target_group_arn
  app_environment    = var.app_environment
}
