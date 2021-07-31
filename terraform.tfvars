project             = "noc"
env                 = "prod"
vpc_cidr_block      = "10.22.0.0/16"
vpc_public_subnets  = { "us-east-1a" : "10.22.0.0/18", "us-east-1b" : "10.22.64.0/18" }
vpc_private_subnets = { "us-east-1a" : "10.22.128.0/18", "us-east-1b" : "10.22.192.0/18" }

