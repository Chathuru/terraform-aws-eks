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

variable "subnet_id_list" {
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

variable "subnet_ids" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}

#==============================================
variable "vpc_id" {
  type = string
}

variable "security_group_name" {}
variable "security_group_description" {}
variable "security_group_rules" {}
