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
  description = ""
  type        = string
}

variable "environment" {
  description = ""
  type        = string
}

variable "vpc_cidr_block" {
  description = ""
  type        = string
}

variable "vpc_public_subnets" {
  description = ""
  type        = map(string)
}

variable "vpc_private_subnets" {
  description = ""
  type        = map(string)
}
variable "node_groups_configs" {
  description = ""
  type        = any
}

variable "security_group_name" {
  description = ""
  type        = string
}

variable "security_group_description" {
  type        = string
  description = ""
}

variable "security_group_rules" {
  description = ""
  type        = any
}

variable "eks_cluster_name" {
  type        = string
  description = ""
}

variable "eks_eks_version" {
  type        = string
  description = ""
}
