provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

locals {
  cluster_name = join("-", [var.environment, var.project, var.eks_cluster_name])
  common_tags = {
    join("/", ["kubernetes.io/cluster", local.cluster_name]) = "owned"
    "kubernetes.io/role/elb"                                 = 1
  }
}

module "vpc" {
  source         = "git::https://github.com/Chathuru/terraform-aws-vpc.git"
  project        = var.project
  environment    = var.environment
  cidr_block     = var.vpc_cidr_block
  public_subnets = var.vpc_public_subnets
  common_tags    = local.common_tags
}

module "eks" {
  source                     = "../."
  environment                = var.environment
  project                    = var.project
  cluster_name               = var.eks_cluster_name
  eks_version                = var.eks_eks_version
  subnet_ids                 = module.vpc.public_subnets
  security_group_name        = var.security_group_name
  security_group_description = var.security_group_description
  security_group_rules       = var.security_group_rules
  node_groups_configs        = var.node_groups_configs
  vpc_id                     = module.vpc.vpc_id
}