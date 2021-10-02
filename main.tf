provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source          = "Chathuru/vpc/aws"
  project         = var.project
  environment     = var.environment
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
}

module "security_group" {
  source               = "./modules/security_group"
  project              = var.project
  environment          = var.environment
  security_group_name  = var.security_group_name
  description          = var.security_group_description
  aws_vpc_id           = module.vpc.vpc_id
  security_group_rules = var.security_group_rules

  depends_on = [module.vpc]
}

module "eks" {
  source             = "./modules/eks"
  environment        = var.environment
  project            = var.project
  cluster_name       = var.eks_cluster_name
  eks_version        = var.eks_eks_version
  subnet_id_list     = module.vpc.public_subnets
  security_group_ids = [module.security_group.security_group_id]
  depends_on         = [module.vpc]
}

module "node_groups" {
  source             = "./modules/node_groups"
  environment        = var.environment
  project            = var.project
  cluster_name       = var.eks_cluster_name
  eks_api_server_url = module.eks.eks_endpoint
  eks_cluster_ca     = module.eks.eks_certificate_authority
  security_group_ids = [module.security_group.security_group_id]
  subnet_ids         = module.vpc.public_subnets
  node_groups_configs = {
    "dev" = {
      image_id        = "ami-0a99721a12001ebd4"
      instance_type   = "t3.micro"
      volume_size     = 20
      volume_type     = "gp2"
      desired_size    = 1
      max_size        = 2
      min_size        = 1
      max_unavailable = 1
    }
  }
  depends_on = [module.vpc, module.eks, module.security_group]
}
