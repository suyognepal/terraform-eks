provider "aws" {
  region = local.region
}

provider "aws" {
  alias  = "peer"
  region = "us-east-2"
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53"
    }
  }
}
