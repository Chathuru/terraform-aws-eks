resource "aws_eks_cluster" "eks" {
  name     = join("-", [var.cluster_name])
  role_arn = var.iam_role_arn
  version  = var.eks_version

  vpc_config {
    subnet_ids         = var.subnet_id_list
  }

  tags = {
    Name =
  }
}
