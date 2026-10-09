terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }


backend "s3" {
    bucket  = "mahi-bucket-77" # Replace with your unique bucket name
    key     = "dhoni-77"
    region  = "us-east-1"
    encrypt = true
    use_lockfile   = true
}
}
provider "aws" {
  region = "us-east-1"
}