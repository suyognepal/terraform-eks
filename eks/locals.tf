locals {
  env             = "staging"
  region          = "us-east-1"
  zone1           = "us-east-1a"
  zone2           = "us-east-1b"
  eks_name        = "demo"
  eks_version     = "1.31"
  cidr_block      = "10.0.0.0/16"
  instance_types  = ["c5a.xlarge"]
  bastion_keypair = "devopskey" 
}