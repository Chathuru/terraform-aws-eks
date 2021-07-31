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

variable "env" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "vpc_public_subnets" {
  type = map(string)
}

variable "vpc_private_subnets" {
  type = map(string)
}
