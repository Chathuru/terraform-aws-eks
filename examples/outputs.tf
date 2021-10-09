output "aws_vpc_id" {
  description = ""
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = ""
  value       = module.vpc.private_subnets
}

output "public_subnet_ids" {
  description = ""
  value       = module.vpc.public_subnets
}

output "eks_id" {
  description = ""
  value       = module.eks.id
}

output "eks_endpoint" {
  description = ""
  value       = module.eks.eks_endpoint
}

output "oidc_issuer" {
  description = ""
  value       = module.eks.oidc_issuer
}

output "alb_iam_role_arn" {
  description = ""
  value       = module.eks.alb_iam_role_arn
}
