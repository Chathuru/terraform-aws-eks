variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "eks_version" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "eks_endpoint_private_access" {
  type    = bool
  default = false
}

variable "eks_endpoint_public_access" {
  type    = bool
  default = true
}

variable "eks_public_access_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "node_groups_configs" {
  type = any
}

variable "tags" {
  type    = map(string)
  default = {}
}

#==============================================
variable "vpc_id" {
  type = string
}

variable "security_group_name" {}
variable "security_group_description" {}
variable "security_group_rules" {}
