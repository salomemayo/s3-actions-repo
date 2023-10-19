module "s3" {
  source = "git::git@github.com:salomemayo/s3-backend-repo.git//s3-module?ref=v1.2.0"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "bootcamp32-dev-62"
    region  = "us-west-2"
    key     = "action/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-west-2"
}