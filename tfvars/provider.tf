terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.80.0"
    }
  }
  backend "s3" {
    bucket = "cheswini-s3-bucket"
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "dynamo-DB--locking-s3"
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}