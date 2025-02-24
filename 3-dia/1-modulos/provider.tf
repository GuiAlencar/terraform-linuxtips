terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }

  backend "s3" {
    bucket = "descomplicando-terraform-turma-2024"
    key    = "aula_modules"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}