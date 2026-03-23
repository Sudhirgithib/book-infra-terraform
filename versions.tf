terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "book-infra-terraform-123"
    key    = "book-infra/terraform.tfstate"
    region = "us-east-1"
  }
}