terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.16.0" #"~> 6.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-86s-bucket"
    key    = "locals-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
  }