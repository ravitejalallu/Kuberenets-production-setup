terraform {
  backend "s3" {
    bucket         = "demo-cluster-kubernetes-aws-vpc-terraform-state"
    key            = "demo-cluster-kubernetes-aws-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo-cluster-kubernetes-aws-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
 region = var.aws_region
}