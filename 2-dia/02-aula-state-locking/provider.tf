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
    // nome da tabela do dynamodb, aqui já estamos aplicando o state locking
    dynamodb_table = "descomplicando-terraform"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias = "west"
  region = "us-west-1"
}