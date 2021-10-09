variable "project" {
  description = ""
  type        = string
}

variable "environment" {
  description = ""
  type        = string
}

variable "cluster_name" {
  description = ""
  type        = string
}

variable "eks_version" {
  description = ""
  type        = string
}

variable "subnet_ids" {
  description = ""
  type        = list(string)
}

variable "eks_endpoint_private_access" {
  description = ""
  type        = bool
  default     = false
}

variable "eks_endpoint_public_access" {
  description = ""
  type        = bool
  default     = true
}

variable "eks_public_access_cidrs" {
  description = ""
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "node_groups_configs" {
  description = ""
  type        = any
}

variable "tags" {
  description = ""
  type        = map(string)
  default     = {}
}

variable "vpc_id" {
  description = ""
  type        = string
}

variable "security_group_name" {
  description = ""
  type        = string
}

variable "security_group_description" {
  description = ""
  type        = string
}

variable "security_group_rules" {
  description = ""
  type        = any
}
