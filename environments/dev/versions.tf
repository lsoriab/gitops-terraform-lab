terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  #profile = "lsoria"
  #shared_credentials_files = ["C:/Users/lsoria/.aws/credentials"]

  default_tags {
    tags = {
      Environment = "dev"
      Project     = "gitops-lab"
      ManagedBy   = "terraform"
    }
  }
}