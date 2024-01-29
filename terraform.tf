terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket  = "master-site-tf-state"
    key     = "state/terraform.tfstate"
    region  = "ap-southeast-1"
    profile = "tepzilon"
  }
}

module "site" {
  source = "./terraform/site"
}