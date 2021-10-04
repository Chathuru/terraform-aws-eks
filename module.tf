module "security_group" {
  source               = "./modules/security_group"
  project              = var.project
  environment          = var.environment
  security_group_name  = var.security_group_name
  description          = var.security_group_description
  aws_vpc_id           = var.vpc_id
  security_group_rules = var.security_group_rules
}
