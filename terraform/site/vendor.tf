provider "aws" {
  region  = "ap-southeast-1"
  profile = "tepzilon"
}

provider "aws" {
  alias = "use1"
  region = "us-east-1"
  profile = "tepzilon"
}