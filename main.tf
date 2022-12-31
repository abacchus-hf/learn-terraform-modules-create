# Terraform configuration

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}


module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "ahmad-hf-pov-test-dec-17-2019"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
