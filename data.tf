data "aws_caller_identity" "current" {}

data "tls_certificate" "eks_oidc" {
  url        = aws_eks_cluster.eks.identity[0].oidc[0].issuer
  depends_on = [aws_eks_cluster.eks]
}
