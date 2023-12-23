terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
  backend "s3"{
	bucket="prv-s3-bucket"
	key="terraform.tfstate"
	dynamodb_table="prv-dynamodb-table"
	region="us-east-1"
}
}

provider "aws" {
  region="us-east-1"
}

