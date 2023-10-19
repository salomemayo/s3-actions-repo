module "s3" {
  source = "git::git@github.com:salomemayo/s3-backend-repo.git//s3-module?ref=v1.2.0"
}

terraform {
  backend "s3" {
    bucket  = "bootcamp32-dev-62"
    key     = "action/terraform.tfstate"
    region  = "us-west-2"
    encrypt = true
  }
}