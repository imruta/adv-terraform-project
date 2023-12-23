               terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region="us-east-1"
}

resource "aws_s3_bucket" "p_s3_bucket"{
	bucket="prv-s3-bucket"
}

resource "aws_dynamodb_table" "p_dynamodb_table"{
	name="prv-dynamodb-table"
	billing_mode="PAY_PER_REQUEST"
	hash_key="LockID"
	attribute {
	  name="LockID"
	  type="S"
}
}
