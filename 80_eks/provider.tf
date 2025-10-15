terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"
    }
  }

  backend "s3" {
    bucket = "terraform-roboshop-prac"
    key    = "roboshop-dev-eks"
    region = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}