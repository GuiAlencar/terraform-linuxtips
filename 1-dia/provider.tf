terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }

  backend "s3" {
    bucket = "example-bucket"
    key    = "backend"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}