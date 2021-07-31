provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source          = "./modules/vpc_network"
  project         = var.project
  env             = var.env
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
}

module "iam" {
  source  = "./modules/iam_roles"
  project = var.project
  env     = var.env
}

