terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"

  default_tags {
    tags = {
      Project = "poc-aws-iac"
    }
  }
}