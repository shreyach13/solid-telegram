provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "pauls-terraform-state" {
  bucket = "s3-terraform-state-paul"
  region = "eu-central-1"
  tags = {
      owner = var.ownerName
  }
}

