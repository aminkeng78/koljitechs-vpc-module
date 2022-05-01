

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::${lookup(var.account_id, terraform.workspace)}:role/Terraform_assumeRole"
  }

}

terraform {

  backend "s3" {
    bucket         = "koljitechs.vpcstatebuckets"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-backup"
  }
}