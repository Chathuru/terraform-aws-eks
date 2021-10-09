variable "region" {
  description = "AWS Region"
  type        = string
}

variable "access_key" {
  description = "AWS IAM access key"
  type        = string
}

variable "secret_key" {
  description = "AWS IAM secret key"
  type        = string
}

variable "project" {
  description = "Name of the project."
  type        = string
}

variable "environment" {
  description = "Environment Name."
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_public_subnets" {
  description = "A map of public subnets inside the VPC with respective availability zone"
  type        = map(string)
}

variable "vpc_private_subnets" {
  description = "A map of private subnets inside the VPC with respective availability zone"
  type        = map(string)
}
variable "node_groups_configs" {
  description = "Map of map of node groups to create."
  type        = any
}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
}

variable "security_group_description" {
  description = "Security Group Description"
  type        = string
}

variable "security_group_rules" {
  description = "Map of Security Group Rules"
  type        = any
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
}

variable "eks_eks_version" {
  description = "Kubernetes version to use for the EKS cluster."
  type        = string
}
