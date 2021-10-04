region     = "us-east-1"
access_key = ""
secret_key = ""

project             = "noc"
environment         = "prod"
vpc_cidr_block      = "10.22.0.0/16"
vpc_public_subnets  = { "us-east-1a" : "10.22.0.0/18", "us-east-1b" : "10.22.64.0/18" }
vpc_private_subnets = { "us-east-1a" : "10.22.128.0/18", "us-east-1b" : "10.22.192.0/18" }

security_group_name        = "eks-sg"
security_group_description = "eks security group"
security_group_rules = [
  {
    type        = "ingress"
    to_port     = 0
    protocol    = -1
    from_port   = 65536
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    type      = "ingress"
    to_port   = 0
    protocol  = -1
    from_port = 65536
    self      = true
  }
]


eks_cluster_name = "aws-eks"
eks_eks_version  = "1.21"


eks_node_group_desired_size = 4
eks_node_group_max_size     = 4
eks_node_group_min_size     = 1
