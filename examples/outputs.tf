output "aws_vpc_id" {
  description = "VPC Id in which the EKC created"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = "List of ARNs of private subnets"
  value       = module.vpc.public_subnets
}

output "eks_id" {
  description = "The id of the EKS cluster."
  value       = module.eks.id
}

output "eks_endpoint" {
  description = "The endpoint for your EKS Kubernetes API."
  value       = module.eks.eks_endpoint
}

output "oidc_issuer" {
  description = "The URL on the EKS cluster OIDC Issuer."
  value       = module.eks.oidc_issuer
}

output "alb_iam_role_arn" {
  description = "IAM role arn of the role to use in ALB ingress controller."
  value       = module.eks.alb_iam_role_arn
}
