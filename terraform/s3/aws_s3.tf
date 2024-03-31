terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  region     = "eu-north-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "bucket_resource" {
  bucket = "ritvikbuckethai"
  tags = {
    Name        = "Ritvik Shukla ki bucket"
    Environment = "Dev"
  }
}
