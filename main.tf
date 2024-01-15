# Configure the AWS Provider
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
  profile = "Terraform-User"
}

# Stores the terraform state file in S3
terraform {
  backend "s3" {
    bucket = "terraform-remote-state-new"
    key    = "path/to/my/key"
    region = "us-east-1"
    profile = "Terraform-User"
  }
}
