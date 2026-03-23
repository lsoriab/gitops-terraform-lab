terraform {
  backend "s3" {
    bucket         = "projects-ls-terraform-states"
    key            = "gitops-lab/staging/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks-projects-ls"
  }
}
