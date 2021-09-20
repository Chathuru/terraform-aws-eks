variable "project" {}
variable "env" {}
variable "cidr_block" {}

variable "enable_private_subnet" {
  type    = bool
  default = true
}

variable "enable_private_subnet_with_nat" {
  type    = bool
  default = true
}

variable "public_subnets" {
  type    = map(string)
  default = {}
}

variable "private_subnets" {
  type    = map(string)
  default = {}
}
