region                     = "us-east-1"
project                    = "noc"
environment                = "prod"
vpc_cidr_block             = "10.22.0.0/16"
vpc_public_subnets         = { "us-east-1a" : "10.22.0.0/18", "us-east-1b" : "10.22.64.0/18" }
vpc_private_subnets        = { "us-east-1a" : "10.22.128.0/18", "us-east-1b" : "10.22.192.0/18" }
eks_cluster_name           = "aws-eks"
eks_eks_version            = "1.21"
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

node_groups_configs = {
  "dev" = {
    image_id        = "ami-0a99721a12001ebd4"
    instance_type   = "t3.micro"
    volume_size     = 20
    volume_type     = "gp2"
    desired_size    = 2
    max_size        = 4
    min_size        = 1
    max_unavailable = 1
  }
}
