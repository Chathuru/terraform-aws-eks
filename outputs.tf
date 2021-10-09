output "eks_endpoint" {
  description = ""
  value       = aws_eks_cluster.eks.endpoint
}

output "eks_certificate_authority" {
  description = ""
  value       = aws_eks_cluster.eks.certificate_authority[0].data
}

output "id" {
  description = ""
  value       = aws_eks_cluster.eks.id
}

output "oidc_issuer" {
  description = ""
  value       = aws_eks_cluster.eks.identity[0].oidc[0].issuer
}

output "oidc_issuer_no_protocol" {
  description = ""
  value       = trimprefix(aws_eks_cluster.eks.identity[0].oidc[0].issuer, "https://")
}

output "thumbprint" {
  description = ""
  value       = data.tls_certificate.eks_oidc.certificates[0].sha1_fingerprint
}

output "alb_iam_role_arn" {
  description = ""
  value       = aws_iam_role.alb_role.arn
}
