terraform {
  backend "s3" {
    bucket         = "demo-cluster-kubernetes-aws-terraform-state"
    key            = "demo-cluster-kubernetes-aws.tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo-cluster-kubernetes-aws-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

data "aws_ssm_parameter" "workers_ami_id"  {
  name            = "/aws/service/eks/optimized-ami/1.15/amazon-linux-2/recommended/image_id"
  with_decryption = false
}

provider "aws" {
    region = var.aws_region
  
}