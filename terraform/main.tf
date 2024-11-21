provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "terraform/state/${var.region}/fulcrum2.tfstate"
    region         = var.s3_bucket_region
    dynamodb_table = var.dynamodb_lock_table
    encrypt        = true
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.18"

  name            = "fulcrum2-vpc"
  cidr            = "10.0.0.0/16"
  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.3.0/24", "10.0.4.0/24"]
}
