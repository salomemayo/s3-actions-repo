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
    bucket  = "salome-automation-salome"
    region  = "us-west-2"
    key     = "terraform.tfstate"
    encrypt = true
  }
}