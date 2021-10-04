locals {
  eks_cluster_name = join("-", [var.environment, var.project, var.cluster_name])
  user_data        = <<EOF
#!/bin/bash
set -ex
/etc/eks/bootstrap.sh ${local.eks_cluster_name} --b64-cluster-ca ${aws_eks_cluster.eks.certificate_authority[0].data} --apiserver-endpoint ${aws_eks_cluster.eks.endpoint}
EOF
}
